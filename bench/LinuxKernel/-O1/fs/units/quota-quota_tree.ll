; ModuleID = 'fs/quota/quota_tree.c'
source_filename = "fs/quota/quota_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qtree_entry_unused: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qtree_entry_unused ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qtree_write_dquot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qtree_write_dquot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qtree_delete_dquot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qtree_delete_dquot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qtree_read_dquot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qtree_read_dquot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qtree_release_dquot: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qtree_release_dquot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_qtree_get_next_id: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad qtree_get_next_id ; .previous"

%struct.user_namespace = type opaque
%struct.dqstats = type { [8 x i64], [8 x %struct.percpu_counter] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.qtree_mem_dqinfo = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.kqid = type { %union.anon.13, i32 }
%union.anon.13 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.qtree_fmt_operations = type { ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [60 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [16 x i8] }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
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
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%struct.kprojid_t = type { i32 }
%struct.qt_disk_dqdbheader = type { i32, i32, i16, i16, i32 }

@__UNIQUE_ID_author259 = internal constant [27 x i8] c"quota_tree.author=Jan Kara\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description260 = internal constant [42 x i8] c"quota_tree.description=Quota trie support\00", section ".modinfo", align 1, !dbg !128
@__UNIQUE_ID_file261 = internal constant [36 x i8] c"quota_tree.file=fs/quota/quota_tree\00", section ".modinfo", align 1, !dbg !134
@__UNIQUE_ID_license262 = internal constant [23 x i8] c"quota_tree.license=GPL\00", section ".modinfo", align 1, !dbg !139
@__UNIQUE_ID___addressable_qtree_entry_unused263 = internal global ptr @qtree_entry_unused, section ".discard.addressable", align 8, !dbg !144
@__func__.qtree_write_dquot = private unnamed_addr constant [18 x i8] c"qtree_write_dquot\00", align 1, !dbg !146
@.str = private unnamed_addr constant [40 x i8] c"Error %zd occurred while creating quota\00", align 1, !dbg !151
@.str.1 = private unnamed_addr constant [20 x i8] c"dquota write failed\00", align 1, !dbg !156
@__UNIQUE_ID___addressable_qtree_write_dquot264 = internal global ptr @qtree_write_dquot, section ".discard.addressable", align 8, !dbg !161
@__const.qtree_delete_dquot.blks = private unnamed_addr constant [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@__func__.qtree_delete_dquot = private unnamed_addr constant [19 x i8] c"qtree_delete_dquot\00", align 1, !dbg !163
@.str.2 = private unnamed_addr constant [26 x i8] c"Quota tree depth too big!\00", align 1, !dbg !168
@__UNIQUE_ID___addressable_qtree_delete_dquot265 = internal global ptr @qtree_delete_dquot, section ".discard.addressable", align 8, !dbg !173
@__func__.qtree_read_dquot = private unnamed_addr constant [17 x i8] c"qtree_read_dquot\00", align 1, !dbg !175
@.str.3 = private unnamed_addr constant [33 x i8] c"Quota invalidated while reading!\00", align 1, !dbg !180
@.str.4 = private unnamed_addr constant [37 x i8] c"Can't read quota structure for id %u\00", align 1, !dbg !185
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Error while reading quota structure for id %u\00", align 1, !dbg !190
@__UNIQUE_ID___addressable_qtree_read_dquot266 = internal global ptr @qtree_read_dquot, section ".discard.addressable", align 8, !dbg !195
@__UNIQUE_ID___addressable_qtree_release_dquot267 = internal global ptr @qtree_release_dquot, section ".discard.addressable", align 8, !dbg !197
@__UNIQUE_ID___addressable_qtree_get_next_id268 = internal global ptr @qtree_get_next_id, section ".discard.addressable", align 8, !dbg !199
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !201
@__const.dq_insert_tree.blks = private unnamed_addr constant [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@__func__.dq_insert_tree = private unnamed_addr constant [15 x i8] c"dq_insert_tree\00", align 1, !dbg !206
@.str.7 = private unnamed_addr constant [33 x i8] c"Quota tree root isn't allocated!\00", align 1, !dbg !211
@__func__.do_insert_tree = private unnamed_addr constant [15 x i8] c"do_insert_tree\00", align 1, !dbg !213
@.str.8 = private unnamed_addr constant [42 x i8] c"Free block already used in tree: block %u\00", align 1, !dbg !215
@.str.9 = private unnamed_addr constant [31 x i8] c"Can't read tree quota block %u\00", align 1, !dbg !218
@.str.10 = private unnamed_addr constant [6 x i8] c"block\00", align 1, !dbg !223
@.str.11 = private unnamed_addr constant [48 x i8] c"Cycle in quota tree detected: block %u index %u\00", align 1, !dbg !228
@.str.12 = private unnamed_addr constant [49 x i8] c"Inserting already present quota entry (block %u)\00", align 1, !dbg !233
@.str.13 = private unnamed_addr constant [15 x i8] c"dqdh_next_free\00", align 1, !dbg !238
@.str.14 = private unnamed_addr constant [15 x i8] c"dqdh_prev_free\00", align 1, !dbg !241
@.str.15 = private unnamed_addr constant [13 x i8] c"dqdh_entries\00", align 1, !dbg !243
@__func__.do_check_range = private unnamed_addr constant [15 x i8] c"do_check_range\00", align 1, !dbg !248
@.str.16 = private unnamed_addr constant [33 x i8] c"Getting %s %u out of range %u-%u\00", align 1, !dbg !250
@__func__.find_free_dqentry = private unnamed_addr constant [18 x i8] c"find_free_dqentry\00", align 1, !dbg !252
@.str.17 = private unnamed_addr constant [45 x i8] c"Can't remove block (%u) from entry free list\00", align 1, !dbg !254
@.str.18 = private unnamed_addr constant [33 x i8] c"Data block full but it shouldn't\00", align 1, !dbg !259
@.str.19 = private unnamed_addr constant [32 x i8] c"Can't write quota data block %u\00", align 1, !dbg !261
@__func__.remove_free_dqentry = private unnamed_addr constant [20 x i8] c"remove_free_dqentry\00", align 1, !dbg !266
@.str.20 = private unnamed_addr constant [41 x i8] c"Can't write block (%u) with free entries\00", align 1, !dbg !269
@__func__.write_blk = private unnamed_addr constant [10 x i8] c"write_blk\00", align 1, !dbg !274
@dqstats = external dso_local global %struct.dqstats, align 8
@percpu_counter_batch = external dso_local global i32, align 4
@__func__.remove_tree = private unnamed_addr constant [12 x i8] c"remove_tree\00", align 1, !dbg !279
@.str.21 = private unnamed_addr constant [31 x i8] c"Can't read quota data block %u\00", align 1, !dbg !284
@.str.22 = private unnamed_addr constant [32 x i8] c"Can't write quota tree block %u\00", align 1, !dbg !286
@__func__.free_dqentry = private unnamed_addr constant [13 x i8] c"free_dqentry\00", align 1, !dbg !288
@.str.23 = private unnamed_addr constant [67 x i8] c"Quota structure has offset to other block (%u) than it should (%u)\00", align 1, !dbg !291
@.str.24 = private unnamed_addr constant [46 x i8] c"Can't move quota data block (%u) to free list\00", align 1, !dbg !296
@.str.25 = private unnamed_addr constant [54 x i8] c"Can't insert quota data block (%u) to free entry list\00", align 1, !dbg !298
@__const.find_dqentry.blks = private unnamed_addr constant [6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@__func__.find_dqentry = private unnamed_addr constant [13 x i8] c"find_dqentry\00", align 1, !dbg !303
@__func__.find_tree_dqentry = private unnamed_addr constant [18 x i8] c"find_tree_dqentry\00", align 1, !dbg !305
@.str.26 = private unnamed_addr constant [31 x i8] c"Can't read quota tree block %u\00", align 1, !dbg !307
@__func__.find_block_dqentry = private unnamed_addr constant [19 x i8] c"find_block_dqentry\00", align 1, !dbg !309
@.str.27 = private unnamed_addr constant [43 x i8] c"Quota for id %u referenced but not present\00", align 1, !dbg !311
@__func__.find_next_id = private unnamed_addr constant [13 x i8] c"find_next_id\00", align 1, !dbg !316
@.str.28 = private unnamed_addr constant [22 x i8] c"include/linux/quota.h\00", align 1, !dbg !318
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author259, ptr @__UNIQUE_ID_description260, ptr @__UNIQUE_ID_file261, ptr @__UNIQUE_ID_license262, ptr @__UNIQUE_ID___addressable_qtree_entry_unused263, ptr @__UNIQUE_ID___addressable_qtree_write_dquot264, ptr @__UNIQUE_ID___addressable_qtree_delete_dquot265, ptr @__UNIQUE_ID___addressable_qtree_read_dquot266, ptr @__UNIQUE_ID___addressable_qtree_release_dquot267, ptr @__UNIQUE_ID___addressable_qtree_get_next_id268], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @qtree_entry_unused(ptr noundef %info, ptr noundef %disk) #0 align 16 !dbg !335 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %disk.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4107, metadata !DIExpression()), !dbg !4110
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !4108, metadata !DIExpression()), !dbg !4111
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4112
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4109, metadata !DIExpression()), !dbg !4113
  store i32 0, ptr %i, align 4, !dbg !4114
  br label %for.cond, !dbg !4116

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4117
  %1 = load ptr, ptr %info.addr, align 8, !dbg !4119
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %1, i32 0, i32 6, !dbg !4120
  %2 = load i32, ptr %dqi_entry_size, align 4, !dbg !4120
  %cmp = icmp ult i32 %0, %2, !dbg !4121
  br i1 %cmp, label %for.body, label %for.end, !dbg !4122

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %disk.addr, align 8, !dbg !4123
  %4 = load i32, ptr %i, align 4, !dbg !4125
  %idxprom = sext i32 %4 to i64, !dbg !4123
  %arrayidx = getelementptr i8, ptr %3, i64 %idxprom, !dbg !4123
  %5 = load i8, ptr %arrayidx, align 1, !dbg !4123
  %tobool = icmp ne i8 %5, 0, !dbg !4123
  br i1 %tobool, label %if.then, label %if.end, !dbg !4126

if.then:                                          ; preds = %for.body
  store i32 0, ptr %retval, align 4, !dbg !4127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4127

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4128

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !dbg !4129
  %inc = add i32 %6, 1, !dbg !4129
  store i32 %inc, ptr %i, align 4, !dbg !4129
  br label %for.cond, !dbg !4130, !llvm.loop !4131

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4, !dbg !4135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4135

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4136
  %7 = load i32, ptr %retval, align 4, !dbg !4136
  ret i32 %7, !dbg !4136
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @qtree_write_dquot(ptr noundef %info, ptr noundef %dquot) #0 align 16 !dbg !4137 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %sb = alloca ptr, align 8
  %ret = alloca i64, align 8
  %ddquot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4141, metadata !DIExpression()), !dbg !4147
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4142, metadata !DIExpression()), !dbg !4148
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !4149
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4143, metadata !DIExpression()), !dbg !4150
  %0 = load ptr, ptr %dquot.addr, align 8, !dbg !4151
  %dq_id = getelementptr inbounds %struct.dquot, ptr %0, i32 0, i32 8, !dbg !4152
  %type1 = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !4153
  %1 = load i32, ptr %type1, align 4, !dbg !4153
  store i32 %1, ptr %type, align 4, !dbg !4150
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #15, !dbg !4154
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4144, metadata !DIExpression()), !dbg !4155
  %2 = load ptr, ptr %dquot.addr, align 8, !dbg !4156
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %2, i32 0, i32 7, !dbg !4157
  %3 = load ptr, ptr %dq_sb, align 8, !dbg !4157
  store ptr %3, ptr %sb, align 8, !dbg !4155
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !4158
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4145, metadata !DIExpression()), !dbg !4159
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddquot) #15, !dbg !4160
  call void @llvm.dbg.declare(metadata ptr %ddquot, metadata !4146, metadata !DIExpression()), !dbg !4161
  %4 = load ptr, ptr %info.addr, align 8, !dbg !4162
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %4, i32 0, i32 6, !dbg !4163
  %5 = load i32, ptr %dqi_entry_size, align 4, !dbg !4163
  %conv = zext i32 %5 to i64, !dbg !4162
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !4164
  store ptr %call, ptr %ddquot, align 8, !dbg !4161
  %6 = load ptr, ptr %ddquot, align 8, !dbg !4165
  %tobool = icmp ne ptr %6, null, !dbg !4165
  br i1 %tobool, label %if.end, label %if.then, !dbg !4167

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4168

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %dquot.addr, align 8, !dbg !4169
  %dq_off = getelementptr inbounds %struct.dquot, ptr %7, i32 0, i32 9, !dbg !4171
  %8 = load i64, ptr %dq_off, align 8, !dbg !4171
  %tobool2 = icmp ne i64 %8, 0, !dbg !4169
  br i1 %tobool2, label %if.end10, label %if.then3, !dbg !4172

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %info.addr, align 8, !dbg !4173
  %10 = load ptr, ptr %dquot.addr, align 8, !dbg !4175
  %call4 = call i32 @dq_insert_tree(ptr noundef %9, ptr noundef %10) #17, !dbg !4176
  %conv5 = sext i32 %call4 to i64, !dbg !4176
  store i64 %conv5, ptr %ret, align 8, !dbg !4177
  %11 = load i64, ptr %ret, align 8, !dbg !4178
  %cmp = icmp slt i64 %11, 0, !dbg !4180
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !4181

if.then7:                                         ; preds = %if.then3
  %12 = load ptr, ptr %sb, align 8, !dbg !4182
  %13 = load i64, ptr %ret, align 8, !dbg !4182
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %12, ptr noundef @__func__.qtree_write_dquot, ptr noundef @.str, i64 noundef %13) #17, !dbg !4182
  %14 = load ptr, ptr %ddquot, align 8, !dbg !4184
  call void @kfree(ptr noundef %14) #17, !dbg !4185
  %15 = load i64, ptr %ret, align 8, !dbg !4186
  %conv8 = trunc i64 %15 to i32, !dbg !4186
  store i32 %conv8, ptr %retval, align 4, !dbg !4187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4187

if.end9:                                          ; preds = %if.then3
  br label %if.end10, !dbg !4188

if.end10:                                         ; preds = %if.end9, %if.end
  %16 = load ptr, ptr %dquot.addr, align 8, !dbg !4189
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %16, i32 0, i32 5, !dbg !4190
  call void @spin_lock(ptr noundef %dq_dqb_lock) #17, !dbg !4191
  %17 = load ptr, ptr %info.addr, align 8, !dbg !4192
  %dqi_ops = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %17, i32 0, i32 9, !dbg !4193
  %18 = load ptr, ptr %dqi_ops, align 8, !dbg !4193
  %mem2disk_dqblk = getelementptr inbounds %struct.qtree_fmt_operations, ptr %18, i32 0, i32 0, !dbg !4194
  %19 = load ptr, ptr %mem2disk_dqblk, align 8, !dbg !4194
  %20 = load ptr, ptr %ddquot, align 8, !dbg !4195
  %21 = load ptr, ptr %dquot.addr, align 8, !dbg !4196
  call void %19(ptr noundef %20, ptr noundef %21) #17, !dbg !4192
  %22 = load ptr, ptr %dquot.addr, align 8, !dbg !4197
  %dq_dqb_lock11 = getelementptr inbounds %struct.dquot, ptr %22, i32 0, i32 5, !dbg !4198
  call void @spin_unlock(ptr noundef %dq_dqb_lock11) #17, !dbg !4199
  %23 = load ptr, ptr %sb, align 8, !dbg !4200
  %s_op = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 6, !dbg !4201
  %24 = load ptr, ptr %s_op, align 16, !dbg !4201
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %24, i32 0, i32 21, !dbg !4202
  %25 = load ptr, ptr %quota_write, align 8, !dbg !4202
  %26 = load ptr, ptr %sb, align 8, !dbg !4203
  %27 = load i32, ptr %type, align 4, !dbg !4204
  %28 = load ptr, ptr %ddquot, align 8, !dbg !4205
  %29 = load ptr, ptr %info.addr, align 8, !dbg !4206
  %dqi_entry_size12 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %29, i32 0, i32 6, !dbg !4207
  %30 = load i32, ptr %dqi_entry_size12, align 4, !dbg !4207
  %conv13 = zext i32 %30 to i64, !dbg !4206
  %31 = load ptr, ptr %dquot.addr, align 8, !dbg !4208
  %dq_off14 = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 9, !dbg !4209
  %32 = load i64, ptr %dq_off14, align 8, !dbg !4209
  %call15 = call i64 %25(ptr noundef %26, i32 noundef %27, ptr noundef %28, i64 noundef %conv13, i64 noundef %32) #17, !dbg !4200
  store i64 %call15, ptr %ret, align 8, !dbg !4210
  %33 = load i64, ptr %ret, align 8, !dbg !4211
  %34 = load ptr, ptr %info.addr, align 8, !dbg !4213
  %dqi_entry_size16 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %34, i32 0, i32 6, !dbg !4214
  %35 = load i32, ptr %dqi_entry_size16, align 4, !dbg !4214
  %conv17 = zext i32 %35 to i64, !dbg !4213
  %cmp18 = icmp ne i64 %33, %conv17, !dbg !4215
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !4216

if.then20:                                        ; preds = %if.end10
  %36 = load ptr, ptr %sb, align 8, !dbg !4217
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %36, ptr noundef @__func__.qtree_write_dquot, ptr noundef @.str.1) #17, !dbg !4217
  %37 = load i64, ptr %ret, align 8, !dbg !4219
  %cmp21 = icmp sge i64 %37, 0, !dbg !4221
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !4222

if.then23:                                        ; preds = %if.then20
  store i64 -28, ptr %ret, align 8, !dbg !4223
  br label %if.end24, !dbg !4224

if.end24:                                         ; preds = %if.then23, %if.then20
  br label %if.end25, !dbg !4225

if.else:                                          ; preds = %if.end10
  store i64 0, ptr %ret, align 8, !dbg !4226
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.end24
  call void @dqstats_inc(i32 noundef 3) #17, !dbg !4228
  %38 = load ptr, ptr %ddquot, align 8, !dbg !4229
  call void @kfree(ptr noundef %38) #17, !dbg !4230
  %39 = load i64, ptr %ret, align 8, !dbg !4231
  %conv26 = trunc i64 %39 to i32, !dbg !4231
  store i32 %conv26, ptr %retval, align 4, !dbg !4232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4232

cleanup:                                          ; preds = %if.end25, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddquot) #15, !dbg !4233
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !4233
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #15, !dbg !4233
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !4233
  %40 = load i32, ptr %retval, align 4, !dbg !4233
  ret i32 %40, !dbg !4233
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4234 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4238, metadata !DIExpression()), !dbg !4243
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4239, metadata !DIExpression()), !dbg !4244
  %0 = load i64, ptr %size.addr, align 8, !dbg !4245
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4246
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4247

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4248
  %tobool = icmp ne i64 %2, 0, !dbg !4248
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4249

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4240, metadata !DIExpression()), !dbg !4251
  %3 = load i64, ptr %size.addr, align 8, !dbg !4252
  %cmp = icmp ugt i64 %3, 8192, !dbg !4254
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4255

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4256
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4257
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4258
  store ptr %call, ptr %retval, align 8, !dbg !4259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4259

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4260
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !4260
  store i32 %call2, ptr %index, align 4, !dbg !4261
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4262
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4263
  %9 = ptrtoint ptr %8 to i64, !dbg !4263
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !4264
  %idxprom = zext i32 %call3 to i64, !dbg !4265
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4265
  %10 = load i32, ptr %index, align 4, !dbg !4266
  %idxprom4 = zext i32 %10 to i64, !dbg !4265
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4265
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4265
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4267
  %13 = load i64, ptr %size.addr, align 8, !dbg !4268
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4269
  store ptr %call6, ptr %retval, align 8, !dbg !4270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4270

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4271
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4272
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4273
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4274
  store ptr %call8, ptr %retval, align 8, !dbg !4275
  br label %return, !dbg !4275

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4276
  ret ptr %16, !dbg !4276
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dq_insert_tree(ptr noundef %info, ptr noundef %dquot) #4 align 16 !dbg !4277 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blks = alloca [6 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4279, metadata !DIExpression()), !dbg !4283
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4280, metadata !DIExpression()), !dbg !4284
  call void @llvm.lifetime.start.p0(i64 24, ptr %blks) #15, !dbg !4285
  call void @llvm.dbg.declare(metadata ptr %blks, metadata !4281, metadata !DIExpression()), !dbg !4286
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %blks, ptr align 16 @__const.dq_insert_tree.blks, i64 24, i1 false), !dbg !4286
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4287
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 2, !dbg !4289
  %1 = load i32, ptr %dqi_blocks, align 4, !dbg !4289
  %cmp = icmp ule i32 %1, 1, !dbg !4290
  br i1 %cmp, label %if.then, label %if.end, !dbg !4291

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dquot.addr, align 8, !dbg !4292
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %2, i32 0, i32 7, !dbg !4292
  %3 = load ptr, ptr %dq_sb, align 8, !dbg !4292
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef @__func__.dq_insert_tree, ptr noundef @.str.7) #17, !dbg !4292
  store i32 -5, ptr %retval, align 4, !dbg !4294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4294

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !4295
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %4, i32 0, i32 8, !dbg !4297
  %5 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !4297
  %cmp1 = icmp uge i32 %5, 6, !dbg !4298
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4299

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %dquot.addr, align 8, !dbg !4300
  %dq_sb3 = getelementptr inbounds %struct.dquot, ptr %6, i32 0, i32 7, !dbg !4300
  %7 = load ptr, ptr %dq_sb3, align 8, !dbg !4300
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %7, ptr noundef @__func__.dq_insert_tree, ptr noundef @.str.2) #17, !dbg !4300
  store i32 -5, ptr %retval, align 4, !dbg !4302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4302

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %info.addr, align 8, !dbg !4303
  %9 = load ptr, ptr %dquot.addr, align 8, !dbg !4304
  %arraydecay = getelementptr inbounds [6 x i32], ptr %blks, i64 0, i64 0, !dbg !4305
  %call = call i32 @do_insert_tree(ptr noundef %8, ptr noundef %9, ptr noundef %arraydecay, i32 noundef 0) #17, !dbg !4306
  store i32 %call, ptr %retval, align 4, !dbg !4307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4307

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %blks) #15, !dbg !4308
  %10 = load i32, ptr %retval, align 4, !dbg !4308
  ret i32 %10, !dbg !4308
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4309 dso_local void @__quota_error(ptr noundef, ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4313 dso_local void @kfree(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !4316 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4322, metadata !DIExpression()), !dbg !4323
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4324
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4324
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !4324
  ret void, !dbg !4325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !4326 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !4330
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !4330
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !4330
  ret void, !dbg !4331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dqstats_inc(i32 noundef %type) #4 align 16 !dbg !4332 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4336, metadata !DIExpression()), !dbg !4337
  %0 = load i32, ptr %type.addr, align 4, !dbg !4338
  %idxprom = zext i32 %0 to i64, !dbg !4339
  %arrayidx = getelementptr [8 x %struct.percpu_counter], ptr getelementptr inbounds (%struct.dqstats, ptr @dqstats, i32 0, i32 1), i64 0, i64 %idxprom, !dbg !4339
  call void @percpu_counter_inc(ptr noundef %arrayidx) #17, !dbg !4340
  ret void, !dbg !4341
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @qtree_delete_dquot(ptr noundef %info, ptr noundef %dquot) #0 align 16 !dbg !4342 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blks = alloca [6 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4344, metadata !DIExpression()), !dbg !4347
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4345, metadata !DIExpression()), !dbg !4348
  call void @llvm.lifetime.start.p0(i64 24, ptr %blks) #15, !dbg !4349
  call void @llvm.dbg.declare(metadata ptr %blks, metadata !4346, metadata !DIExpression()), !dbg !4350
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %blks, ptr align 16 @__const.qtree_delete_dquot.blks, i64 24, i1 false), !dbg !4350
  %0 = load ptr, ptr %dquot.addr, align 8, !dbg !4351
  %dq_off = getelementptr inbounds %struct.dquot, ptr %0, i32 0, i32 9, !dbg !4353
  %1 = load i64, ptr %dq_off, align 8, !dbg !4353
  %tobool = icmp ne i64 %1, 0, !dbg !4351
  br i1 %tobool, label %if.end, label %if.then, !dbg !4354

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4355
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4355

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %info.addr, align 8, !dbg !4356
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %2, i32 0, i32 8, !dbg !4358
  %3 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !4358
  %cmp = icmp uge i32 %3, 6, !dbg !4359
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4360

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %dquot.addr, align 8, !dbg !4361
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %4, i32 0, i32 7, !dbg !4361
  %5 = load ptr, ptr %dq_sb, align 8, !dbg !4361
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %5, ptr noundef @__func__.qtree_delete_dquot, ptr noundef @.str.2) #17, !dbg !4361
  store i32 -5, ptr %retval, align 4, !dbg !4363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4363

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %info.addr, align 8, !dbg !4364
  %7 = load ptr, ptr %dquot.addr, align 8, !dbg !4365
  %arraydecay = getelementptr inbounds [6 x i32], ptr %blks, i64 0, i64 0, !dbg !4366
  %call = call i32 @remove_tree(ptr noundef %6, ptr noundef %7, ptr noundef %arraydecay, i32 noundef 0) #17, !dbg !4367
  store i32 %call, ptr %retval, align 4, !dbg !4368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4368

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %blks) #15, !dbg !4369
  %8 = load i32, ptr %retval, align 4, !dbg !4369
  ret i32 %8, !dbg !4369
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @remove_tree(ptr noundef %info, ptr noundef %dquot, ptr noundef %blks, i32 noundef %depth) #0 align 16 !dbg !4370 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blks.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %newblk = alloca i32, align 4
  %ref = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4375, metadata !DIExpression()), !dbg !4385
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4376, metadata !DIExpression()), !dbg !4386
  store ptr %blks, ptr %blks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blks.addr, metadata !4377, metadata !DIExpression()), !dbg !4387
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !4378, metadata !DIExpression()), !dbg !4388
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !4389
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4379, metadata !DIExpression()), !dbg !4390
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4391
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !4392
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !4392
  %conv = zext i32 %1 to i64, !dbg !4391
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !4393
  store ptr %call, ptr %buf, align 8, !dbg !4390
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4394
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4380, metadata !DIExpression()), !dbg !4395
  store i32 0, ptr %ret, align 4, !dbg !4395
  call void @llvm.lifetime.start.p0(i64 4, ptr %newblk) #15, !dbg !4396
  call void @llvm.dbg.declare(metadata ptr %newblk, metadata !4381, metadata !DIExpression()), !dbg !4397
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #15, !dbg !4398
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !4382, metadata !DIExpression()), !dbg !4399
  %2 = load ptr, ptr %buf, align 8, !dbg !4400
  store ptr %2, ptr %ref, align 8, !dbg !4399
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4401
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4383, metadata !DIExpression()), !dbg !4402
  %3 = load ptr, ptr %buf, align 8, !dbg !4403
  %tobool = icmp ne ptr %3, null, !dbg !4403
  br i1 %tobool, label %if.end, label %if.then, !dbg !4405

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4406

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !4407
  %5 = load ptr, ptr %blks.addr, align 8, !dbg !4408
  %6 = load i32, ptr %depth.addr, align 4, !dbg !4409
  %idxprom = sext i32 %6 to i64, !dbg !4408
  %arrayidx = getelementptr i32, ptr %5, i64 %idxprom, !dbg !4408
  %7 = load i32, ptr %arrayidx, align 4, !dbg !4408
  %8 = load ptr, ptr %buf, align 8, !dbg !4410
  %call1 = call i64 @read_blk(ptr noundef %4, i32 noundef %7, ptr noundef %8) #17, !dbg !4411
  %conv2 = trunc i64 %call1 to i32, !dbg !4411
  store i32 %conv2, ptr %ret, align 4, !dbg !4412
  %9 = load i32, ptr %ret, align 4, !dbg !4413
  %cmp = icmp slt i32 %9, 0, !dbg !4415
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !4416

if.then4:                                         ; preds = %if.end
  %10 = load ptr, ptr %dquot.addr, align 8, !dbg !4417
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %10, i32 0, i32 7, !dbg !4417
  %11 = load ptr, ptr %dq_sb, align 8, !dbg !4417
  %12 = load ptr, ptr %blks.addr, align 8, !dbg !4417
  %13 = load i32, ptr %depth.addr, align 4, !dbg !4417
  %idxprom5 = sext i32 %13 to i64, !dbg !4417
  %arrayidx6 = getelementptr i32, ptr %12, i64 %idxprom5, !dbg !4417
  %14 = load i32, ptr %arrayidx6, align 4, !dbg !4417
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %11, ptr noundef @__func__.remove_tree, ptr noundef @.str.21, i32 noundef %14) #17, !dbg !4417
  br label %out_buf, !dbg !4419

if.end7:                                          ; preds = %if.end
  %15 = load ptr, ptr %ref, align 8, !dbg !4420
  %16 = load ptr, ptr %info.addr, align 8, !dbg !4420
  %17 = load ptr, ptr %dquot.addr, align 8, !dbg !4420
  %dq_id = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 8, !dbg !4420
  %18 = load i32, ptr %depth.addr, align 4, !dbg !4420
  %19 = load i64, ptr %dq_id, align 8, !dbg !4420
  %call8 = call i32 @get_index(ptr noundef %16, i64 %19, i32 noundef %18) #17, !dbg !4420
  %idxprom9 = sext i32 %call8 to i64, !dbg !4420
  %arrayidx10 = getelementptr i32, ptr %15, i64 %idxprom9, !dbg !4420
  %20 = load i32, ptr %arrayidx10, align 4, !dbg !4420
  store i32 %20, ptr %newblk, align 4, !dbg !4421
  %21 = load ptr, ptr %dquot.addr, align 8, !dbg !4422
  %dq_sb11 = getelementptr inbounds %struct.dquot, ptr %21, i32 0, i32 7, !dbg !4423
  %22 = load ptr, ptr %dq_sb11, align 8, !dbg !4423
  %23 = load i32, ptr %newblk, align 4, !dbg !4424
  %24 = load ptr, ptr %info.addr, align 8, !dbg !4425
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %24, i32 0, i32 2, !dbg !4426
  %25 = load i32, ptr %dqi_blocks, align 4, !dbg !4426
  %sub = sub i32 %25, 1, !dbg !4427
  %call12 = call i32 @do_check_range(ptr noundef %22, ptr noundef @.str.10, i32 noundef %23, i32 noundef 1, i32 noundef %sub) #17, !dbg !4428
  store i32 %call12, ptr %ret, align 4, !dbg !4429
  %26 = load i32, ptr %ret, align 4, !dbg !4430
  %tobool13 = icmp ne i32 %26, 0, !dbg !4430
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4432

if.then14:                                        ; preds = %if.end7
  br label %out_buf, !dbg !4433

if.end15:                                         ; preds = %if.end7
  store i32 0, ptr %i, align 4, !dbg !4434
  br label %for.cond, !dbg !4436

for.cond:                                         ; preds = %for.inc, %if.end15
  %27 = load i32, ptr %i, align 4, !dbg !4437
  %28 = load i32, ptr %depth.addr, align 4, !dbg !4439
  %cmp16 = icmp sle i32 %27, %28, !dbg !4440
  br i1 %cmp16, label %for.body, label %for.end, !dbg !4441

for.body:                                         ; preds = %for.cond
  %29 = load i32, ptr %newblk, align 4, !dbg !4442
  %30 = load ptr, ptr %blks.addr, align 8, !dbg !4444
  %31 = load i32, ptr %i, align 4, !dbg !4445
  %idxprom18 = sext i32 %31 to i64, !dbg !4444
  %arrayidx19 = getelementptr i32, ptr %30, i64 %idxprom18, !dbg !4444
  %32 = load i32, ptr %arrayidx19, align 4, !dbg !4444
  %cmp20 = icmp eq i32 %29, %32, !dbg !4446
  br i1 %cmp20, label %if.then22, label %if.end28, !dbg !4447

if.then22:                                        ; preds = %for.body
  %33 = load ptr, ptr %dquot.addr, align 8, !dbg !4448
  %dq_sb23 = getelementptr inbounds %struct.dquot, ptr %33, i32 0, i32 7, !dbg !4448
  %34 = load ptr, ptr %dq_sb23, align 8, !dbg !4448
  %35 = load ptr, ptr %blks.addr, align 8, !dbg !4448
  %36 = load i32, ptr %depth.addr, align 4, !dbg !4448
  %idxprom24 = sext i32 %36 to i64, !dbg !4448
  %arrayidx25 = getelementptr i32, ptr %35, i64 %idxprom24, !dbg !4448
  %37 = load i32, ptr %arrayidx25, align 4, !dbg !4448
  %38 = load ptr, ptr %info.addr, align 8, !dbg !4448
  %39 = load ptr, ptr %dquot.addr, align 8, !dbg !4448
  %dq_id26 = getelementptr inbounds %struct.dquot, ptr %39, i32 0, i32 8, !dbg !4448
  %40 = load i32, ptr %depth.addr, align 4, !dbg !4448
  %41 = load i64, ptr %dq_id26, align 8, !dbg !4448
  %call27 = call i32 @get_index(ptr noundef %38, i64 %41, i32 noundef %40) #17, !dbg !4448
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %34, ptr noundef @__func__.remove_tree, ptr noundef @.str.11, i32 noundef %37, i32 noundef %call27) #17, !dbg !4448
  store i32 -5, ptr %ret, align 4, !dbg !4450
  br label %out_buf, !dbg !4451

if.end28:                                         ; preds = %for.body
  br label %for.inc, !dbg !4452

for.inc:                                          ; preds = %if.end28
  %42 = load i32, ptr %i, align 4, !dbg !4453
  %inc = add i32 %42, 1, !dbg !4453
  store i32 %inc, ptr %i, align 4, !dbg !4453
  br label %for.cond, !dbg !4454, !llvm.loop !4455

for.end:                                          ; preds = %for.cond
  %43 = load i32, ptr %depth.addr, align 4, !dbg !4457
  %44 = load ptr, ptr %info.addr, align 8, !dbg !4459
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %44, i32 0, i32 8, !dbg !4460
  %45 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !4460
  %sub29 = sub i32 %45, 1, !dbg !4461
  %cmp30 = icmp eq i32 %43, %sub29, !dbg !4462
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !4463

if.then32:                                        ; preds = %for.end
  %46 = load ptr, ptr %info.addr, align 8, !dbg !4464
  %47 = load ptr, ptr %dquot.addr, align 8, !dbg !4466
  %48 = load i32, ptr %newblk, align 4, !dbg !4467
  %call33 = call i32 @free_dqentry(ptr noundef %46, ptr noundef %47, i32 noundef %48) #17, !dbg !4468
  store i32 %call33, ptr %ret, align 4, !dbg !4469
  %49 = load ptr, ptr %blks.addr, align 8, !dbg !4470
  %50 = load i32, ptr %depth.addr, align 4, !dbg !4471
  %add = add i32 %50, 1, !dbg !4472
  %idxprom34 = sext i32 %add to i64, !dbg !4470
  %arrayidx35 = getelementptr i32, ptr %49, i64 %idxprom34, !dbg !4470
  store i32 0, ptr %arrayidx35, align 4, !dbg !4473
  br label %if.end41, !dbg !4474

if.else:                                          ; preds = %for.end
  %51 = load i32, ptr %newblk, align 4, !dbg !4475
  %52 = load ptr, ptr %blks.addr, align 8, !dbg !4477
  %53 = load i32, ptr %depth.addr, align 4, !dbg !4478
  %add36 = add i32 %53, 1, !dbg !4479
  %idxprom37 = sext i32 %add36 to i64, !dbg !4477
  %arrayidx38 = getelementptr i32, ptr %52, i64 %idxprom37, !dbg !4477
  store i32 %51, ptr %arrayidx38, align 4, !dbg !4480
  %54 = load ptr, ptr %info.addr, align 8, !dbg !4481
  %55 = load ptr, ptr %dquot.addr, align 8, !dbg !4482
  %56 = load ptr, ptr %blks.addr, align 8, !dbg !4483
  %57 = load i32, ptr %depth.addr, align 4, !dbg !4484
  %add39 = add i32 %57, 1, !dbg !4485
  %call40 = call i32 @remove_tree(ptr noundef %54, ptr noundef %55, ptr noundef %56, i32 noundef %add39) #17, !dbg !4486
  store i32 %call40, ptr %ret, align 4, !dbg !4487
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then32
  %58 = load i32, ptr %ret, align 4, !dbg !4488
  %cmp42 = icmp sge i32 %58, 0, !dbg !4490
  br i1 %cmp42, label %land.lhs.true, label %if.end92, !dbg !4491

land.lhs.true:                                    ; preds = %if.end41
  %59 = load ptr, ptr %blks.addr, align 8, !dbg !4492
  %60 = load i32, ptr %depth.addr, align 4, !dbg !4493
  %add44 = add i32 %60, 1, !dbg !4494
  %idxprom45 = sext i32 %add44 to i64, !dbg !4492
  %arrayidx46 = getelementptr i32, ptr %59, i64 %idxprom45, !dbg !4492
  %61 = load i32, ptr %arrayidx46, align 4, !dbg !4492
  %tobool47 = icmp ne i32 %61, 0, !dbg !4492
  br i1 %tobool47, label %if.end92, label %if.then48, !dbg !4495

if.then48:                                        ; preds = %land.lhs.true
  %62 = load ptr, ptr %ref, align 8, !dbg !4496
  %63 = load ptr, ptr %info.addr, align 8, !dbg !4498
  %64 = load ptr, ptr %dquot.addr, align 8, !dbg !4499
  %dq_id49 = getelementptr inbounds %struct.dquot, ptr %64, i32 0, i32 8, !dbg !4500
  %65 = load i32, ptr %depth.addr, align 4, !dbg !4501
  %66 = load i64, ptr %dq_id49, align 8, !dbg !4502
  %call50 = call i32 @get_index(ptr noundef %63, i64 %66, i32 noundef %65) #17, !dbg !4502
  %idxprom51 = sext i32 %call50 to i64, !dbg !4496
  %arrayidx52 = getelementptr i32, ptr %62, i64 %idxprom51, !dbg !4496
  store i32 0, ptr %arrayidx52, align 4, !dbg !4503
  store i32 0, ptr %i, align 4, !dbg !4504
  br label %for.cond53, !dbg !4506

for.cond53:                                       ; preds = %for.inc61, %if.then48
  %67 = load i32, ptr %i, align 4, !dbg !4507
  %68 = load ptr, ptr %info.addr, align 8, !dbg !4509
  %dqi_usable_bs54 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %68, i32 0, i32 7, !dbg !4510
  %69 = load i32, ptr %dqi_usable_bs54, align 8, !dbg !4510
  %shr = lshr i32 %69, 2, !dbg !4511
  %cmp55 = icmp ult i32 %67, %shr, !dbg !4512
  br i1 %cmp55, label %land.rhs, label %land.end, !dbg !4513

land.rhs:                                         ; preds = %for.cond53
  %70 = load ptr, ptr %ref, align 8, !dbg !4514
  %71 = load i32, ptr %i, align 4, !dbg !4515
  %idxprom57 = sext i32 %71 to i64, !dbg !4514
  %arrayidx58 = getelementptr i32, ptr %70, i64 %idxprom57, !dbg !4514
  %72 = load i32, ptr %arrayidx58, align 4, !dbg !4514
  %tobool59 = icmp ne i32 %72, 0, !dbg !4516
  %lnot = xor i1 %tobool59, true, !dbg !4516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond53
  %73 = phi i1 [ false, %for.cond53 ], [ %lnot, %land.rhs ], !dbg !4517
  br i1 %73, label %for.body60, label %for.end63, !dbg !4518

for.body60:                                       ; preds = %land.end
  br label %for.inc61, !dbg !4518

for.inc61:                                        ; preds = %for.body60
  %74 = load i32, ptr %i, align 4, !dbg !4519
  %inc62 = add i32 %74, 1, !dbg !4519
  store i32 %inc62, ptr %i, align 4, !dbg !4519
  br label %for.cond53, !dbg !4520, !llvm.loop !4521

for.end63:                                        ; preds = %land.end
  %75 = load i32, ptr %i, align 4, !dbg !4523
  %76 = load ptr, ptr %info.addr, align 8, !dbg !4525
  %dqi_usable_bs64 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %76, i32 0, i32 7, !dbg !4526
  %77 = load i32, ptr %dqi_usable_bs64, align 8, !dbg !4526
  %shr65 = lshr i32 %77, 2, !dbg !4527
  %cmp66 = icmp eq i32 %75, %shr65, !dbg !4528
  br i1 %cmp66, label %land.lhs.true68, label %if.else79, !dbg !4529

land.lhs.true68:                                  ; preds = %for.end63
  %78 = load ptr, ptr %blks.addr, align 8, !dbg !4530
  %79 = load i32, ptr %depth.addr, align 4, !dbg !4531
  %idxprom69 = sext i32 %79 to i64, !dbg !4530
  %arrayidx70 = getelementptr i32, ptr %78, i64 %idxprom69, !dbg !4530
  %80 = load i32, ptr %arrayidx70, align 4, !dbg !4530
  %cmp71 = icmp ne i32 %80, 1, !dbg !4532
  br i1 %cmp71, label %if.then73, label %if.else79, !dbg !4533

if.then73:                                        ; preds = %land.lhs.true68
  %81 = load ptr, ptr %info.addr, align 8, !dbg !4534
  %82 = load ptr, ptr %buf, align 8, !dbg !4536
  %83 = load ptr, ptr %blks.addr, align 8, !dbg !4537
  %84 = load i32, ptr %depth.addr, align 4, !dbg !4538
  %idxprom74 = sext i32 %84 to i64, !dbg !4537
  %arrayidx75 = getelementptr i32, ptr %83, i64 %idxprom74, !dbg !4537
  %85 = load i32, ptr %arrayidx75, align 4, !dbg !4537
  %call76 = call i32 @put_free_dqblk(ptr noundef %81, ptr noundef %82, i32 noundef %85) #17, !dbg !4539
  %86 = load ptr, ptr %blks.addr, align 8, !dbg !4540
  %87 = load i32, ptr %depth.addr, align 4, !dbg !4541
  %idxprom77 = sext i32 %87 to i64, !dbg !4540
  %arrayidx78 = getelementptr i32, ptr %86, i64 %idxprom77, !dbg !4540
  store i32 0, ptr %arrayidx78, align 4, !dbg !4542
  br label %if.end91, !dbg !4543

if.else79:                                        ; preds = %land.lhs.true68, %for.end63
  %88 = load ptr, ptr %info.addr, align 8, !dbg !4544
  %89 = load ptr, ptr %blks.addr, align 8, !dbg !4546
  %90 = load i32, ptr %depth.addr, align 4, !dbg !4547
  %idxprom80 = sext i32 %90 to i64, !dbg !4546
  %arrayidx81 = getelementptr i32, ptr %89, i64 %idxprom80, !dbg !4546
  %91 = load i32, ptr %arrayidx81, align 4, !dbg !4546
  %92 = load ptr, ptr %buf, align 8, !dbg !4548
  %call82 = call i64 @write_blk(ptr noundef %88, i32 noundef %91, ptr noundef %92) #17, !dbg !4549
  %conv83 = trunc i64 %call82 to i32, !dbg !4549
  store i32 %conv83, ptr %ret, align 4, !dbg !4550
  %93 = load i32, ptr %ret, align 4, !dbg !4551
  %cmp84 = icmp slt i32 %93, 0, !dbg !4553
  br i1 %cmp84, label %if.then86, label %if.end90, !dbg !4554

if.then86:                                        ; preds = %if.else79
  %94 = load ptr, ptr %dquot.addr, align 8, !dbg !4555
  %dq_sb87 = getelementptr inbounds %struct.dquot, ptr %94, i32 0, i32 7, !dbg !4555
  %95 = load ptr, ptr %dq_sb87, align 8, !dbg !4555
  %96 = load ptr, ptr %blks.addr, align 8, !dbg !4555
  %97 = load i32, ptr %depth.addr, align 4, !dbg !4555
  %idxprom88 = sext i32 %97 to i64, !dbg !4555
  %arrayidx89 = getelementptr i32, ptr %96, i64 %idxprom88, !dbg !4555
  %98 = load i32, ptr %arrayidx89, align 4, !dbg !4555
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %95, ptr noundef @__func__.remove_tree, ptr noundef @.str.22, i32 noundef %98) #17, !dbg !4555
  br label %if.end90, !dbg !4555

if.end90:                                         ; preds = %if.then86, %if.else79
  br label %if.end91

if.end91:                                         ; preds = %if.end90, %if.then73
  br label %if.end92, !dbg !4556

if.end92:                                         ; preds = %if.end91, %land.lhs.true, %if.end41
  br label %out_buf, !dbg !4557

out_buf:                                          ; preds = %if.end92, %if.then22, %if.then14, %if.then4
  call void @llvm.dbg.label(metadata !4384), !dbg !4558
  %99 = load ptr, ptr %buf, align 8, !dbg !4559
  call void @kfree(ptr noundef %99) #17, !dbg !4560
  %100 = load i32, ptr %ret, align 4, !dbg !4561
  store i32 %100, ptr %retval, align 4, !dbg !4562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4562

cleanup:                                          ; preds = %out_buf, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #15, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 4, ptr %newblk) #15, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !4563
  %101 = load i32, ptr %retval, align 4, !dbg !4563
  ret i32 %101, !dbg !4563
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @qtree_read_dquot(ptr noundef %info, ptr noundef %dquot) #0 align 16 !dbg !4564 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %sb = alloca ptr, align 8
  %offset = alloca i64, align 8
  %ddquot = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4566, metadata !DIExpression()), !dbg !4574
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4567, metadata !DIExpression()), !dbg !4575
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !4576
  call void @llvm.dbg.declare(metadata ptr %type, metadata !4568, metadata !DIExpression()), !dbg !4577
  %0 = load ptr, ptr %dquot.addr, align 8, !dbg !4578
  %dq_id = getelementptr inbounds %struct.dquot, ptr %0, i32 0, i32 8, !dbg !4579
  %type1 = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !4580
  %1 = load i32, ptr %type1, align 4, !dbg !4580
  store i32 %1, ptr %type, align 4, !dbg !4577
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #15, !dbg !4581
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !4569, metadata !DIExpression()), !dbg !4582
  %2 = load ptr, ptr %dquot.addr, align 8, !dbg !4583
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %2, i32 0, i32 7, !dbg !4584
  %3 = load ptr, ptr %dq_sb, align 8, !dbg !4584
  store ptr %3, ptr %sb, align 8, !dbg !4582
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #15, !dbg !4585
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4570, metadata !DIExpression()), !dbg !4586
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddquot) #15, !dbg !4587
  call void @llvm.dbg.declare(metadata ptr %ddquot, metadata !4571, metadata !DIExpression()), !dbg !4588
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4589
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4572, metadata !DIExpression()), !dbg !4590
  store i32 0, ptr %ret, align 4, !dbg !4590
  %4 = load ptr, ptr %dquot.addr, align 8, !dbg !4591
  %dq_sb2 = getelementptr inbounds %struct.dquot, ptr %4, i32 0, i32 7, !dbg !4593
  %5 = load ptr, ptr %dq_sb2, align 8, !dbg !4593
  %call = call ptr @sb_dqopt(ptr noundef %5) #17, !dbg !4594
  %files = getelementptr inbounds %struct.quota_info, ptr %call, i32 0, i32 2, !dbg !4595
  %6 = load i32, ptr %type, align 4, !dbg !4596
  %idxprom = sext i32 %6 to i64, !dbg !4594
  %arrayidx = getelementptr [3 x ptr], ptr %files, i64 0, i64 %idxprom, !dbg !4594
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !4594
  %tobool = icmp ne ptr %7, null, !dbg !4594
  br i1 %tobool, label %if.end, label %if.then, !dbg !4597

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %sb, align 8, !dbg !4598
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %8, ptr noundef @__func__.qtree_read_dquot, ptr noundef @.str.3) #17, !dbg !4598
  store i32 -5, ptr %retval, align 4, !dbg !4600
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4600

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %dquot.addr, align 8, !dbg !4601
  %dq_off = getelementptr inbounds %struct.dquot, ptr %9, i32 0, i32 9, !dbg !4603
  %10 = load i64, ptr %dq_off, align 8, !dbg !4603
  %tobool3 = icmp ne i64 %10, 0, !dbg !4601
  br i1 %tobool3, label %if.end15, label %if.then4, !dbg !4604

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %info.addr, align 8, !dbg !4605
  %12 = load ptr, ptr %dquot.addr, align 8, !dbg !4607
  %call5 = call i64 @find_dqentry(ptr noundef %11, ptr noundef %12) #17, !dbg !4608
  store i64 %call5, ptr %offset, align 8, !dbg !4609
  %13 = load i64, ptr %offset, align 8, !dbg !4610
  %cmp = icmp sle i64 %13, 0, !dbg !4612
  br i1 %cmp, label %if.then6, label %if.end13, !dbg !4613

if.then6:                                         ; preds = %if.then4
  %14 = load i64, ptr %offset, align 8, !dbg !4614
  %cmp7 = icmp slt i64 %14, 0, !dbg !4617
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !4618

if.then8:                                         ; preds = %if.then6
  %15 = load ptr, ptr %sb, align 8, !dbg !4619
  %16 = load ptr, ptr %dquot.addr, align 8, !dbg !4619
  %dq_id9 = getelementptr inbounds %struct.dquot, ptr %16, i32 0, i32 8, !dbg !4619
  %17 = load i64, ptr %dq_id9, align 8, !dbg !4619
  %call10 = call i32 @from_kqid(ptr noundef @init_user_ns, i64 %17) #17, !dbg !4619
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %15, ptr noundef @__func__.qtree_read_dquot, ptr noundef @.str.4, i32 noundef %call10) #17, !dbg !4619
  br label %if.end11, !dbg !4619

if.end11:                                         ; preds = %if.then8, %if.then6
  %18 = load ptr, ptr %dquot.addr, align 8, !dbg !4620
  %dq_off12 = getelementptr inbounds %struct.dquot, ptr %18, i32 0, i32 9, !dbg !4621
  store i64 0, ptr %dq_off12, align 8, !dbg !4622
  %19 = load ptr, ptr %dquot.addr, align 8, !dbg !4623
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %19, i32 0, i32 10, !dbg !4624
  call void @set_bit(i64 noundef 3, ptr noundef %dq_flags) #17, !dbg !4625
  %20 = load ptr, ptr %dquot.addr, align 8, !dbg !4626
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %20, i32 0, i32 11, !dbg !4627
  call void @llvm.memset.p0.i64(ptr align 8 %dq_dqb, i8 0, i64 72, i1 false), !dbg !4628
  %21 = load i64, ptr %offset, align 8, !dbg !4629
  %conv = trunc i64 %21 to i32, !dbg !4629
  store i32 %conv, ptr %ret, align 4, !dbg !4630
  br label %out, !dbg !4631

if.end13:                                         ; preds = %if.then4
  %22 = load i64, ptr %offset, align 8, !dbg !4632
  %23 = load ptr, ptr %dquot.addr, align 8, !dbg !4633
  %dq_off14 = getelementptr inbounds %struct.dquot, ptr %23, i32 0, i32 9, !dbg !4634
  store i64 %22, ptr %dq_off14, align 8, !dbg !4635
  br label %if.end15, !dbg !4636

if.end15:                                         ; preds = %if.end13, %if.end
  %24 = load ptr, ptr %info.addr, align 8, !dbg !4637
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %24, i32 0, i32 6, !dbg !4638
  %25 = load i32, ptr %dqi_entry_size, align 4, !dbg !4638
  %conv16 = zext i32 %25 to i64, !dbg !4637
  %call17 = call noalias ptr @kmalloc(i64 noundef %conv16, i32 noundef 3136) #16, !dbg !4639
  store ptr %call17, ptr %ddquot, align 8, !dbg !4640
  %26 = load ptr, ptr %ddquot, align 8, !dbg !4641
  %tobool18 = icmp ne ptr %26, null, !dbg !4641
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4643

if.then19:                                        ; preds = %if.end15
  store i32 -12, ptr %retval, align 4, !dbg !4644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4644

if.end20:                                         ; preds = %if.end15
  %27 = load ptr, ptr %sb, align 8, !dbg !4645
  %s_op = getelementptr inbounds %struct.super_block, ptr %27, i32 0, i32 6, !dbg !4646
  %28 = load ptr, ptr %s_op, align 16, !dbg !4646
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %28, i32 0, i32 20, !dbg !4647
  %29 = load ptr, ptr %quota_read, align 8, !dbg !4647
  %30 = load ptr, ptr %sb, align 8, !dbg !4648
  %31 = load i32, ptr %type, align 4, !dbg !4649
  %32 = load ptr, ptr %ddquot, align 8, !dbg !4650
  %33 = load ptr, ptr %info.addr, align 8, !dbg !4651
  %dqi_entry_size21 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %33, i32 0, i32 6, !dbg !4652
  %34 = load i32, ptr %dqi_entry_size21, align 4, !dbg !4652
  %conv22 = zext i32 %34 to i64, !dbg !4651
  %35 = load ptr, ptr %dquot.addr, align 8, !dbg !4653
  %dq_off23 = getelementptr inbounds %struct.dquot, ptr %35, i32 0, i32 9, !dbg !4654
  %36 = load i64, ptr %dq_off23, align 8, !dbg !4654
  %call24 = call i64 %29(ptr noundef %30, i32 noundef %31, ptr noundef %32, i64 noundef %conv22, i64 noundef %36) #17, !dbg !4645
  %conv25 = trunc i64 %call24 to i32, !dbg !4645
  store i32 %conv25, ptr %ret, align 4, !dbg !4655
  %37 = load i32, ptr %ret, align 4, !dbg !4656
  %38 = load ptr, ptr %info.addr, align 8, !dbg !4658
  %dqi_entry_size26 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %38, i32 0, i32 6, !dbg !4659
  %39 = load i32, ptr %dqi_entry_size26, align 4, !dbg !4659
  %cmp27 = icmp ne i32 %37, %39, !dbg !4660
  br i1 %cmp27, label %if.then29, label %if.end38, !dbg !4661

if.then29:                                        ; preds = %if.end20
  %40 = load i32, ptr %ret, align 4, !dbg !4662
  %cmp30 = icmp sge i32 %40, 0, !dbg !4665
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !4666

if.then32:                                        ; preds = %if.then29
  store i32 -5, ptr %ret, align 4, !dbg !4667
  br label %if.end33, !dbg !4668

if.end33:                                         ; preds = %if.then32, %if.then29
  %41 = load ptr, ptr %sb, align 8, !dbg !4669
  %42 = load ptr, ptr %dquot.addr, align 8, !dbg !4669
  %dq_id34 = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 8, !dbg !4669
  %43 = load i64, ptr %dq_id34, align 8, !dbg !4669
  %call35 = call i32 @from_kqid(ptr noundef @init_user_ns, i64 %43) #17, !dbg !4669
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %41, ptr noundef @__func__.qtree_read_dquot, ptr noundef @.str.5, i32 noundef %call35) #17, !dbg !4669
  %44 = load ptr, ptr %dquot.addr, align 8, !dbg !4670
  %dq_flags36 = getelementptr inbounds %struct.dquot, ptr %44, i32 0, i32 10, !dbg !4671
  call void @set_bit(i64 noundef 3, ptr noundef %dq_flags36) #17, !dbg !4672
  %45 = load ptr, ptr %dquot.addr, align 8, !dbg !4673
  %dq_dqb37 = getelementptr inbounds %struct.dquot, ptr %45, i32 0, i32 11, !dbg !4674
  call void @llvm.memset.p0.i64(ptr align 8 %dq_dqb37, i8 0, i64 72, i1 false), !dbg !4675
  %46 = load ptr, ptr %ddquot, align 8, !dbg !4676
  call void @kfree(ptr noundef %46) #17, !dbg !4677
  br label %out, !dbg !4678

if.end38:                                         ; preds = %if.end20
  %47 = load ptr, ptr %dquot.addr, align 8, !dbg !4679
  %dq_dqb_lock = getelementptr inbounds %struct.dquot, ptr %47, i32 0, i32 5, !dbg !4680
  call void @spin_lock(ptr noundef %dq_dqb_lock) #17, !dbg !4681
  %48 = load ptr, ptr %info.addr, align 8, !dbg !4682
  %dqi_ops = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %48, i32 0, i32 9, !dbg !4683
  %49 = load ptr, ptr %dqi_ops, align 8, !dbg !4683
  %disk2mem_dqblk = getelementptr inbounds %struct.qtree_fmt_operations, ptr %49, i32 0, i32 1, !dbg !4684
  %50 = load ptr, ptr %disk2mem_dqblk, align 8, !dbg !4684
  %51 = load ptr, ptr %dquot.addr, align 8, !dbg !4685
  %52 = load ptr, ptr %ddquot, align 8, !dbg !4686
  call void %50(ptr noundef %51, ptr noundef %52) #17, !dbg !4682
  %53 = load ptr, ptr %dquot.addr, align 8, !dbg !4687
  %dq_dqb39 = getelementptr inbounds %struct.dquot, ptr %53, i32 0, i32 11, !dbg !4689
  %dqb_bhardlimit = getelementptr inbounds %struct.mem_dqblk, ptr %dq_dqb39, i32 0, i32 0, !dbg !4690
  %54 = load i64, ptr %dqb_bhardlimit, align 8, !dbg !4690
  %tobool40 = icmp ne i64 %54, 0, !dbg !4687
  br i1 %tobool40, label %if.end51, label %land.lhs.true, !dbg !4691

land.lhs.true:                                    ; preds = %if.end38
  %55 = load ptr, ptr %dquot.addr, align 8, !dbg !4692
  %dq_dqb41 = getelementptr inbounds %struct.dquot, ptr %55, i32 0, i32 11, !dbg !4693
  %dqb_bsoftlimit = getelementptr inbounds %struct.mem_dqblk, ptr %dq_dqb41, i32 0, i32 1, !dbg !4694
  %56 = load i64, ptr %dqb_bsoftlimit, align 8, !dbg !4694
  %tobool42 = icmp ne i64 %56, 0, !dbg !4692
  br i1 %tobool42, label %if.end51, label %land.lhs.true43, !dbg !4695

land.lhs.true43:                                  ; preds = %land.lhs.true
  %57 = load ptr, ptr %dquot.addr, align 8, !dbg !4696
  %dq_dqb44 = getelementptr inbounds %struct.dquot, ptr %57, i32 0, i32 11, !dbg !4697
  %dqb_ihardlimit = getelementptr inbounds %struct.mem_dqblk, ptr %dq_dqb44, i32 0, i32 4, !dbg !4698
  %58 = load i64, ptr %dqb_ihardlimit, align 8, !dbg !4698
  %tobool45 = icmp ne i64 %58, 0, !dbg !4696
  br i1 %tobool45, label %if.end51, label %land.lhs.true46, !dbg !4699

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %59 = load ptr, ptr %dquot.addr, align 8, !dbg !4700
  %dq_dqb47 = getelementptr inbounds %struct.dquot, ptr %59, i32 0, i32 11, !dbg !4701
  %dqb_isoftlimit = getelementptr inbounds %struct.mem_dqblk, ptr %dq_dqb47, i32 0, i32 5, !dbg !4702
  %60 = load i64, ptr %dqb_isoftlimit, align 8, !dbg !4702
  %tobool48 = icmp ne i64 %60, 0, !dbg !4700
  br i1 %tobool48, label %if.end51, label %if.then49, !dbg !4703

if.then49:                                        ; preds = %land.lhs.true46
  %61 = load ptr, ptr %dquot.addr, align 8, !dbg !4704
  %dq_flags50 = getelementptr inbounds %struct.dquot, ptr %61, i32 0, i32 10, !dbg !4705
  call void @set_bit(i64 noundef 3, ptr noundef %dq_flags50) #17, !dbg !4706
  br label %if.end51, !dbg !4706

if.end51:                                         ; preds = %if.then49, %land.lhs.true46, %land.lhs.true43, %land.lhs.true, %if.end38
  %62 = load ptr, ptr %dquot.addr, align 8, !dbg !4707
  %dq_dqb_lock52 = getelementptr inbounds %struct.dquot, ptr %62, i32 0, i32 5, !dbg !4708
  call void @spin_unlock(ptr noundef %dq_dqb_lock52) #17, !dbg !4709
  %63 = load ptr, ptr %ddquot, align 8, !dbg !4710
  call void @kfree(ptr noundef %63) #17, !dbg !4711
  br label %out, !dbg !4711

out:                                              ; preds = %if.end51, %if.end33, %if.end11
  call void @llvm.dbg.label(metadata !4573), !dbg !4712
  call void @dqstats_inc(i32 noundef 2) #17, !dbg !4713
  %64 = load i32, ptr %ret, align 4, !dbg !4714
  store i32 %64, ptr %retval, align 4, !dbg !4715
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4715

cleanup:                                          ; preds = %out, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddquot) #15, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #15, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #15, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !4716
  %65 = load i32, ptr %retval, align 4, !dbg !4716
  ret i32 %65, !dbg !4716
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sb_dqopt(ptr noundef %sb) #4 align 16 !dbg !4717 {
entry:
  %sb.addr = alloca ptr, align 8
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !4722, metadata !DIExpression()), !dbg !4723
  %0 = load ptr, ptr %sb.addr, align 8, !dbg !4724
  %s_dquot = getelementptr inbounds %struct.super_block, ptr %0, i32 0, i32 27, !dbg !4725
  ret ptr %s_dquot, !dbg !4726
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_dqentry(ptr noundef %info, ptr noundef %dquot) #4 align 16 !dbg !4727 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blks = alloca [6 x i32], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4731, metadata !DIExpression()), !dbg !4734
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4732, metadata !DIExpression()), !dbg !4735
  call void @llvm.lifetime.start.p0(i64 24, ptr %blks) #15, !dbg !4736
  call void @llvm.dbg.declare(metadata ptr %blks, metadata !4733, metadata !DIExpression()), !dbg !4737
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %blks, ptr align 16 @__const.find_dqentry.blks, i64 24, i1 false), !dbg !4737
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4738
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 8, !dbg !4740
  %1 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !4740
  %cmp = icmp uge i32 %1, 6, !dbg !4741
  br i1 %cmp, label %if.then, label %if.end, !dbg !4742

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dquot.addr, align 8, !dbg !4743
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %2, i32 0, i32 7, !dbg !4743
  %3 = load ptr, ptr %dq_sb, align 8, !dbg !4743
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %3, ptr noundef @__func__.find_dqentry, ptr noundef @.str.2) #17, !dbg !4743
  store i64 -5, ptr %retval, align 8, !dbg !4745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4745

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !4746
  %5 = load ptr, ptr %dquot.addr, align 8, !dbg !4747
  %arraydecay = getelementptr inbounds [6 x i32], ptr %blks, i64 0, i64 0, !dbg !4748
  %call = call i64 @find_tree_dqentry(ptr noundef %4, ptr noundef %5, ptr noundef %arraydecay, i32 noundef 0) #17, !dbg !4749
  store i64 %call, ptr %retval, align 8, !dbg !4750
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4750

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %blks) #15, !dbg !4751
  %6 = load i64, ptr %retval, align 8, !dbg !4751
  ret i64 %6, !dbg !4751
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4752 dso_local i32 @from_kqid(ptr noundef, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4756 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4763, metadata !DIExpression()), !dbg !4765
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4764, metadata !DIExpression()), !dbg !4766
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4767
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4768
  %div = sdiv i64 %1, 64, !dbg !4768
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4769
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !4770
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4771
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4772
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !4773
  ret void, !dbg !4774
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @qtree_release_dquot(ptr noundef %info, ptr noundef %dquot) #0 align 16 !dbg !4775 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4777, metadata !DIExpression()), !dbg !4779
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !4778, metadata !DIExpression()), !dbg !4780
  %0 = load ptr, ptr %dquot.addr, align 8, !dbg !4781
  %dq_flags = getelementptr inbounds %struct.dquot, ptr %0, i32 0, i32 10, !dbg !4781
  %1 = ptrtoint ptr %dq_flags to i64, !dbg !4781
  %cmp = icmp ne i64 %1, 0, !dbg !4781
  %conv = zext i1 %cmp to i32, !dbg !4781
  %2 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4781
  br i1 %2, label %land.lhs.true, label %cond.false, !dbg !4781

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %dquot.addr, align 8, !dbg !4781
  %dq_flags1 = getelementptr inbounds %struct.dquot, ptr %3, i32 0, i32 10, !dbg !4781
  %4 = ptrtoint ptr %dq_flags1 to i64, !dbg !4781
  %cmp2 = icmp ne i64 %4, 0, !dbg !4781
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !4781

land.lhs.true4:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %dquot.addr, align 8, !dbg !4781
  %dq_flags5 = getelementptr inbounds %struct.dquot, ptr %5, i32 0, i32 10, !dbg !4781
  %6 = load i64, ptr %dq_flags5, align 8, !dbg !4781
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4781
  br i1 %7, label %cond.true, label %cond.false, !dbg !4783

cond.true:                                        ; preds = %land.lhs.true4
  %8 = load ptr, ptr %dquot.addr, align 8, !dbg !4781
  %dq_flags6 = getelementptr inbounds %struct.dquot, ptr %8, i32 0, i32 10, !dbg !4781
  %call = call zeroext i1 @const_test_bit(i64 noundef 3, ptr noundef %dq_flags6) #17, !dbg !4781
  br i1 %call, label %land.lhs.true11, label %if.end, !dbg !4781

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %9 = load ptr, ptr %dquot.addr, align 8, !dbg !4781
  %dq_flags8 = getelementptr inbounds %struct.dquot, ptr %9, i32 0, i32 10, !dbg !4781
  %call9 = call zeroext i1 @_test_bit(i64 noundef 3, ptr noundef %dq_flags8) #17, !dbg !4781
  br i1 %call9, label %land.lhs.true11, label %if.end, !dbg !4783

land.lhs.true11:                                  ; preds = %cond.false, %cond.true
  %10 = load ptr, ptr %dquot.addr, align 8, !dbg !4784
  %dq_dqb = getelementptr inbounds %struct.dquot, ptr %10, i32 0, i32 11, !dbg !4785
  %dqb_curinodes = getelementptr inbounds %struct.mem_dqblk, ptr %dq_dqb, i32 0, i32 6, !dbg !4786
  %11 = load i64, ptr %dqb_curinodes, align 8, !dbg !4786
  %12 = load ptr, ptr %dquot.addr, align 8, !dbg !4787
  %dq_dqb12 = getelementptr inbounds %struct.dquot, ptr %12, i32 0, i32 11, !dbg !4788
  %dqb_curspace = getelementptr inbounds %struct.mem_dqblk, ptr %dq_dqb12, i32 0, i32 2, !dbg !4789
  %13 = load i64, ptr %dqb_curspace, align 8, !dbg !4789
  %or = or i64 %11, %13, !dbg !4790
  %tobool = icmp ne i64 %or, 0, !dbg !4790
  br i1 %tobool, label %if.end, label %if.then, !dbg !4791

if.then:                                          ; preds = %land.lhs.true11
  %14 = load ptr, ptr %info.addr, align 8, !dbg !4792
  %15 = load ptr, ptr %dquot.addr, align 8, !dbg !4793
  %call13 = call i32 @qtree_delete_dquot(ptr noundef %14, ptr noundef %15) #17, !dbg !4794
  store i32 %call13, ptr %retval, align 4, !dbg !4795
  br label %return, !dbg !4795

if.end:                                           ; preds = %land.lhs.true11, %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4796
  br label %return, !dbg !4796

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, ptr %retval, align 4, !dbg !4797
  ret i32 %16, !dbg !4797
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4798 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4805, metadata !DIExpression()), !dbg !4810
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4806, metadata !DIExpression()), !dbg !4811
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !4812
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4807, metadata !DIExpression()), !dbg !4813
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4814
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4815
  %div = udiv i64 %1, 64, !dbg !4815
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4816
  store ptr %add.ptr, ptr %p, align 8, !dbg !4813
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #15, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4808, metadata !DIExpression()), !dbg !4818
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4819
  %rem = urem i64 %2, 64, !dbg !4819
  %shl = shl i64 1, %rem, !dbg !4819
  store i64 %shl, ptr %mask, align 8, !dbg !4818
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !4820
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4809, metadata !DIExpression()), !dbg !4821
  %3 = load ptr, ptr %p, align 8, !dbg !4822
  %4 = load i64, ptr %3, align 8, !dbg !4823
  store i64 %4, ptr %val, align 8, !dbg !4821
  %5 = load i64, ptr %val, align 8, !dbg !4824
  %6 = load i64, ptr %mask, align 8, !dbg !4825
  %and = and i64 %5, %6, !dbg !4826
  %tobool = icmp ne i64 %and, 0, !dbg !4827
  %lnot = xor i1 %tobool, true, !dbg !4827
  %lnot1 = xor i1 %lnot, true, !dbg !4828
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !4829
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #15, !dbg !4829
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !4829
  ret i1 %lnot1, !dbg !4830
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !4831 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4834, metadata !DIExpression()), !dbg !4836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4835, metadata !DIExpression()), !dbg !4837
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4838
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4839
  %div = udiv i64 %1, 64, !dbg !4839
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4840
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !4841
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4842
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4843
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !4844
  ret i1 %call, !dbg !4845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @qtree_get_next_id(ptr noundef %info, ptr noundef %qid) #0 align 16 !dbg !4846 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %qid.addr = alloca ptr, align 8
  %id = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.kqid, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4850, metadata !DIExpression()), !dbg !4854
  store ptr %qid, ptr %qid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %qid.addr, metadata !4851, metadata !DIExpression()), !dbg !4855
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #15, !dbg !4856
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4852, metadata !DIExpression()), !dbg !4857
  %0 = load ptr, ptr %qid.addr, align 8, !dbg !4858
  %1 = load i64, ptr %0, align 4, !dbg !4859
  %call = call i32 @from_kqid(ptr noundef @init_user_ns, i64 %1) #17, !dbg !4859
  store i32 %call, ptr %id, align 4, !dbg !4857
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4860
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4853, metadata !DIExpression()), !dbg !4861
  %2 = load ptr, ptr %info.addr, align 8, !dbg !4862
  %call1 = call i32 @find_next_id(ptr noundef %2, ptr noundef %id, i32 noundef 1, i32 noundef 0) #17, !dbg !4863
  store i32 %call1, ptr %ret, align 4, !dbg !4864
  %3 = load i32, ptr %ret, align 4, !dbg !4865
  %cmp = icmp slt i32 %3, 0, !dbg !4867
  br i1 %cmp, label %if.then, label %if.end, !dbg !4868

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %ret, align 4, !dbg !4869
  store i32 %4, ptr %retval, align 4, !dbg !4870
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4870

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %qid.addr, align 8, !dbg !4871
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !4872
  %6 = load ptr, ptr %qid.addr, align 8, !dbg !4873
  %type = getelementptr inbounds %struct.kqid, ptr %6, i32 0, i32 1, !dbg !4874
  %7 = load i32, ptr %type, align 4, !dbg !4874
  %8 = load i32, ptr %id, align 4, !dbg !4875
  %call2 = call i64 @make_kqid(ptr noundef @init_user_ns, i32 noundef %7, i32 noundef %8) #17, !dbg !4872
  store i64 %call2, ptr %tmp, align 4, !dbg !4872
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %tmp, i64 8, i1 false), !dbg !4872
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !4872
  store i32 0, ptr %retval, align 4, !dbg !4876
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4876

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4877
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #15, !dbg !4877
  %9 = load i32, ptr %retval, align 4, !dbg !4877
  ret i32 %9, !dbg !4877
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_next_id(ptr noundef %info, ptr noundef %id, i32 noundef %blk, i32 noundef %depth) #0 align 16 !dbg !4878 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %ref = alloca ptr, align 8
  %ret = alloca i64, align 8
  %epb = alloca i32, align 4
  %level_inc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %blk_no = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !4883, metadata !DIExpression()), !dbg !4898
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !4884, metadata !DIExpression()), !dbg !4899
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !4885, metadata !DIExpression()), !dbg !4900
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !4886, metadata !DIExpression()), !dbg !4901
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !4902
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4887, metadata !DIExpression()), !dbg !4903
  %0 = load ptr, ptr %info.addr, align 8, !dbg !4904
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !4905
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !4905
  %conv = zext i32 %1 to i64, !dbg !4904
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !4906
  store ptr %call, ptr %buf, align 8, !dbg !4903
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #15, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !4888, metadata !DIExpression()), !dbg !4908
  %2 = load ptr, ptr %buf, align 8, !dbg !4909
  store ptr %2, ptr %ref, align 8, !dbg !4908
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !4910
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4889, metadata !DIExpression()), !dbg !4911
  call void @llvm.lifetime.start.p0(i64 4, ptr %epb) #15, !dbg !4912
  call void @llvm.dbg.declare(metadata ptr %epb, metadata !4890, metadata !DIExpression()), !dbg !4913
  %3 = load ptr, ptr %info.addr, align 8, !dbg !4914
  %dqi_usable_bs1 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %3, i32 0, i32 7, !dbg !4915
  %4 = load i32, ptr %dqi_usable_bs1, align 8, !dbg !4915
  %shr = lshr i32 %4, 2, !dbg !4916
  store i32 %shr, ptr %epb, align 4, !dbg !4913
  call void @llvm.lifetime.start.p0(i64 4, ptr %level_inc) #15, !dbg !4917
  call void @llvm.dbg.declare(metadata ptr %level_inc, metadata !4891, metadata !DIExpression()), !dbg !4918
  store i32 1, ptr %level_inc, align 4, !dbg !4918
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4892, metadata !DIExpression()), !dbg !4920
  %5 = load ptr, ptr %buf, align 8, !dbg !4921
  %tobool = icmp ne ptr %5, null, !dbg !4921
  br i1 %tobool, label %if.end, label %if.then, !dbg !4923

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !4924
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !4924

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %depth.addr, align 4, !dbg !4925
  store i32 %6, ptr %i, align 4, !dbg !4927
  br label %for.cond, !dbg !4928

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, ptr %i, align 4, !dbg !4929
  %8 = load ptr, ptr %info.addr, align 8, !dbg !4931
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %8, i32 0, i32 8, !dbg !4932
  %9 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !4932
  %sub = sub i32 %9, 1, !dbg !4933
  %cmp = icmp ult i32 %7, %sub, !dbg !4934
  br i1 %cmp, label %for.body, label %for.end, !dbg !4935

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %epb, align 4, !dbg !4936
  %11 = load i32, ptr %level_inc, align 4, !dbg !4937
  %mul = mul i32 %11, %10, !dbg !4937
  store i32 %mul, ptr %level_inc, align 4, !dbg !4937
  br label %for.inc, !dbg !4938

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !4939
  %inc = add i32 %12, 1, !dbg !4939
  store i32 %inc, ptr %i, align 4, !dbg !4939
  br label %for.cond, !dbg !4940, !llvm.loop !4941

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %info.addr, align 8, !dbg !4943
  %14 = load i32, ptr %blk.addr, align 4, !dbg !4944
  %15 = load ptr, ptr %buf, align 8, !dbg !4945
  %call3 = call i64 @read_blk(ptr noundef %13, i32 noundef %14, ptr noundef %15) #17, !dbg !4946
  store i64 %call3, ptr %ret, align 8, !dbg !4947
  %16 = load i64, ptr %ret, align 8, !dbg !4948
  %cmp4 = icmp slt i64 %16, 0, !dbg !4950
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4951

if.then6:                                         ; preds = %for.end
  %17 = load ptr, ptr %info.addr, align 8, !dbg !4952
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %17, i32 0, i32 0, !dbg !4952
  %18 = load ptr, ptr %dqi_sb, align 8, !dbg !4952
  %19 = load i32, ptr %blk.addr, align 4, !dbg !4952
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %18, ptr noundef @__func__.find_next_id, ptr noundef @.str.26, i32 noundef %19) #17, !dbg !4952
  br label %out_buf, !dbg !4954

if.end7:                                          ; preds = %for.end
  %20 = load ptr, ptr %info.addr, align 8, !dbg !4955
  %21 = load ptr, ptr %id.addr, align 8, !dbg !4956
  %22 = load i32, ptr %21, align 4, !dbg !4957
  %23 = load i32, ptr %depth.addr, align 4, !dbg !4958
  %call8 = call i32 @__get_index(ptr noundef %20, i32 noundef %22, i32 noundef %23) #17, !dbg !4959
  store i32 %call8, ptr %i, align 4, !dbg !4960
  br label %for.cond9, !dbg !4961

for.cond9:                                        ; preds = %for.inc37, %if.end7
  %24 = load i32, ptr %i, align 4, !dbg !4962
  %25 = load i32, ptr %epb, align 4, !dbg !4963
  %cmp10 = icmp ult i32 %24, %25, !dbg !4964
  br i1 %cmp10, label %for.body12, label %for.end39, !dbg !4965

for.body12:                                       ; preds = %for.cond9
  call void @llvm.lifetime.start.p0(i64 4, ptr %blk_no) #15, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %blk_no, metadata !4893, metadata !DIExpression()), !dbg !4967
  %26 = load ptr, ptr %ref, align 8, !dbg !4968
  %27 = load i32, ptr %i, align 4, !dbg !4968
  %idxprom = sext i32 %27 to i64, !dbg !4968
  %arrayidx = getelementptr i32, ptr %26, i64 %idxprom, !dbg !4968
  %28 = load i32, ptr %arrayidx, align 4, !dbg !4968
  store i32 %28, ptr %blk_no, align 4, !dbg !4967
  %29 = load i32, ptr %blk_no, align 4, !dbg !4969
  %cmp13 = icmp eq i32 %29, 0, !dbg !4971
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !4972

if.then15:                                        ; preds = %for.body12
  %30 = load i32, ptr %level_inc, align 4, !dbg !4973
  %31 = load ptr, ptr %id.addr, align 8, !dbg !4975
  %32 = load i32, ptr %31, align 4, !dbg !4976
  %add = add i32 %32, %30, !dbg !4976
  store i32 %add, ptr %31, align 4, !dbg !4976
  store i32 8, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4977

if.end16:                                         ; preds = %for.body12
  %33 = load ptr, ptr %info.addr, align 8, !dbg !4978
  %dqi_sb17 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %33, i32 0, i32 0, !dbg !4979
  %34 = load ptr, ptr %dqi_sb17, align 8, !dbg !4979
  %35 = load i32, ptr %blk_no, align 4, !dbg !4980
  %36 = load ptr, ptr %info.addr, align 8, !dbg !4981
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %36, i32 0, i32 2, !dbg !4982
  %37 = load i32, ptr %dqi_blocks, align 4, !dbg !4982
  %sub18 = sub i32 %37, 1, !dbg !4983
  %call19 = call i32 @do_check_range(ptr noundef %34, ptr noundef @.str.10, i32 noundef %35, i32 noundef 0, i32 noundef %sub18) #17, !dbg !4984
  %conv20 = sext i32 %call19 to i64, !dbg !4984
  store i64 %conv20, ptr %ret, align 8, !dbg !4985
  %38 = load i64, ptr %ret, align 8, !dbg !4986
  %tobool21 = icmp ne i64 %38, 0, !dbg !4986
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4988

if.then22:                                        ; preds = %if.end16
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4989

if.end23:                                         ; preds = %if.end16
  %39 = load i32, ptr %depth.addr, align 4, !dbg !4990
  %40 = load ptr, ptr %info.addr, align 8, !dbg !4992
  %dqi_qtree_depth24 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %40, i32 0, i32 8, !dbg !4993
  %41 = load i32, ptr %dqi_qtree_depth24, align 4, !dbg !4993
  %sub25 = sub i32 %41, 1, !dbg !4994
  %cmp26 = icmp eq i32 %39, %sub25, !dbg !4995
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !4996

if.then28:                                        ; preds = %if.end23
  store i64 0, ptr %ret, align 8, !dbg !4997
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4999

if.end29:                                         ; preds = %if.end23
  %42 = load ptr, ptr %info.addr, align 8, !dbg !5000
  %43 = load ptr, ptr %id.addr, align 8, !dbg !5001
  %44 = load i32, ptr %blk_no, align 4, !dbg !5002
  %45 = load i32, ptr %depth.addr, align 4, !dbg !5003
  %add30 = add i32 %45, 1, !dbg !5004
  %call31 = call i32 @find_next_id(ptr noundef %42, ptr noundef %43, i32 noundef %44, i32 noundef %add30) #17, !dbg !5005
  %conv32 = sext i32 %call31 to i64, !dbg !5005
  store i64 %conv32, ptr %ret, align 8, !dbg !5006
  %46 = load i64, ptr %ret, align 8, !dbg !5007
  %cmp33 = icmp ne i64 %46, -2, !dbg !5009
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !5010

if.then35:                                        ; preds = %if.end29
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5011

if.end36:                                         ; preds = %if.end29
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5012
  br label %cleanup, !dbg !5012

cleanup:                                          ; preds = %if.then28, %if.then22, %if.end36, %if.then35, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr %blk_no) #15, !dbg !5012
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
    i32 8, label %for.inc37
    i32 6, label %for.end39
    i32 5, label %out_buf
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc37, !dbg !5013

for.inc37:                                        ; preds = %cleanup.cont, %cleanup
  %47 = load i32, ptr %i, align 4, !dbg !5014
  %inc38 = add i32 %47, 1, !dbg !5014
  store i32 %inc38, ptr %i, align 4, !dbg !5014
  br label %for.cond9, !dbg !5015, !llvm.loop !5016

for.end39:                                        ; preds = %cleanup, %for.cond9
  %48 = load i32, ptr %i, align 4, !dbg !5018
  %49 = load i32, ptr %epb, align 4, !dbg !5020
  %cmp40 = icmp eq i32 %48, %49, !dbg !5021
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !5022

if.then42:                                        ; preds = %for.end39
  store i64 -2, ptr %ret, align 8, !dbg !5023
  br label %out_buf, !dbg !5025

if.end43:                                         ; preds = %for.end39
  br label %out_buf, !dbg !5020

out_buf:                                          ; preds = %if.end43, %cleanup, %if.then42, %if.then6
  call void @llvm.dbg.label(metadata !4897), !dbg !5026
  %50 = load ptr, ptr %buf, align 8, !dbg !5027
  call void @kfree(ptr noundef %50) #17, !dbg !5028
  %51 = load i64, ptr %ret, align 8, !dbg !5029
  %conv44 = trunc i64 %51 to i32, !dbg !5029
  store i32 %conv44, ptr %retval, align 4, !dbg !5030
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !5030

cleanup45:                                        ; preds = %out_buf, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 4, ptr %level_inc) #15, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 4, ptr %epb) #15, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #15, !dbg !5031
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5031
  %52 = load i32, ptr %retval, align 4, !dbg !5031
  ret i32 %52, !dbg !5031
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @make_kqid(ptr noundef %from, i32 noundef %type, i32 noundef %qid) #4 align 16 !dbg !5032 {
entry:
  %retval = alloca %struct.kqid, align 4
  %from.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %qid.addr = alloca i32, align 4
  %tmp = alloca %struct.kuid_t, align 4
  %tmp3 = alloca %struct.kgid_t, align 4
  %tmp7 = alloca %struct.kprojid_t, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5036, metadata !DIExpression()), !dbg !5040
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5037, metadata !DIExpression()), !dbg !5041
  store i32 %qid, ptr %qid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %qid.addr, metadata !5038, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.declare(metadata ptr %retval, metadata !5039, metadata !DIExpression()), !dbg !5043
  %0 = load i32, ptr %type.addr, align 4, !dbg !5044
  %type1 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 1, !dbg !5045
  store i32 %0, ptr %type1, align 4, !dbg !5046
  %1 = load i32, ptr %type.addr, align 4, !dbg !5047
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
  ], !dbg !5048

sw.bb:                                            ; preds = %entry
  %2 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 0, !dbg !5049
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #15, !dbg !5051
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5052
  %4 = load i32, ptr %qid.addr, align 4, !dbg !5053
  %call = call i32 @make_kuid(ptr noundef %3, i32 noundef %4) #17, !dbg !5051
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !5051
  store i32 %call, ptr %coerce.dive, align 4, !dbg !5051
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2, ptr align 4 %tmp, i64 4, i1 false), !dbg !5051
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #15, !dbg !5051
  br label %sw.epilog, !dbg !5054

sw.bb2:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 0, !dbg !5055
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp3) #15, !dbg !5056
  %6 = load ptr, ptr %from.addr, align 8, !dbg !5057
  %7 = load i32, ptr %qid.addr, align 4, !dbg !5058
  %call4 = call i32 @make_kgid(ptr noundef %6, i32 noundef %7) #17, !dbg !5056
  %coerce.dive5 = getelementptr inbounds %struct.kgid_t, ptr %tmp3, i32 0, i32 0, !dbg !5056
  store i32 %call4, ptr %coerce.dive5, align 4, !dbg !5056
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %5, ptr align 4 %tmp3, i64 4, i1 false), !dbg !5056
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp3) #15, !dbg !5056
  br label %sw.epilog, !dbg !5059

sw.bb6:                                           ; preds = %entry
  %8 = getelementptr inbounds %struct.kqid, ptr %retval, i32 0, i32 0, !dbg !5060
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp7) #15, !dbg !5061
  %9 = load ptr, ptr %from.addr, align 8, !dbg !5062
  %10 = load i32, ptr %qid.addr, align 4, !dbg !5063
  %call8 = call i32 @make_kprojid(ptr noundef %9, i32 noundef %10) #17, !dbg !5061
  %coerce.dive9 = getelementptr inbounds %struct.kprojid_t, ptr %tmp7, i32 0, i32 0, !dbg !5061
  store i32 %call8, ptr %coerce.dive9, align 4, !dbg !5061
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %8, ptr align 4 %tmp7, i64 4, i1 false), !dbg !5061
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp7) #15, !dbg !5061
  br label %sw.epilog, !dbg !5064

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !5065

do.body:                                          ; preds = %sw.default
  br label %do.body10, !dbg !5066

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !5068

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !5066

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.28, i32 114, i32 0, i64 12) #15, !dbg !5070, !srcloc !5072
  br label %do.end12, !dbg !5070

do.end12:                                         ; preds = %do.body11
  unreachable, !dbg !5066

do.end13:                                         ; No predecessors!
  br label %sw.epilog, !dbg !5073

sw.epilog:                                        ; preds = %do.end13, %sw.bb6, %sw.bb2, %sw.bb
  %11 = load i64, ptr %retval, align 4, !dbg !5074
  ret i64 %11, !dbg !5074
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5075 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !5076 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5080, metadata !DIExpression()), !dbg !5082
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5081, metadata !DIExpression()), !dbg !5083
  %0 = load i64, ptr %size.addr, align 8, !dbg !5084
  %tobool = icmp ne i64 %0, 0, !dbg !5084
  br i1 %tobool, label %if.end, label %if.then, !dbg !5086

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5088
  %cmp = icmp ule i64 %1, 8, !dbg !5090
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5091

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5092
  br label %return, !dbg !5092

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5093
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5095
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5096

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5097
  %cmp4 = icmp ule i64 %3, 96, !dbg !5098
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5099

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5100
  br label %return, !dbg !5100

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5101
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5103
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5104

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5105
  %cmp9 = icmp ule i64 %5, 192, !dbg !5106
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5107

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5108
  br label %return, !dbg !5108

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5109
  %cmp12 = icmp ule i64 %6, 8, !dbg !5111
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5112

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5114
  %cmp15 = icmp ule i64 %7, 16, !dbg !5116
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5117

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5118
  br label %return, !dbg !5118

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5119
  %cmp18 = icmp ule i64 %8, 32, !dbg !5121
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5122

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5124
  %cmp21 = icmp ule i64 %9, 64, !dbg !5126
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5127

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5129
  %cmp24 = icmp ule i64 %10, 128, !dbg !5131
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5132

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5133
  br label %return, !dbg !5133

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5134
  %cmp27 = icmp ule i64 %11, 256, !dbg !5136
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5137

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5138
  br label %return, !dbg !5138

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5139
  %cmp30 = icmp ule i64 %12, 512, !dbg !5141
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5142

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5143
  br label %return, !dbg !5143

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5144
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5146
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5147

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5148
  br label %return, !dbg !5148

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5149
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5151
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5152

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5153
  br label %return, !dbg !5153

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5154
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5156
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5157

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5158
  br label %return, !dbg !5158

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5159
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5161
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5162

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5163
  br label %return, !dbg !5163

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5164
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5166
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5167

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5168
  br label %return, !dbg !5168

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5169
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5171
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5172

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5173
  br label %return, !dbg !5173

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5174
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5176
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5177

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5178
  br label %return, !dbg !5178

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5179
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5181
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5182

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5183
  br label %return, !dbg !5183

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5184
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5186
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5187

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5188
  br label %return, !dbg !5188

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5189
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5191
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5192

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5193
  br label %return, !dbg !5193

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5194
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5196
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5197

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5198
  br label %return, !dbg !5198

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5199
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5201
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5202

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5203
  br label %return, !dbg !5203

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5204, !range !5206, !noundef !1399
  %tobool69 = trunc i8 %25 to i1, !dbg !5204
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5207

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5208

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #19, !dbg !5209, !srcloc !5212
  unreachable, !dbg !5209

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5213

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5214

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5215

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5217

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5215

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 480, i32 0, i64 12) #15, !dbg !5219, !srcloc !5221
  br label %do.end75, !dbg !5219

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5215

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5222
  br label %return, !dbg !5222

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5223
  ret i32 %26, !dbg !5223
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5224 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !5230 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5234, metadata !DIExpression()), !dbg !5236
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5235, metadata !DIExpression()), !dbg !5237
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5238
  %and = and i32 %0, 17, !dbg !5238
  %cmp = icmp eq i32 %and, 0, !dbg !5238
  %lnot = xor i1 %cmp, true, !dbg !5238
  %lnot1 = xor i1 %lnot, true, !dbg !5238
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5238
  %conv = sext i32 %lnot.ext to i64, !dbg !5238
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5238
  %tobool = icmp ne i64 %expval, 0, !dbg !5238
  br i1 %tobool, label %if.then, label %if.end, !dbg !5240

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5241
  br label %return, !dbg !5241

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5242
  %and2 = and i32 %1, 1, !dbg !5244
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5244
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5245

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5246
  br label %return, !dbg !5246

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5247
  br label %return, !dbg !5247

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5249
  ret i32 %2, !dbg !5249
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5250 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5251 dso_local void @__compiletime_assert_245() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_insert_tree(ptr noundef %info, ptr noundef %dquot, ptr noundef %blks, i32 noundef %depth) #0 align 16 !dbg !5252 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blks.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %newson = alloca i32, align 4
  %newact = alloca i32, align 4
  %ref = alloca ptr, align 8
  %newblk = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5254, metadata !DIExpression()), !dbg !5266
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !5255, metadata !DIExpression()), !dbg !5267
  store ptr %blks, ptr %blks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blks.addr, metadata !5256, metadata !DIExpression()), !dbg !5268
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !5257, metadata !DIExpression()), !dbg !5269
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5258, metadata !DIExpression()), !dbg !5271
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5272
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !5273
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !5273
  %conv = zext i32 %1 to i64, !dbg !5272
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !5274
  store ptr %call, ptr %buf, align 8, !dbg !5271
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5275
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5259, metadata !DIExpression()), !dbg !5276
  store i32 0, ptr %ret, align 4, !dbg !5276
  call void @llvm.lifetime.start.p0(i64 4, ptr %newson) #15, !dbg !5275
  call void @llvm.dbg.declare(metadata ptr %newson, metadata !5260, metadata !DIExpression()), !dbg !5277
  store i32 0, ptr %newson, align 4, !dbg !5277
  call void @llvm.lifetime.start.p0(i64 4, ptr %newact) #15, !dbg !5275
  call void @llvm.dbg.declare(metadata ptr %newact, metadata !5261, metadata !DIExpression()), !dbg !5278
  store i32 0, ptr %newact, align 4, !dbg !5278
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #15, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !5262, metadata !DIExpression()), !dbg !5280
  call void @llvm.lifetime.start.p0(i64 4, ptr %newblk) #15, !dbg !5281
  call void @llvm.dbg.declare(metadata ptr %newblk, metadata !5263, metadata !DIExpression()), !dbg !5282
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5283
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5264, metadata !DIExpression()), !dbg !5284
  %2 = load ptr, ptr %buf, align 8, !dbg !5285
  %tobool = icmp ne ptr %2, null, !dbg !5285
  br i1 %tobool, label %if.end, label %if.then, !dbg !5287

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5288

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %blks.addr, align 8, !dbg !5289
  %4 = load i32, ptr %depth.addr, align 4, !dbg !5291
  %idxprom = sext i32 %4 to i64, !dbg !5289
  %arrayidx = getelementptr i32, ptr %3, i64 %idxprom, !dbg !5289
  %5 = load i32, ptr %arrayidx, align 4, !dbg !5289
  %tobool1 = icmp ne i32 %5, 0, !dbg !5289
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !5292

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5293
  %call3 = call i32 @get_free_dqblk(ptr noundef %6) #17, !dbg !5295
  store i32 %call3, ptr %ret, align 4, !dbg !5296
  %7 = load i32, ptr %ret, align 4, !dbg !5297
  %cmp = icmp slt i32 %7, 0, !dbg !5299
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5300

if.then5:                                         ; preds = %if.then2
  br label %out_buf, !dbg !5301

if.end6:                                          ; preds = %if.then2
  store i32 0, ptr %i, align 4, !dbg !5302
  br label %for.cond, !dbg !5304

for.cond:                                         ; preds = %for.inc, %if.end6
  %8 = load i32, ptr %i, align 4, !dbg !5305
  %9 = load i32, ptr %depth.addr, align 4, !dbg !5307
  %cmp7 = icmp slt i32 %8, %9, !dbg !5308
  br i1 %cmp7, label %for.body, label %for.end, !dbg !5309

for.body:                                         ; preds = %for.cond
  %10 = load i32, ptr %ret, align 4, !dbg !5310
  %11 = load ptr, ptr %blks.addr, align 8, !dbg !5312
  %12 = load i32, ptr %i, align 4, !dbg !5313
  %idxprom9 = sext i32 %12 to i64, !dbg !5312
  %arrayidx10 = getelementptr i32, ptr %11, i64 %idxprom9, !dbg !5312
  %13 = load i32, ptr %arrayidx10, align 4, !dbg !5312
  %cmp11 = icmp eq i32 %10, %13, !dbg !5314
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !5315

if.then13:                                        ; preds = %for.body
  %14 = load ptr, ptr %dquot.addr, align 8, !dbg !5316
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %14, i32 0, i32 7, !dbg !5316
  %15 = load ptr, ptr %dq_sb, align 8, !dbg !5316
  %16 = load i32, ptr %ret, align 4, !dbg !5316
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %15, ptr noundef @__func__.do_insert_tree, ptr noundef @.str.8, i32 noundef %16) #17, !dbg !5316
  store i32 -5, ptr %ret, align 4, !dbg !5318
  br label %out_buf, !dbg !5319

if.end14:                                         ; preds = %for.body
  br label %for.inc, !dbg !5320

for.inc:                                          ; preds = %if.end14
  %17 = load i32, ptr %i, align 4, !dbg !5321
  %inc = add i32 %17, 1, !dbg !5321
  store i32 %inc, ptr %i, align 4, !dbg !5321
  br label %for.cond, !dbg !5322, !llvm.loop !5323

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %ret, align 4, !dbg !5325
  %19 = load ptr, ptr %blks.addr, align 8, !dbg !5326
  %20 = load i32, ptr %depth.addr, align 4, !dbg !5327
  %idxprom15 = sext i32 %20 to i64, !dbg !5326
  %arrayidx16 = getelementptr i32, ptr %19, i64 %idxprom15, !dbg !5326
  store i32 %18, ptr %arrayidx16, align 4, !dbg !5328
  %21 = load ptr, ptr %buf, align 8, !dbg !5329
  %22 = load ptr, ptr %info.addr, align 8, !dbg !5330
  %dqi_usable_bs17 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %22, i32 0, i32 7, !dbg !5331
  %23 = load i32, ptr %dqi_usable_bs17, align 8, !dbg !5331
  %conv18 = zext i32 %23 to i64, !dbg !5330
  call void @llvm.memset.p0.i64(ptr align 1 %21, i8 0, i64 %conv18, i1 false), !dbg !5332
  store i32 1, ptr %newact, align 4, !dbg !5333
  br label %if.end30, !dbg !5334

if.else:                                          ; preds = %if.end
  %24 = load ptr, ptr %info.addr, align 8, !dbg !5335
  %25 = load ptr, ptr %blks.addr, align 8, !dbg !5337
  %26 = load i32, ptr %depth.addr, align 4, !dbg !5338
  %idxprom19 = sext i32 %26 to i64, !dbg !5337
  %arrayidx20 = getelementptr i32, ptr %25, i64 %idxprom19, !dbg !5337
  %27 = load i32, ptr %arrayidx20, align 4, !dbg !5337
  %28 = load ptr, ptr %buf, align 8, !dbg !5339
  %call21 = call i64 @read_blk(ptr noundef %24, i32 noundef %27, ptr noundef %28) #17, !dbg !5340
  %conv22 = trunc i64 %call21 to i32, !dbg !5340
  store i32 %conv22, ptr %ret, align 4, !dbg !5341
  %29 = load i32, ptr %ret, align 4, !dbg !5342
  %cmp23 = icmp slt i32 %29, 0, !dbg !5344
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !5345

if.then25:                                        ; preds = %if.else
  %30 = load ptr, ptr %dquot.addr, align 8, !dbg !5346
  %dq_sb26 = getelementptr inbounds %struct.dquot, ptr %30, i32 0, i32 7, !dbg !5346
  %31 = load ptr, ptr %dq_sb26, align 8, !dbg !5346
  %32 = load ptr, ptr %blks.addr, align 8, !dbg !5346
  %33 = load i32, ptr %depth.addr, align 4, !dbg !5346
  %idxprom27 = sext i32 %33 to i64, !dbg !5346
  %arrayidx28 = getelementptr i32, ptr %32, i64 %idxprom27, !dbg !5346
  %34 = load i32, ptr %arrayidx28, align 4, !dbg !5346
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %31, ptr noundef @__func__.do_insert_tree, ptr noundef @.str.9, i32 noundef %34) #17, !dbg !5346
  br label %out_buf, !dbg !5348

if.end29:                                         ; preds = %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %for.end
  %35 = load ptr, ptr %buf, align 8, !dbg !5349
  store ptr %35, ptr %ref, align 8, !dbg !5350
  %36 = load ptr, ptr %ref, align 8, !dbg !5351
  %37 = load ptr, ptr %info.addr, align 8, !dbg !5351
  %38 = load ptr, ptr %dquot.addr, align 8, !dbg !5351
  %dq_id = getelementptr inbounds %struct.dquot, ptr %38, i32 0, i32 8, !dbg !5351
  %39 = load i32, ptr %depth.addr, align 4, !dbg !5351
  %40 = load i64, ptr %dq_id, align 8, !dbg !5351
  %call31 = call i32 @get_index(ptr noundef %37, i64 %40, i32 noundef %39) #17, !dbg !5351
  %idxprom32 = sext i32 %call31 to i64, !dbg !5351
  %arrayidx33 = getelementptr i32, ptr %36, i64 %idxprom32, !dbg !5351
  %41 = load i32, ptr %arrayidx33, align 4, !dbg !5351
  store i32 %41, ptr %newblk, align 4, !dbg !5352
  %42 = load ptr, ptr %dquot.addr, align 8, !dbg !5353
  %dq_sb34 = getelementptr inbounds %struct.dquot, ptr %42, i32 0, i32 7, !dbg !5354
  %43 = load ptr, ptr %dq_sb34, align 8, !dbg !5354
  %44 = load i32, ptr %newblk, align 4, !dbg !5355
  %45 = load ptr, ptr %info.addr, align 8, !dbg !5356
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %45, i32 0, i32 2, !dbg !5357
  %46 = load i32, ptr %dqi_blocks, align 4, !dbg !5357
  %sub = sub i32 %46, 1, !dbg !5358
  %call35 = call i32 @do_check_range(ptr noundef %43, ptr noundef @.str.10, i32 noundef %44, i32 noundef 0, i32 noundef %sub) #17, !dbg !5359
  store i32 %call35, ptr %ret, align 4, !dbg !5360
  %47 = load i32, ptr %ret, align 4, !dbg !5361
  %tobool36 = icmp ne i32 %47, 0, !dbg !5361
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !5363

if.then37:                                        ; preds = %if.end30
  br label %out_buf, !dbg !5364

if.end38:                                         ; preds = %if.end30
  %48 = load i32, ptr %newblk, align 4, !dbg !5365
  %tobool39 = icmp ne i32 %48, 0, !dbg !5365
  br i1 %tobool39, label %if.else41, label %if.then40, !dbg !5367

if.then40:                                        ; preds = %if.end38
  store i32 1, ptr %newson, align 4, !dbg !5368
  br label %if.end60, !dbg !5370

if.else41:                                        ; preds = %if.end38
  store i32 0, ptr %i, align 4, !dbg !5371
  br label %for.cond42, !dbg !5374

for.cond42:                                       ; preds = %for.inc57, %if.else41
  %49 = load i32, ptr %i, align 4, !dbg !5375
  %50 = load i32, ptr %depth.addr, align 4, !dbg !5377
  %cmp43 = icmp sle i32 %49, %50, !dbg !5378
  br i1 %cmp43, label %for.body45, label %for.end59, !dbg !5379

for.body45:                                       ; preds = %for.cond42
  %51 = load i32, ptr %newblk, align 4, !dbg !5380
  %52 = load ptr, ptr %blks.addr, align 8, !dbg !5382
  %53 = load i32, ptr %i, align 4, !dbg !5383
  %idxprom46 = sext i32 %53 to i64, !dbg !5382
  %arrayidx47 = getelementptr i32, ptr %52, i64 %idxprom46, !dbg !5382
  %54 = load i32, ptr %arrayidx47, align 4, !dbg !5382
  %cmp48 = icmp eq i32 %51, %54, !dbg !5384
  br i1 %cmp48, label %if.then50, label %if.end56, !dbg !5385

if.then50:                                        ; preds = %for.body45
  %55 = load ptr, ptr %dquot.addr, align 8, !dbg !5386
  %dq_sb51 = getelementptr inbounds %struct.dquot, ptr %55, i32 0, i32 7, !dbg !5386
  %56 = load ptr, ptr %dq_sb51, align 8, !dbg !5386
  %57 = load ptr, ptr %blks.addr, align 8, !dbg !5386
  %58 = load i32, ptr %depth.addr, align 4, !dbg !5386
  %idxprom52 = sext i32 %58 to i64, !dbg !5386
  %arrayidx53 = getelementptr i32, ptr %57, i64 %idxprom52, !dbg !5386
  %59 = load i32, ptr %arrayidx53, align 4, !dbg !5386
  %60 = load ptr, ptr %info.addr, align 8, !dbg !5386
  %61 = load ptr, ptr %dquot.addr, align 8, !dbg !5386
  %dq_id54 = getelementptr inbounds %struct.dquot, ptr %61, i32 0, i32 8, !dbg !5386
  %62 = load i32, ptr %depth.addr, align 4, !dbg !5386
  %63 = load i64, ptr %dq_id54, align 8, !dbg !5386
  %call55 = call i32 @get_index(ptr noundef %60, i64 %63, i32 noundef %62) #17, !dbg !5386
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %56, ptr noundef @__func__.do_insert_tree, ptr noundef @.str.11, i32 noundef %59, i32 noundef %call55) #17, !dbg !5386
  store i32 -5, ptr %ret, align 4, !dbg !5388
  br label %out_buf, !dbg !5389

if.end56:                                         ; preds = %for.body45
  br label %for.inc57, !dbg !5390

for.inc57:                                        ; preds = %if.end56
  %64 = load i32, ptr %i, align 4, !dbg !5391
  %inc58 = add i32 %64, 1, !dbg !5391
  store i32 %inc58, ptr %i, align 4, !dbg !5391
  br label %for.cond42, !dbg !5392, !llvm.loop !5393

for.end59:                                        ; preds = %for.cond42
  br label %if.end60

if.end60:                                         ; preds = %for.end59, %if.then40
  %65 = load i32, ptr %newblk, align 4, !dbg !5395
  %66 = load ptr, ptr %blks.addr, align 8, !dbg !5396
  %67 = load i32, ptr %depth.addr, align 4, !dbg !5397
  %add = add i32 %67, 1, !dbg !5398
  %idxprom61 = sext i32 %add to i64, !dbg !5396
  %arrayidx62 = getelementptr i32, ptr %66, i64 %idxprom61, !dbg !5396
  store i32 %65, ptr %arrayidx62, align 4, !dbg !5399
  %68 = load i32, ptr %depth.addr, align 4, !dbg !5400
  %69 = load ptr, ptr %info.addr, align 8, !dbg !5402
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %69, i32 0, i32 8, !dbg !5403
  %70 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !5403
  %sub63 = sub i32 %70, 1, !dbg !5404
  %cmp64 = icmp eq i32 %68, %sub63, !dbg !5405
  br i1 %cmp64, label %if.then66, label %if.else79, !dbg !5406

if.then66:                                        ; preds = %if.end60
  %71 = load i32, ptr %newblk, align 4, !dbg !5407
  %tobool67 = icmp ne i32 %71, 0, !dbg !5407
  br i1 %tobool67, label %if.then68, label %if.end74, !dbg !5410

if.then68:                                        ; preds = %if.then66
  %72 = load ptr, ptr %dquot.addr, align 8, !dbg !5411
  %dq_sb69 = getelementptr inbounds %struct.dquot, ptr %72, i32 0, i32 7, !dbg !5411
  %73 = load ptr, ptr %dq_sb69, align 8, !dbg !5411
  %74 = load ptr, ptr %ref, align 8, !dbg !5411
  %75 = load ptr, ptr %info.addr, align 8, !dbg !5411
  %76 = load ptr, ptr %dquot.addr, align 8, !dbg !5411
  %dq_id70 = getelementptr inbounds %struct.dquot, ptr %76, i32 0, i32 8, !dbg !5411
  %77 = load i32, ptr %depth.addr, align 4, !dbg !5411
  %78 = load i64, ptr %dq_id70, align 8, !dbg !5411
  %call71 = call i32 @get_index(ptr noundef %75, i64 %78, i32 noundef %77) #17, !dbg !5411
  %idxprom72 = sext i32 %call71 to i64, !dbg !5411
  %arrayidx73 = getelementptr i32, ptr %74, i64 %idxprom72, !dbg !5411
  %79 = load i32, ptr %arrayidx73, align 4, !dbg !5411
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %73, ptr noundef @__func__.do_insert_tree, ptr noundef @.str.12, i32 noundef %79) #17, !dbg !5411
  store i32 -5, ptr %ret, align 4, !dbg !5413
  br label %out_buf, !dbg !5414

if.end74:                                         ; preds = %if.then66
  %80 = load ptr, ptr %info.addr, align 8, !dbg !5415
  %81 = load ptr, ptr %dquot.addr, align 8, !dbg !5416
  %call75 = call i32 @find_free_dqentry(ptr noundef %80, ptr noundef %81, ptr noundef %ret) #17, !dbg !5417
  %82 = load ptr, ptr %blks.addr, align 8, !dbg !5418
  %83 = load i32, ptr %depth.addr, align 4, !dbg !5419
  %add76 = add i32 %83, 1, !dbg !5420
  %idxprom77 = sext i32 %add76 to i64, !dbg !5418
  %arrayidx78 = getelementptr i32, ptr %82, i64 %idxprom77, !dbg !5418
  store i32 %call75, ptr %arrayidx78, align 4, !dbg !5421
  br label %if.end82, !dbg !5422

if.else79:                                        ; preds = %if.end60
  %84 = load ptr, ptr %info.addr, align 8, !dbg !5423
  %85 = load ptr, ptr %dquot.addr, align 8, !dbg !5425
  %86 = load ptr, ptr %blks.addr, align 8, !dbg !5426
  %87 = load i32, ptr %depth.addr, align 4, !dbg !5427
  %add80 = add i32 %87, 1, !dbg !5428
  %call81 = call i32 @do_insert_tree(ptr noundef %84, ptr noundef %85, ptr noundef %86, i32 noundef %add80) #17, !dbg !5429
  store i32 %call81, ptr %ret, align 4, !dbg !5430
  br label %if.end82

if.end82:                                         ; preds = %if.else79, %if.end74
  %88 = load i32, ptr %newson, align 4, !dbg !5431
  %tobool83 = icmp ne i32 %88, 0, !dbg !5431
  br i1 %tobool83, label %land.lhs.true, label %if.else98, !dbg !5433

land.lhs.true:                                    ; preds = %if.end82
  %89 = load i32, ptr %ret, align 4, !dbg !5434
  %cmp84 = icmp sge i32 %89, 0, !dbg !5435
  br i1 %cmp84, label %if.then86, label %if.else98, !dbg !5436

if.then86:                                        ; preds = %land.lhs.true
  %90 = load ptr, ptr %blks.addr, align 8, !dbg !5437
  %91 = load i32, ptr %depth.addr, align 4, !dbg !5437
  %add87 = add i32 %91, 1, !dbg !5437
  %idxprom88 = sext i32 %add87 to i64, !dbg !5437
  %arrayidx89 = getelementptr i32, ptr %90, i64 %idxprom88, !dbg !5437
  %92 = load i32, ptr %arrayidx89, align 4, !dbg !5437
  %93 = load ptr, ptr %ref, align 8, !dbg !5439
  %94 = load ptr, ptr %info.addr, align 8, !dbg !5440
  %95 = load ptr, ptr %dquot.addr, align 8, !dbg !5441
  %dq_id90 = getelementptr inbounds %struct.dquot, ptr %95, i32 0, i32 8, !dbg !5442
  %96 = load i32, ptr %depth.addr, align 4, !dbg !5443
  %97 = load i64, ptr %dq_id90, align 8, !dbg !5444
  %call91 = call i32 @get_index(ptr noundef %94, i64 %97, i32 noundef %96) #17, !dbg !5444
  %idxprom92 = sext i32 %call91 to i64, !dbg !5439
  %arrayidx93 = getelementptr i32, ptr %93, i64 %idxprom92, !dbg !5439
  store i32 %92, ptr %arrayidx93, align 4, !dbg !5445
  %98 = load ptr, ptr %info.addr, align 8, !dbg !5446
  %99 = load ptr, ptr %blks.addr, align 8, !dbg !5447
  %100 = load i32, ptr %depth.addr, align 4, !dbg !5448
  %idxprom94 = sext i32 %100 to i64, !dbg !5447
  %arrayidx95 = getelementptr i32, ptr %99, i64 %idxprom94, !dbg !5447
  %101 = load i32, ptr %arrayidx95, align 4, !dbg !5447
  %102 = load ptr, ptr %buf, align 8, !dbg !5449
  %call96 = call i64 @write_blk(ptr noundef %98, i32 noundef %101, ptr noundef %102) #17, !dbg !5450
  %conv97 = trunc i64 %call96 to i32, !dbg !5450
  store i32 %conv97, ptr %ret, align 4, !dbg !5451
  br label %if.end108, !dbg !5452

if.else98:                                        ; preds = %land.lhs.true, %if.end82
  %103 = load i32, ptr %newact, align 4, !dbg !5453
  %tobool99 = icmp ne i32 %103, 0, !dbg !5453
  br i1 %tobool99, label %land.lhs.true100, label %if.end107, !dbg !5455

land.lhs.true100:                                 ; preds = %if.else98
  %104 = load i32, ptr %ret, align 4, !dbg !5456
  %cmp101 = icmp slt i32 %104, 0, !dbg !5457
  br i1 %cmp101, label %if.then103, label %if.end107, !dbg !5458

if.then103:                                       ; preds = %land.lhs.true100
  %105 = load ptr, ptr %info.addr, align 8, !dbg !5459
  %106 = load ptr, ptr %buf, align 8, !dbg !5461
  %107 = load ptr, ptr %blks.addr, align 8, !dbg !5462
  %108 = load i32, ptr %depth.addr, align 4, !dbg !5463
  %idxprom104 = sext i32 %108 to i64, !dbg !5462
  %arrayidx105 = getelementptr i32, ptr %107, i64 %idxprom104, !dbg !5462
  %109 = load i32, ptr %arrayidx105, align 4, !dbg !5462
  %call106 = call i32 @put_free_dqblk(ptr noundef %105, ptr noundef %106, i32 noundef %109) #17, !dbg !5464
  br label %if.end107, !dbg !5465

if.end107:                                        ; preds = %if.then103, %land.lhs.true100, %if.else98
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.then86
  br label %out_buf, !dbg !5466

out_buf:                                          ; preds = %if.end108, %if.then68, %if.then50, %if.then37, %if.then25, %if.then13, %if.then5
  call void @llvm.dbg.label(metadata !5265), !dbg !5467
  %110 = load ptr, ptr %buf, align 8, !dbg !5468
  call void @kfree(ptr noundef %110) #17, !dbg !5469
  %111 = load i32, ptr %ret, align 4, !dbg !5470
  store i32 %111, ptr %retval, align 4, !dbg !5471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5471

cleanup:                                          ; preds = %out_buf, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 4, ptr %newblk) #15, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #15, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 4, ptr %newact) #15, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 4, ptr %newson) #15, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5472
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5472
  %112 = load i32, ptr %retval, align 4, !dbg !5472
  ret i32 %112, !dbg !5472
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_free_dqblk(ptr noundef %info) #0 align 16 !dbg !5473 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %dh = alloca ptr, align 8
  %ret = alloca i32, align 4
  %blk = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5477, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5478, metadata !DIExpression()), !dbg !5485
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5486
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !5487
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !5487
  %conv = zext i32 %1 to i64, !dbg !5486
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !5488
  store ptr %call, ptr %buf, align 8, !dbg !5485
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #15, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %dh, metadata !5479, metadata !DIExpression()), !dbg !5490
  %2 = load ptr, ptr %buf, align 8, !dbg !5491
  store ptr %2, ptr %dh, align 8, !dbg !5490
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5480, metadata !DIExpression()), !dbg !5493
  call void @llvm.lifetime.start.p0(i64 4, ptr %blk) #15, !dbg !5492
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !5481, metadata !DIExpression()), !dbg !5494
  %3 = load ptr, ptr %buf, align 8, !dbg !5495
  %tobool = icmp ne ptr %3, null, !dbg !5495
  br i1 %tobool, label %if.end, label %if.then, !dbg !5497

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5498

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !5499
  %dqi_free_blk = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %4, i32 0, i32 3, !dbg !5501
  %5 = load i32, ptr %dqi_free_blk, align 8, !dbg !5501
  %tobool1 = icmp ne i32 %5, 0, !dbg !5499
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5502

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5503
  %dqi_free_blk3 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %6, i32 0, i32 3, !dbg !5505
  %7 = load i32, ptr %dqi_free_blk3, align 8, !dbg !5505
  store i32 %7, ptr %blk, align 4, !dbg !5506
  %8 = load ptr, ptr %info.addr, align 8, !dbg !5507
  %9 = load i32, ptr %blk, align 4, !dbg !5508
  %10 = load ptr, ptr %buf, align 8, !dbg !5509
  %call4 = call i64 @read_blk(ptr noundef %8, i32 noundef %9, ptr noundef %10) #17, !dbg !5510
  %conv5 = trunc i64 %call4 to i32, !dbg !5510
  store i32 %conv5, ptr %ret, align 4, !dbg !5511
  %11 = load i32, ptr %ret, align 4, !dbg !5512
  %cmp = icmp slt i32 %11, 0, !dbg !5514
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !5515

if.then7:                                         ; preds = %if.then2
  br label %out_buf, !dbg !5516

if.end8:                                          ; preds = %if.then2
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5517
  %13 = load ptr, ptr %dh, align 8, !dbg !5518
  %call9 = call i32 @check_dquot_block_header(ptr noundef %12, ptr noundef %13) #17, !dbg !5519
  store i32 %call9, ptr %ret, align 4, !dbg !5520
  %14 = load i32, ptr %ret, align 4, !dbg !5521
  %tobool10 = icmp ne i32 %14, 0, !dbg !5521
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5523

if.then11:                                        ; preds = %if.end8
  br label %out_buf, !dbg !5524

if.end12:                                         ; preds = %if.end8
  %15 = load ptr, ptr %dh, align 8, !dbg !5525
  %dqdh_next_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %15, i32 0, i32 0, !dbg !5525
  %16 = load i32, ptr %dqdh_next_free, align 4, !dbg !5525
  %17 = load ptr, ptr %info.addr, align 8, !dbg !5526
  %dqi_free_blk13 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %17, i32 0, i32 3, !dbg !5527
  store i32 %16, ptr %dqi_free_blk13, align 8, !dbg !5528
  br label %if.end23, !dbg !5529

if.else:                                          ; preds = %if.end
  %18 = load ptr, ptr %buf, align 8, !dbg !5530
  %19 = load ptr, ptr %info.addr, align 8, !dbg !5532
  %dqi_usable_bs14 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %19, i32 0, i32 7, !dbg !5533
  %20 = load i32, ptr %dqi_usable_bs14, align 8, !dbg !5533
  %conv15 = zext i32 %20 to i64, !dbg !5532
  call void @llvm.memset.p0.i64(ptr align 1 %18, i8 0, i64 %conv15, i1 false), !dbg !5534
  %21 = load ptr, ptr %info.addr, align 8, !dbg !5535
  %22 = load ptr, ptr %info.addr, align 8, !dbg !5536
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %22, i32 0, i32 2, !dbg !5537
  %23 = load i32, ptr %dqi_blocks, align 4, !dbg !5537
  %24 = load ptr, ptr %buf, align 8, !dbg !5538
  %call16 = call i64 @write_blk(ptr noundef %21, i32 noundef %23, ptr noundef %24) #17, !dbg !5539
  %conv17 = trunc i64 %call16 to i32, !dbg !5539
  store i32 %conv17, ptr %ret, align 4, !dbg !5540
  %25 = load i32, ptr %ret, align 4, !dbg !5541
  %cmp18 = icmp slt i32 %25, 0, !dbg !5543
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !5544

if.then20:                                        ; preds = %if.else
  br label %out_buf, !dbg !5545

if.end21:                                         ; preds = %if.else
  %26 = load ptr, ptr %info.addr, align 8, !dbg !5546
  %dqi_blocks22 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %26, i32 0, i32 2, !dbg !5547
  %27 = load i32, ptr %dqi_blocks22, align 4, !dbg !5548
  %inc = add i32 %27, 1, !dbg !5548
  store i32 %inc, ptr %dqi_blocks22, align 4, !dbg !5548
  store i32 %27, ptr %blk, align 4, !dbg !5549
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end12
  %28 = load ptr, ptr %info.addr, align 8, !dbg !5550
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %28, i32 0, i32 0, !dbg !5551
  %29 = load ptr, ptr %dqi_sb, align 8, !dbg !5551
  %30 = load ptr, ptr %info.addr, align 8, !dbg !5552
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %30, i32 0, i32 1, !dbg !5553
  %31 = load i32, ptr %dqi_type, align 8, !dbg !5553
  call void @mark_info_dirty(ptr noundef %29, i32 noundef %31) #17, !dbg !5554
  %32 = load i32, ptr %blk, align 4, !dbg !5555
  store i32 %32, ptr %ret, align 4, !dbg !5556
  br label %out_buf, !dbg !5557

out_buf:                                          ; preds = %if.end23, %if.then20, %if.then11, %if.then7
  call void @llvm.dbg.label(metadata !5482), !dbg !5558
  %33 = load ptr, ptr %buf, align 8, !dbg !5559
  call void @kfree(ptr noundef %33) #17, !dbg !5560
  %34 = load i32, ptr %ret, align 4, !dbg !5561
  store i32 %34, ptr %retval, align 4, !dbg !5562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5562

cleanup:                                          ; preds = %out_buf, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %blk) #15, !dbg !5563
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5563
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #15, !dbg !5563
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5563
  %35 = load i32, ptr %retval, align 4, !dbg !5563
  ret i32 %35, !dbg !5563
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @read_blk(ptr noundef %info, i32 noundef %blk, ptr noundef %buf) #0 align 16 !dbg !5564 {
entry:
  %info.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5568, metadata !DIExpression()), !dbg !5572
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !5569, metadata !DIExpression()), !dbg !5573
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5570, metadata !DIExpression()), !dbg !5574
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #15, !dbg !5575
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5571, metadata !DIExpression()), !dbg !5576
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5577
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 0, !dbg !5578
  %1 = load ptr, ptr %dqi_sb, align 8, !dbg !5578
  store ptr %1, ptr %sb, align 8, !dbg !5576
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5579
  %3 = load ptr, ptr %info.addr, align 8, !dbg !5580
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %3, i32 0, i32 7, !dbg !5581
  %4 = load i32, ptr %dqi_usable_bs, align 8, !dbg !5581
  %conv = zext i32 %4 to i64, !dbg !5580
  call void @llvm.memset.p0.i64(ptr align 1 %2, i8 0, i64 %conv, i1 false), !dbg !5582
  %5 = load ptr, ptr %sb, align 8, !dbg !5583
  %s_op = getelementptr inbounds %struct.super_block, ptr %5, i32 0, i32 6, !dbg !5584
  %6 = load ptr, ptr %s_op, align 16, !dbg !5584
  %quota_read = getelementptr inbounds %struct.super_operations, ptr %6, i32 0, i32 20, !dbg !5585
  %7 = load ptr, ptr %quota_read, align 8, !dbg !5585
  %8 = load ptr, ptr %sb, align 8, !dbg !5586
  %9 = load ptr, ptr %info.addr, align 8, !dbg !5587
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %9, i32 0, i32 1, !dbg !5588
  %10 = load i32, ptr %dqi_type, align 8, !dbg !5588
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !5589
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5590
  %dqi_usable_bs1 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %12, i32 0, i32 7, !dbg !5591
  %13 = load i32, ptr %dqi_usable_bs1, align 8, !dbg !5591
  %conv2 = zext i32 %13 to i64, !dbg !5590
  %14 = load i32, ptr %blk.addr, align 4, !dbg !5592
  %conv3 = zext i32 %14 to i64, !dbg !5593
  %15 = load ptr, ptr %info.addr, align 8, !dbg !5594
  %dqi_blocksize_bits = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %15, i32 0, i32 5, !dbg !5595
  %16 = load i32, ptr %dqi_blocksize_bits, align 8, !dbg !5595
  %sh_prom = zext i32 %16 to i64, !dbg !5596
  %shl = shl i64 %conv3, %sh_prom, !dbg !5596
  %call = call i64 %7(ptr noundef %8, i32 noundef %10, ptr noundef %11, i64 noundef %conv2, i64 noundef %shl) #17, !dbg !5583
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #15, !dbg !5597
  ret i64 %call, !dbg !5598
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_index(ptr noundef %info, i64 %qid.coerce, i32 noundef %depth) #0 align 16 !dbg !5599 {
entry:
  %qid = alloca %struct.kqid, align 4
  %info.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %id = alloca i32, align 4
  store i64 %qid.coerce, ptr %qid, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5603, metadata !DIExpression()), !dbg !5607
  call void @llvm.dbg.declare(metadata ptr %qid, metadata !5604, metadata !DIExpression()), !dbg !5608
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !5605, metadata !DIExpression()), !dbg !5609
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #15, !dbg !5610
  call void @llvm.dbg.declare(metadata ptr %id, metadata !5606, metadata !DIExpression()), !dbg !5611
  %0 = load i64, ptr %qid, align 4, !dbg !5612
  %call = call i32 @from_kqid(ptr noundef @init_user_ns, i64 %0) #17, !dbg !5612
  store i32 %call, ptr %id, align 4, !dbg !5611
  %1 = load ptr, ptr %info.addr, align 8, !dbg !5613
  %2 = load i32, ptr %id, align 4, !dbg !5614
  %3 = load i32, ptr %depth.addr, align 4, !dbg !5615
  %call1 = call i32 @__get_index(ptr noundef %1, i32 noundef %2, i32 noundef %3) #17, !dbg !5616
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #15, !dbg !5617
  ret i32 %call1, !dbg !5618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_check_range(ptr noundef %sb, ptr noundef %val_name, i32 noundef %val, i32 noundef %min_val, i32 noundef %max_val) #4 align 16 !dbg !5619 {
entry:
  %retval = alloca i32, align 4
  %sb.addr = alloca ptr, align 8
  %val_name.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %min_val.addr = alloca i32, align 4
  %max_val.addr = alloca i32, align 4
  store ptr %sb, ptr %sb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sb.addr, metadata !5623, metadata !DIExpression()), !dbg !5628
  store ptr %val_name, ptr %val_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val_name.addr, metadata !5624, metadata !DIExpression()), !dbg !5629
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5625, metadata !DIExpression()), !dbg !5630
  store i32 %min_val, ptr %min_val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min_val.addr, metadata !5626, metadata !DIExpression()), !dbg !5631
  store i32 %max_val, ptr %max_val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_val.addr, metadata !5627, metadata !DIExpression()), !dbg !5632
  %0 = load i32, ptr %val.addr, align 4, !dbg !5633
  %1 = load i32, ptr %min_val.addr, align 4, !dbg !5635
  %cmp = icmp ult i32 %0, %1, !dbg !5636
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5637

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %val.addr, align 4, !dbg !5638
  %3 = load i32, ptr %max_val.addr, align 4, !dbg !5639
  %cmp1 = icmp ugt i32 %2, %3, !dbg !5640
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5641

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %sb.addr, align 8, !dbg !5642
  %5 = load ptr, ptr %val_name.addr, align 8, !dbg !5642
  %6 = load i32, ptr %val.addr, align 4, !dbg !5642
  %7 = load i32, ptr %min_val.addr, align 4, !dbg !5642
  %8 = load i32, ptr %max_val.addr, align 4, !dbg !5642
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %4, ptr noundef @__func__.do_check_range, ptr noundef @.str.16, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #17, !dbg !5642
  store i32 -117, ptr %retval, align 4, !dbg !5644
  br label %return, !dbg !5644

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !5645
  br label %return, !dbg !5645

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !5646
  ret i32 %9, !dbg !5646
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @find_free_dqentry(ptr noundef %info, ptr noundef %dquot, ptr noundef %err) #0 align 16 !dbg !5647 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %err.addr = alloca ptr, align 8
  %blk = alloca i32, align 4
  %i = alloca i32, align 4
  %dh = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %ddquot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5651, metadata !DIExpression()), !dbg !5660
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !5652, metadata !DIExpression()), !dbg !5661
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !5653, metadata !DIExpression()), !dbg !5662
  call void @llvm.lifetime.start.p0(i64 4, ptr %blk) #15, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !5654, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5663
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5655, metadata !DIExpression()), !dbg !5665
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #15, !dbg !5666
  call void @llvm.dbg.declare(metadata ptr %dh, metadata !5656, metadata !DIExpression()), !dbg !5667
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !5668
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5657, metadata !DIExpression()), !dbg !5669
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5670
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !5671
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !5671
  %conv = zext i32 %1 to i64, !dbg !5670
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !5672
  store ptr %call, ptr %buf, align 8, !dbg !5669
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddquot) #15, !dbg !5673
  call void @llvm.dbg.declare(metadata ptr %ddquot, metadata !5658, metadata !DIExpression()), !dbg !5674
  %2 = load ptr, ptr %err.addr, align 8, !dbg !5675
  store i32 0, ptr %2, align 4, !dbg !5676
  %3 = load ptr, ptr %buf, align 8, !dbg !5677
  %tobool = icmp ne ptr %3, null, !dbg !5677
  br i1 %tobool, label %if.end, label %if.then, !dbg !5679

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %err.addr, align 8, !dbg !5680
  store i32 -12, ptr %4, align 4, !dbg !5682
  store i32 0, ptr %retval, align 4, !dbg !5683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5683

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf, align 8, !dbg !5684
  store ptr %5, ptr %dh, align 8, !dbg !5685
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5686
  %dqi_free_entry = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %6, i32 0, i32 4, !dbg !5688
  %7 = load i32, ptr %dqi_free_entry, align 4, !dbg !5688
  %tobool1 = icmp ne i32 %7, 0, !dbg !5686
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5689

if.then2:                                         ; preds = %if.end
  %8 = load ptr, ptr %info.addr, align 8, !dbg !5690
  %dqi_free_entry3 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %8, i32 0, i32 4, !dbg !5692
  %9 = load i32, ptr %dqi_free_entry3, align 4, !dbg !5692
  store i32 %9, ptr %blk, align 4, !dbg !5693
  %10 = load ptr, ptr %info.addr, align 8, !dbg !5694
  %11 = load i32, ptr %blk, align 4, !dbg !5695
  %12 = load ptr, ptr %buf, align 8, !dbg !5696
  %call4 = call i64 @read_blk(ptr noundef %10, i32 noundef %11, ptr noundef %12) #17, !dbg !5697
  %conv5 = trunc i64 %call4 to i32, !dbg !5697
  %13 = load ptr, ptr %err.addr, align 8, !dbg !5698
  store i32 %conv5, ptr %13, align 4, !dbg !5699
  %14 = load ptr, ptr %err.addr, align 8, !dbg !5700
  %15 = load i32, ptr %14, align 4, !dbg !5702
  %cmp = icmp slt i32 %15, 0, !dbg !5703
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !5704

if.then7:                                         ; preds = %if.then2
  br label %out_buf, !dbg !5705

if.end8:                                          ; preds = %if.then2
  %16 = load ptr, ptr %info.addr, align 8, !dbg !5706
  %17 = load ptr, ptr %dh, align 8, !dbg !5707
  %call9 = call i32 @check_dquot_block_header(ptr noundef %16, ptr noundef %17) #17, !dbg !5708
  %18 = load ptr, ptr %err.addr, align 8, !dbg !5709
  store i32 %call9, ptr %18, align 4, !dbg !5710
  %19 = load ptr, ptr %err.addr, align 8, !dbg !5711
  %20 = load i32, ptr %19, align 4, !dbg !5713
  %tobool10 = icmp ne i32 %20, 0, !dbg !5713
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !5714

if.then11:                                        ; preds = %if.end8
  br label %out_buf, !dbg !5715

if.end12:                                         ; preds = %if.end8
  br label %if.end21, !dbg !5716

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %info.addr, align 8, !dbg !5717
  %call13 = call i32 @get_free_dqblk(ptr noundef %21) #17, !dbg !5719
  store i32 %call13, ptr %blk, align 4, !dbg !5720
  %22 = load i32, ptr %blk, align 4, !dbg !5721
  %cmp14 = icmp slt i32 %22, 0, !dbg !5723
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !5724

if.then16:                                        ; preds = %if.else
  %23 = load i32, ptr %blk, align 4, !dbg !5725
  %24 = load ptr, ptr %err.addr, align 8, !dbg !5727
  store i32 %23, ptr %24, align 4, !dbg !5728
  %25 = load ptr, ptr %buf, align 8, !dbg !5729
  call void @kfree(ptr noundef %25) #17, !dbg !5730
  store i32 0, ptr %retval, align 4, !dbg !5731
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5731

if.end17:                                         ; preds = %if.else
  %26 = load ptr, ptr %buf, align 8, !dbg !5732
  %27 = load ptr, ptr %info.addr, align 8, !dbg !5733
  %dqi_usable_bs18 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %27, i32 0, i32 7, !dbg !5734
  %28 = load i32, ptr %dqi_usable_bs18, align 8, !dbg !5734
  %conv19 = zext i32 %28 to i64, !dbg !5733
  call void @llvm.memset.p0.i64(ptr align 1 %26, i8 0, i64 %conv19, i1 false), !dbg !5735
  %29 = load i32, ptr %blk, align 4, !dbg !5736
  %30 = load ptr, ptr %info.addr, align 8, !dbg !5737
  %dqi_free_entry20 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %30, i32 0, i32 4, !dbg !5738
  store i32 %29, ptr %dqi_free_entry20, align 4, !dbg !5739
  %31 = load ptr, ptr %dquot.addr, align 8, !dbg !5740
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %31, i32 0, i32 7, !dbg !5741
  %32 = load ptr, ptr %dq_sb, align 8, !dbg !5741
  %33 = load ptr, ptr %dquot.addr, align 8, !dbg !5742
  %dq_id = getelementptr inbounds %struct.dquot, ptr %33, i32 0, i32 8, !dbg !5743
  %type = getelementptr inbounds %struct.kqid, ptr %dq_id, i32 0, i32 1, !dbg !5744
  %34 = load i32, ptr %type, align 4, !dbg !5744
  call void @mark_info_dirty(ptr noundef %32, i32 noundef %34) #17, !dbg !5745
  br label %if.end21

if.end21:                                         ; preds = %if.end17, %if.end12
  %35 = load ptr, ptr %dh, align 8, !dbg !5746
  %dqdh_entries = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %35, i32 0, i32 2, !dbg !5746
  %36 = load i16, ptr %dqdh_entries, align 4, !dbg !5746
  %conv22 = zext i16 %36 to i32, !dbg !5746
  %add = add i32 %conv22, 1, !dbg !5748
  %37 = load ptr, ptr %info.addr, align 8, !dbg !5749
  %call23 = call i32 @qtree_dqstr_in_blk(ptr noundef %37) #17, !dbg !5750
  %cmp24 = icmp sge i32 %add, %call23, !dbg !5751
  br i1 %cmp24, label %if.then26, label %if.end33, !dbg !5752

if.then26:                                        ; preds = %if.end21
  %38 = load ptr, ptr %info.addr, align 8, !dbg !5753
  %39 = load ptr, ptr %buf, align 8, !dbg !5755
  %40 = load i32, ptr %blk, align 4, !dbg !5756
  %call27 = call i32 @remove_free_dqentry(ptr noundef %38, ptr noundef %39, i32 noundef %40) #17, !dbg !5757
  %41 = load ptr, ptr %err.addr, align 8, !dbg !5758
  store i32 %call27, ptr %41, align 4, !dbg !5759
  %42 = load ptr, ptr %err.addr, align 8, !dbg !5760
  %43 = load i32, ptr %42, align 4, !dbg !5762
  %cmp28 = icmp slt i32 %43, 0, !dbg !5763
  br i1 %cmp28, label %if.then30, label %if.end32, !dbg !5764

if.then30:                                        ; preds = %if.then26
  %44 = load ptr, ptr %dquot.addr, align 8, !dbg !5765
  %dq_sb31 = getelementptr inbounds %struct.dquot, ptr %44, i32 0, i32 7, !dbg !5765
  %45 = load ptr, ptr %dq_sb31, align 8, !dbg !5765
  %46 = load i32, ptr %blk, align 4, !dbg !5765
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %45, ptr noundef @__func__.find_free_dqentry, ptr noundef @.str.17, i32 noundef %46) #17, !dbg !5765
  br label %out_buf, !dbg !5767

if.end32:                                         ; preds = %if.then26
  br label %if.end33, !dbg !5768

if.end33:                                         ; preds = %if.end32, %if.end21
  %47 = load ptr, ptr %dh, align 8, !dbg !5769
  %dqdh_entries34 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %47, i32 0, i32 2, !dbg !5770
  call void @le16_add_cpu(ptr noundef %dqdh_entries34, i16 noundef zeroext 1) #17, !dbg !5771
  %48 = load ptr, ptr %buf, align 8, !dbg !5772
  %add.ptr = getelementptr i8, ptr %48, i64 16, !dbg !5773
  store ptr %add.ptr, ptr %ddquot, align 8, !dbg !5774
  store i32 0, ptr %i, align 4, !dbg !5775
  br label %for.cond, !dbg !5777

for.cond:                                         ; preds = %for.inc, %if.end33
  %49 = load i32, ptr %i, align 4, !dbg !5778
  %50 = load ptr, ptr %info.addr, align 8, !dbg !5780
  %call35 = call i32 @qtree_dqstr_in_blk(ptr noundef %50) #17, !dbg !5781
  %cmp36 = icmp ult i32 %49, %call35, !dbg !5782
  br i1 %cmp36, label %for.body, label %for.end, !dbg !5783

for.body:                                         ; preds = %for.cond
  %51 = load ptr, ptr %info.addr, align 8, !dbg !5784
  %52 = load ptr, ptr %ddquot, align 8, !dbg !5787
  %call38 = call i32 @qtree_entry_unused(ptr noundef %51, ptr noundef %52) #17, !dbg !5788
  %tobool39 = icmp ne i32 %call38, 0, !dbg !5788
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !5789

if.then40:                                        ; preds = %for.body
  br label %for.end, !dbg !5790

if.end41:                                         ; preds = %for.body
  %53 = load ptr, ptr %info.addr, align 8, !dbg !5791
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %53, i32 0, i32 6, !dbg !5792
  %54 = load i32, ptr %dqi_entry_size, align 4, !dbg !5792
  %55 = load ptr, ptr %ddquot, align 8, !dbg !5793
  %idx.ext = zext i32 %54 to i64, !dbg !5793
  %add.ptr42 = getelementptr i8, ptr %55, i64 %idx.ext, !dbg !5793
  store ptr %add.ptr42, ptr %ddquot, align 8, !dbg !5793
  br label %for.inc, !dbg !5794

for.inc:                                          ; preds = %if.end41
  %56 = load i32, ptr %i, align 4, !dbg !5795
  %inc = add i32 %56, 1, !dbg !5795
  store i32 %inc, ptr %i, align 4, !dbg !5795
  br label %for.cond, !dbg !5796, !llvm.loop !5797

for.end:                                          ; preds = %if.then40, %for.cond
  %57 = load i32, ptr %i, align 4, !dbg !5799
  %58 = load ptr, ptr %info.addr, align 8, !dbg !5801
  %call43 = call i32 @qtree_dqstr_in_blk(ptr noundef %58) #17, !dbg !5802
  %cmp44 = icmp eq i32 %57, %call43, !dbg !5803
  br i1 %cmp44, label %if.then46, label %if.end48, !dbg !5804

if.then46:                                        ; preds = %for.end
  %59 = load ptr, ptr %dquot.addr, align 8, !dbg !5805
  %dq_sb47 = getelementptr inbounds %struct.dquot, ptr %59, i32 0, i32 7, !dbg !5805
  %60 = load ptr, ptr %dq_sb47, align 8, !dbg !5805
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %60, ptr noundef @__func__.find_free_dqentry, ptr noundef @.str.18) #17, !dbg !5805
  %61 = load ptr, ptr %err.addr, align 8, !dbg !5807
  store i32 -5, ptr %61, align 4, !dbg !5808
  br label %out_buf, !dbg !5809

if.end48:                                         ; preds = %for.end
  %62 = load ptr, ptr %info.addr, align 8, !dbg !5810
  %63 = load i32, ptr %blk, align 4, !dbg !5811
  %64 = load ptr, ptr %buf, align 8, !dbg !5812
  %call49 = call i64 @write_blk(ptr noundef %62, i32 noundef %63, ptr noundef %64) #17, !dbg !5813
  %conv50 = trunc i64 %call49 to i32, !dbg !5813
  %65 = load ptr, ptr %err.addr, align 8, !dbg !5814
  store i32 %conv50, ptr %65, align 4, !dbg !5815
  %66 = load ptr, ptr %err.addr, align 8, !dbg !5816
  %67 = load i32, ptr %66, align 4, !dbg !5818
  %cmp51 = icmp slt i32 %67, 0, !dbg !5819
  br i1 %cmp51, label %if.then53, label %if.end55, !dbg !5820

if.then53:                                        ; preds = %if.end48
  %68 = load ptr, ptr %dquot.addr, align 8, !dbg !5821
  %dq_sb54 = getelementptr inbounds %struct.dquot, ptr %68, i32 0, i32 7, !dbg !5821
  %69 = load ptr, ptr %dq_sb54, align 8, !dbg !5821
  %70 = load i32, ptr %blk, align 4, !dbg !5821
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %69, ptr noundef @__func__.find_free_dqentry, ptr noundef @.str.19, i32 noundef %70) #17, !dbg !5821
  br label %out_buf, !dbg !5823

if.end55:                                         ; preds = %if.end48
  %71 = load i32, ptr %blk, align 4, !dbg !5824
  %conv56 = zext i32 %71 to i64, !dbg !5825
  %72 = load ptr, ptr %info.addr, align 8, !dbg !5826
  %dqi_blocksize_bits = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %72, i32 0, i32 5, !dbg !5827
  %73 = load i32, ptr %dqi_blocksize_bits, align 8, !dbg !5827
  %sh_prom = zext i32 %73 to i64, !dbg !5828
  %shl = shl i64 %conv56, %sh_prom, !dbg !5828
  %add57 = add i64 %shl, 16, !dbg !5829
  %74 = load i32, ptr %i, align 4, !dbg !5830
  %75 = load ptr, ptr %info.addr, align 8, !dbg !5831
  %dqi_entry_size58 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %75, i32 0, i32 6, !dbg !5832
  %76 = load i32, ptr %dqi_entry_size58, align 4, !dbg !5832
  %mul = mul i32 %74, %76, !dbg !5833
  %conv59 = zext i32 %mul to i64, !dbg !5830
  %add60 = add i64 %add57, %conv59, !dbg !5834
  %77 = load ptr, ptr %dquot.addr, align 8, !dbg !5835
  %dq_off = getelementptr inbounds %struct.dquot, ptr %77, i32 0, i32 9, !dbg !5836
  store i64 %add60, ptr %dq_off, align 8, !dbg !5837
  %78 = load ptr, ptr %buf, align 8, !dbg !5838
  call void @kfree(ptr noundef %78) #17, !dbg !5839
  %79 = load i32, ptr %blk, align 4, !dbg !5840
  store i32 %79, ptr %retval, align 4, !dbg !5841
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5841

out_buf:                                          ; preds = %if.then53, %if.then46, %if.then30, %if.then11, %if.then7
  call void @llvm.dbg.label(metadata !5659), !dbg !5842
  %80 = load ptr, ptr %buf, align 8, !dbg !5843
  call void @kfree(ptr noundef %80) #17, !dbg !5844
  store i32 0, ptr %retval, align 4, !dbg !5845
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5845

cleanup:                                          ; preds = %out_buf, %if.end55, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddquot) #15, !dbg !5846
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !5846
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #15, !dbg !5846
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5846
  call void @llvm.lifetime.end.p0(i64 4, ptr %blk) #15, !dbg !5846
  %81 = load i32, ptr %retval, align 4, !dbg !5846
  ret i32 %81, !dbg !5846
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @write_blk(ptr noundef %info, i32 noundef %blk, ptr noundef %buf) #0 align 16 !dbg !5847 {
entry:
  %info.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5849, metadata !DIExpression()), !dbg !5854
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !5850, metadata !DIExpression()), !dbg !5855
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5851, metadata !DIExpression()), !dbg !5856
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #15, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !5852, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5859
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 0, !dbg !5860
  %1 = load ptr, ptr %dqi_sb, align 8, !dbg !5860
  store ptr %1, ptr %sb, align 8, !dbg !5858
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !5861
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5853, metadata !DIExpression()), !dbg !5862
  %2 = load ptr, ptr %sb, align 8, !dbg !5863
  %s_op = getelementptr inbounds %struct.super_block, ptr %2, i32 0, i32 6, !dbg !5864
  %3 = load ptr, ptr %s_op, align 16, !dbg !5864
  %quota_write = getelementptr inbounds %struct.super_operations, ptr %3, i32 0, i32 21, !dbg !5865
  %4 = load ptr, ptr %quota_write, align 8, !dbg !5865
  %5 = load ptr, ptr %sb, align 8, !dbg !5866
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5867
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %6, i32 0, i32 1, !dbg !5868
  %7 = load i32, ptr %dqi_type, align 8, !dbg !5868
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5869
  %9 = load ptr, ptr %info.addr, align 8, !dbg !5870
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %9, i32 0, i32 7, !dbg !5871
  %10 = load i32, ptr %dqi_usable_bs, align 8, !dbg !5871
  %conv = zext i32 %10 to i64, !dbg !5870
  %11 = load i32, ptr %blk.addr, align 4, !dbg !5872
  %conv1 = zext i32 %11 to i64, !dbg !5873
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5874
  %dqi_blocksize_bits = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %12, i32 0, i32 5, !dbg !5875
  %13 = load i32, ptr %dqi_blocksize_bits, align 8, !dbg !5875
  %sh_prom = zext i32 %13 to i64, !dbg !5876
  %shl = shl i64 %conv1, %sh_prom, !dbg !5876
  %call = call i64 %4(ptr noundef %5, i32 noundef %7, ptr noundef %8, i64 noundef %conv, i64 noundef %shl) #17, !dbg !5863
  store i64 %call, ptr %ret, align 8, !dbg !5877
  %14 = load i64, ptr %ret, align 8, !dbg !5878
  %15 = load ptr, ptr %info.addr, align 8, !dbg !5880
  %dqi_usable_bs2 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %15, i32 0, i32 7, !dbg !5881
  %16 = load i32, ptr %dqi_usable_bs2, align 8, !dbg !5881
  %conv3 = zext i32 %16 to i64, !dbg !5880
  %cmp = icmp ne i64 %14, %conv3, !dbg !5882
  br i1 %cmp, label %if.then, label %if.end8, !dbg !5883

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %sb, align 8, !dbg !5884
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %17, ptr noundef @__func__.write_blk, ptr noundef @.str.1) #17, !dbg !5884
  %18 = load i64, ptr %ret, align 8, !dbg !5886
  %cmp5 = icmp sge i64 %18, 0, !dbg !5888
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !5889

if.then7:                                         ; preds = %if.then
  store i64 -5, ptr %ret, align 8, !dbg !5890
  br label %if.end, !dbg !5891

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8, !dbg !5892

if.end8:                                          ; preds = %if.end, %entry
  %19 = load i64, ptr %ret, align 8, !dbg !5893
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !5894
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #15, !dbg !5894
  ret i64 %19, !dbg !5895
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @put_free_dqblk(ptr noundef %info, ptr noundef %buf, i32 noundef %blk) #0 align 16 !dbg !5896 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %dh = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5900, metadata !DIExpression()), !dbg !5905
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5901, metadata !DIExpression()), !dbg !5906
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !5902, metadata !DIExpression()), !dbg !5907
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #15, !dbg !5908
  call void @llvm.dbg.declare(metadata ptr %dh, metadata !5903, metadata !DIExpression()), !dbg !5909
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5910
  store ptr %0, ptr %dh, align 8, !dbg !5909
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5911
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5904, metadata !DIExpression()), !dbg !5912
  %1 = load ptr, ptr %info.addr, align 8, !dbg !5913
  %dqi_free_blk = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %1, i32 0, i32 3, !dbg !5913
  %2 = load i32, ptr %dqi_free_blk, align 8, !dbg !5913
  %3 = load ptr, ptr %dh, align 8, !dbg !5914
  %dqdh_next_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %3, i32 0, i32 0, !dbg !5915
  store i32 %2, ptr %dqdh_next_free, align 4, !dbg !5916
  %4 = load ptr, ptr %dh, align 8, !dbg !5917
  %dqdh_prev_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %4, i32 0, i32 1, !dbg !5918
  store i32 0, ptr %dqdh_prev_free, align 4, !dbg !5919
  %5 = load ptr, ptr %dh, align 8, !dbg !5920
  %dqdh_entries = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %5, i32 0, i32 2, !dbg !5921
  store i16 0, ptr %dqdh_entries, align 4, !dbg !5922
  %6 = load ptr, ptr %info.addr, align 8, !dbg !5923
  %7 = load i32, ptr %blk.addr, align 4, !dbg !5924
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5925
  %call = call i64 @write_blk(ptr noundef %6, i32 noundef %7, ptr noundef %8) #17, !dbg !5926
  %conv = trunc i64 %call to i32, !dbg !5926
  store i32 %conv, ptr %err, align 4, !dbg !5927
  %9 = load i32, ptr %err, align 4, !dbg !5928
  %cmp = icmp slt i32 %9, 0, !dbg !5930
  br i1 %cmp, label %if.then, label %if.end, !dbg !5931

if.then:                                          ; preds = %entry
  %10 = load i32, ptr %err, align 4, !dbg !5932
  store i32 %10, ptr %retval, align 4, !dbg !5933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5933

if.end:                                           ; preds = %entry
  %11 = load i32, ptr %blk.addr, align 4, !dbg !5934
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5935
  %dqi_free_blk2 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %12, i32 0, i32 3, !dbg !5936
  store i32 %11, ptr %dqi_free_blk2, align 8, !dbg !5937
  %13 = load ptr, ptr %info.addr, align 8, !dbg !5938
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %13, i32 0, i32 0, !dbg !5939
  %14 = load ptr, ptr %dqi_sb, align 8, !dbg !5939
  %15 = load ptr, ptr %info.addr, align 8, !dbg !5940
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %15, i32 0, i32 1, !dbg !5941
  %16 = load i32, ptr %dqi_type, align 8, !dbg !5941
  call void @mark_info_dirty(ptr noundef %14, i32 noundef %16) #17, !dbg !5942
  store i32 0, ptr %retval, align 4, !dbg !5943
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5943

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5944
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #15, !dbg !5944
  %17 = load i32, ptr %retval, align 4, !dbg !5944
  ret i32 %17, !dbg !5944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_dquot_block_header(ptr noundef %info, ptr noundef %dh) #0 align 16 !dbg !5945 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dh.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5949, metadata !DIExpression()), !dbg !5952
  store ptr %dh, ptr %dh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dh.addr, metadata !5950, metadata !DIExpression()), !dbg !5953
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5954
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5951, metadata !DIExpression()), !dbg !5955
  store i32 0, ptr %err, align 4, !dbg !5955
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5956
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 0, !dbg !5957
  %1 = load ptr, ptr %dqi_sb, align 8, !dbg !5957
  %2 = load ptr, ptr %dh.addr, align 8, !dbg !5958
  %dqdh_next_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %2, i32 0, i32 0, !dbg !5958
  %3 = load i32, ptr %dqdh_next_free, align 4, !dbg !5958
  %4 = load ptr, ptr %info.addr, align 8, !dbg !5959
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %4, i32 0, i32 2, !dbg !5960
  %5 = load i32, ptr %dqi_blocks, align 4, !dbg !5960
  %sub = sub i32 %5, 1, !dbg !5961
  %call = call i32 @do_check_range(ptr noundef %1, ptr noundef @.str.13, i32 noundef %3, i32 noundef 0, i32 noundef %sub) #17, !dbg !5962
  store i32 %call, ptr %err, align 4, !dbg !5963
  %6 = load i32, ptr %err, align 4, !dbg !5964
  %tobool = icmp ne i32 %6, 0, !dbg !5964
  br i1 %tobool, label %if.then, label %if.end, !dbg !5966

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %err, align 4, !dbg !5967
  store i32 %7, ptr %retval, align 4, !dbg !5968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5968

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %info.addr, align 8, !dbg !5969
  %dqi_sb1 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %8, i32 0, i32 0, !dbg !5970
  %9 = load ptr, ptr %dqi_sb1, align 8, !dbg !5970
  %10 = load ptr, ptr %dh.addr, align 8, !dbg !5971
  %dqdh_prev_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %10, i32 0, i32 1, !dbg !5971
  %11 = load i32, ptr %dqdh_prev_free, align 4, !dbg !5971
  %12 = load ptr, ptr %info.addr, align 8, !dbg !5972
  %dqi_blocks2 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %12, i32 0, i32 2, !dbg !5973
  %13 = load i32, ptr %dqi_blocks2, align 4, !dbg !5973
  %sub3 = sub i32 %13, 1, !dbg !5974
  %call4 = call i32 @do_check_range(ptr noundef %9, ptr noundef @.str.14, i32 noundef %11, i32 noundef 0, i32 noundef %sub3) #17, !dbg !5975
  store i32 %call4, ptr %err, align 4, !dbg !5976
  %14 = load i32, ptr %err, align 4, !dbg !5977
  %tobool5 = icmp ne i32 %14, 0, !dbg !5977
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !5979

if.then6:                                         ; preds = %if.end
  %15 = load i32, ptr %err, align 4, !dbg !5980
  store i32 %15, ptr %retval, align 4, !dbg !5981
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5981

if.end7:                                          ; preds = %if.end
  %16 = load ptr, ptr %info.addr, align 8, !dbg !5982
  %dqi_sb8 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %16, i32 0, i32 0, !dbg !5983
  %17 = load ptr, ptr %dqi_sb8, align 8, !dbg !5983
  %18 = load ptr, ptr %dh.addr, align 8, !dbg !5984
  %dqdh_entries = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %18, i32 0, i32 2, !dbg !5984
  %19 = load i16, ptr %dqdh_entries, align 4, !dbg !5984
  %conv = zext i16 %19 to i32, !dbg !5984
  %20 = load ptr, ptr %info.addr, align 8, !dbg !5985
  %call9 = call i32 @qtree_dqstr_in_blk(ptr noundef %20) #17, !dbg !5986
  %call10 = call i32 @do_check_range(ptr noundef %17, ptr noundef @.str.15, i32 noundef %conv, i32 noundef 0, i32 noundef %call9) #17, !dbg !5987
  store i32 %call10, ptr %err, align 4, !dbg !5988
  %21 = load i32, ptr %err, align 4, !dbg !5989
  store i32 %21, ptr %retval, align 4, !dbg !5990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5990

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5991
  %22 = load i32, ptr %retval, align 4, !dbg !5991
  ret i32 %22, !dbg !5991
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5992 dso_local void @mark_info_dirty(ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @qtree_dqstr_in_blk(ptr noundef %info) #0 align 16 !dbg !5995 {
entry:
  %info.addr = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !5997, metadata !DIExpression()), !dbg !5998
  %0 = load ptr, ptr %info.addr, align 8, !dbg !5999
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !6000
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !6000
  %conv = zext i32 %1 to i64, !dbg !5999
  %sub = sub i64 %conv, 16, !dbg !6001
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6002
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %2, i32 0, i32 6, !dbg !6003
  %3 = load i32, ptr %dqi_entry_size, align 4, !dbg !6003
  %conv1 = zext i32 %3 to i64, !dbg !6002
  %div = udiv i64 %sub, %conv1, !dbg !6004
  %conv2 = trunc i64 %div to i32, !dbg !6005
  ret i32 %conv2, !dbg !6006
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_index(ptr noundef %info, i32 noundef %id, i32 noundef %depth) #0 align 16 !dbg !6007 {
entry:
  %info.addr = alloca ptr, align 8
  %id.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %epb = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6011, metadata !DIExpression()), !dbg !6015
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !6012, metadata !DIExpression()), !dbg !6016
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !6013, metadata !DIExpression()), !dbg !6017
  call void @llvm.lifetime.start.p0(i64 4, ptr %epb) #15, !dbg !6018
  call void @llvm.dbg.declare(metadata ptr %epb, metadata !6014, metadata !DIExpression()), !dbg !6019
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6020
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !6021
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !6021
  %shr = lshr i32 %1, 2, !dbg !6022
  store i32 %shr, ptr %epb, align 4, !dbg !6019
  %2 = load ptr, ptr %info.addr, align 8, !dbg !6023
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %2, i32 0, i32 8, !dbg !6024
  %3 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !6024
  %4 = load i32, ptr %depth.addr, align 4, !dbg !6025
  %sub = sub i32 %3, %4, !dbg !6026
  %sub1 = sub i32 %sub, 1, !dbg !6027
  store i32 %sub1, ptr %depth.addr, align 4, !dbg !6028
  br label %while.cond, !dbg !6029

while.cond:                                       ; preds = %while.body, %entry
  %5 = load i32, ptr %depth.addr, align 4, !dbg !6030
  %dec = add i32 %5, -1, !dbg !6030
  store i32 %dec, ptr %depth.addr, align 4, !dbg !6030
  %tobool = icmp ne i32 %5, 0, !dbg !6029
  br i1 %tobool, label %while.body, label %while.end, !dbg !6029

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %epb, align 4, !dbg !6031
  %7 = load i32, ptr %id.addr, align 4, !dbg !6032
  %div = udiv i32 %7, %6, !dbg !6032
  store i32 %div, ptr %id.addr, align 4, !dbg !6032
  br label %while.cond, !dbg !6029, !llvm.loop !6033

while.end:                                        ; preds = %while.cond
  %8 = load i32, ptr %id.addr, align 4, !dbg !6034
  %9 = load i32, ptr %epb, align 4, !dbg !6035
  %rem = urem i32 %8, %9, !dbg !6036
  call void @llvm.lifetime.end.p0(i64 4, ptr %epb) #15, !dbg !6037
  ret i32 %rem, !dbg !6038
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @remove_free_dqentry(ptr noundef %info, ptr noundef %buf, i32 noundef %blk) #0 align 16 !dbg !6039 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %tmpbuf = alloca ptr, align 8
  %dh = alloca ptr, align 8
  %nextblk = alloca i32, align 4
  %prevblk = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6041, metadata !DIExpression()), !dbg !6050
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6042, metadata !DIExpression()), !dbg !6051
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !6043, metadata !DIExpression()), !dbg !6052
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpbuf) #15, !dbg !6053
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !6044, metadata !DIExpression()), !dbg !6054
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6055
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !6056
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !6056
  %conv = zext i32 %1 to i64, !dbg !6055
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !6057
  store ptr %call, ptr %tmpbuf, align 8, !dbg !6054
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #15, !dbg !6058
  call void @llvm.dbg.declare(metadata ptr %dh, metadata !6045, metadata !DIExpression()), !dbg !6059
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6060
  store ptr %2, ptr %dh, align 8, !dbg !6059
  call void @llvm.lifetime.start.p0(i64 4, ptr %nextblk) #15, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %nextblk, metadata !6046, metadata !DIExpression()), !dbg !6062
  %3 = load ptr, ptr %dh, align 8, !dbg !6063
  %dqdh_next_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %3, i32 0, i32 0, !dbg !6063
  %4 = load i32, ptr %dqdh_next_free, align 4, !dbg !6063
  store i32 %4, ptr %nextblk, align 4, !dbg !6062
  call void @llvm.lifetime.start.p0(i64 4, ptr %prevblk) #15, !dbg !6064
  call void @llvm.dbg.declare(metadata ptr %prevblk, metadata !6047, metadata !DIExpression()), !dbg !6065
  %5 = load ptr, ptr %dh, align 8, !dbg !6066
  %dqdh_prev_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %5, i32 0, i32 1, !dbg !6066
  %6 = load i32, ptr %dqdh_prev_free, align 4, !dbg !6066
  store i32 %6, ptr %prevblk, align 4, !dbg !6065
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6067
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6048, metadata !DIExpression()), !dbg !6068
  %7 = load ptr, ptr %tmpbuf, align 8, !dbg !6069
  %tobool = icmp ne ptr %7, null, !dbg !6069
  br i1 %tobool, label %if.end, label %if.then, !dbg !6071

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6072

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %nextblk, align 4, !dbg !6073
  %tobool1 = icmp ne i32 %8, 0, !dbg !6073
  br i1 %tobool1, label %if.then2, label %if.end16, !dbg !6075

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %info.addr, align 8, !dbg !6076
  %10 = load i32, ptr %nextblk, align 4, !dbg !6078
  %11 = load ptr, ptr %tmpbuf, align 8, !dbg !6079
  %call3 = call i64 @read_blk(ptr noundef %9, i32 noundef %10, ptr noundef %11) #17, !dbg !6080
  %conv4 = trunc i64 %call3 to i32, !dbg !6080
  store i32 %conv4, ptr %err, align 4, !dbg !6081
  %12 = load i32, ptr %err, align 4, !dbg !6082
  %cmp = icmp slt i32 %12, 0, !dbg !6084
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !6085

if.then6:                                         ; preds = %if.then2
  br label %out_buf, !dbg !6086

if.end7:                                          ; preds = %if.then2
  %13 = load ptr, ptr %dh, align 8, !dbg !6087
  %dqdh_prev_free8 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %13, i32 0, i32 1, !dbg !6088
  %14 = load i32, ptr %dqdh_prev_free8, align 4, !dbg !6088
  %15 = load ptr, ptr %tmpbuf, align 8, !dbg !6089
  %dqdh_prev_free9 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %15, i32 0, i32 1, !dbg !6090
  store i32 %14, ptr %dqdh_prev_free9, align 4, !dbg !6091
  %16 = load ptr, ptr %info.addr, align 8, !dbg !6092
  %17 = load i32, ptr %nextblk, align 4, !dbg !6093
  %18 = load ptr, ptr %tmpbuf, align 8, !dbg !6094
  %call10 = call i64 @write_blk(ptr noundef %16, i32 noundef %17, ptr noundef %18) #17, !dbg !6095
  %conv11 = trunc i64 %call10 to i32, !dbg !6095
  store i32 %conv11, ptr %err, align 4, !dbg !6096
  %19 = load i32, ptr %err, align 4, !dbg !6097
  %cmp12 = icmp slt i32 %19, 0, !dbg !6099
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6100

if.then14:                                        ; preds = %if.end7
  br label %out_buf, !dbg !6101

if.end15:                                         ; preds = %if.end7
  br label %if.end16, !dbg !6102

if.end16:                                         ; preds = %if.end15, %if.end
  %20 = load i32, ptr %prevblk, align 4, !dbg !6103
  %tobool17 = icmp ne i32 %20, 0, !dbg !6103
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !6105

if.then18:                                        ; preds = %if.end16
  %21 = load ptr, ptr %info.addr, align 8, !dbg !6106
  %22 = load i32, ptr %prevblk, align 4, !dbg !6108
  %23 = load ptr, ptr %tmpbuf, align 8, !dbg !6109
  %call19 = call i64 @read_blk(ptr noundef %21, i32 noundef %22, ptr noundef %23) #17, !dbg !6110
  %conv20 = trunc i64 %call19 to i32, !dbg !6110
  store i32 %conv20, ptr %err, align 4, !dbg !6111
  %24 = load i32, ptr %err, align 4, !dbg !6112
  %cmp21 = icmp slt i32 %24, 0, !dbg !6114
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !6115

if.then23:                                        ; preds = %if.then18
  br label %out_buf, !dbg !6116

if.end24:                                         ; preds = %if.then18
  %25 = load ptr, ptr %dh, align 8, !dbg !6117
  %dqdh_next_free25 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %25, i32 0, i32 0, !dbg !6118
  %26 = load i32, ptr %dqdh_next_free25, align 4, !dbg !6118
  %27 = load ptr, ptr %tmpbuf, align 8, !dbg !6119
  %dqdh_next_free26 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %27, i32 0, i32 0, !dbg !6120
  store i32 %26, ptr %dqdh_next_free26, align 4, !dbg !6121
  %28 = load ptr, ptr %info.addr, align 8, !dbg !6122
  %29 = load i32, ptr %prevblk, align 4, !dbg !6123
  %30 = load ptr, ptr %tmpbuf, align 8, !dbg !6124
  %call27 = call i64 @write_blk(ptr noundef %28, i32 noundef %29, ptr noundef %30) #17, !dbg !6125
  %conv28 = trunc i64 %call27 to i32, !dbg !6125
  store i32 %conv28, ptr %err, align 4, !dbg !6126
  %31 = load i32, ptr %err, align 4, !dbg !6127
  %cmp29 = icmp slt i32 %31, 0, !dbg !6129
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6130

if.then31:                                        ; preds = %if.end24
  br label %out_buf, !dbg !6131

if.end32:                                         ; preds = %if.end24
  br label %if.end33, !dbg !6132

if.else:                                          ; preds = %if.end16
  %32 = load i32, ptr %nextblk, align 4, !dbg !6133
  %33 = load ptr, ptr %info.addr, align 8, !dbg !6135
  %dqi_free_entry = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %33, i32 0, i32 4, !dbg !6136
  store i32 %32, ptr %dqi_free_entry, align 4, !dbg !6137
  %34 = load ptr, ptr %info.addr, align 8, !dbg !6138
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %34, i32 0, i32 0, !dbg !6139
  %35 = load ptr, ptr %dqi_sb, align 8, !dbg !6139
  %36 = load ptr, ptr %info.addr, align 8, !dbg !6140
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %36, i32 0, i32 1, !dbg !6141
  %37 = load i32, ptr %dqi_type, align 8, !dbg !6141
  call void @mark_info_dirty(ptr noundef %35, i32 noundef %37) #17, !dbg !6142
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.end32
  %38 = load ptr, ptr %tmpbuf, align 8, !dbg !6143
  call void @kfree(ptr noundef %38) #17, !dbg !6144
  %39 = load ptr, ptr %dh, align 8, !dbg !6145
  %dqdh_prev_free34 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %39, i32 0, i32 1, !dbg !6146
  store i32 0, ptr %dqdh_prev_free34, align 4, !dbg !6147
  %40 = load ptr, ptr %dh, align 8, !dbg !6148
  %dqdh_next_free35 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %40, i32 0, i32 0, !dbg !6149
  store i32 0, ptr %dqdh_next_free35, align 4, !dbg !6150
  %41 = load ptr, ptr %info.addr, align 8, !dbg !6151
  %42 = load i32, ptr %blk.addr, align 4, !dbg !6153
  %43 = load ptr, ptr %buf.addr, align 8, !dbg !6154
  %call36 = call i64 @write_blk(ptr noundef %41, i32 noundef %42, ptr noundef %43) #17, !dbg !6155
  %cmp37 = icmp slt i64 %call36, 0, !dbg !6156
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !6157

if.then39:                                        ; preds = %if.end33
  %44 = load ptr, ptr %info.addr, align 8, !dbg !6158
  %dqi_sb40 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %44, i32 0, i32 0, !dbg !6158
  %45 = load ptr, ptr %dqi_sb40, align 8, !dbg !6158
  %46 = load i32, ptr %blk.addr, align 4, !dbg !6158
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %45, ptr noundef @__func__.remove_free_dqentry, ptr noundef @.str.20, i32 noundef %46) #17, !dbg !6158
  br label %if.end41, !dbg !6158

if.end41:                                         ; preds = %if.then39, %if.end33
  store i32 0, ptr %retval, align 4, !dbg !6159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6159

out_buf:                                          ; preds = %if.then31, %if.then23, %if.then14, %if.then6
  call void @llvm.dbg.label(metadata !6049), !dbg !6160
  %47 = load ptr, ptr %tmpbuf, align 8, !dbg !6161
  call void @kfree(ptr noundef %47) #17, !dbg !6162
  %48 = load i32, ptr %err, align 4, !dbg !6163
  store i32 %48, ptr %retval, align 4, !dbg !6164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6164

cleanup:                                          ; preds = %out_buf, %if.end41, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 4, ptr %prevblk) #15, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 4, ptr %nextblk) #15, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #15, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpbuf) #15, !dbg !6165
  %49 = load i32, ptr %retval, align 4, !dbg !6165
  ret i32 %49, !dbg !6165
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @le16_add_cpu(ptr noundef %var, i16 noundef zeroext %val) #4 align 16 !dbg !6166 {
entry:
  %var.addr = alloca ptr, align 8
  %val.addr = alloca i16, align 2
  store ptr %var, ptr %var.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %var.addr, metadata !6172, metadata !DIExpression()), !dbg !6174
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6173, metadata !DIExpression()), !dbg !6175
  %0 = load ptr, ptr %var.addr, align 8, !dbg !6176
  %1 = load i16, ptr %0, align 2, !dbg !6176
  %conv = zext i16 %1 to i32, !dbg !6176
  %2 = load i16, ptr %val.addr, align 2, !dbg !6176
  %conv1 = zext i16 %2 to i32, !dbg !6176
  %add = add i32 %conv, %conv1, !dbg !6176
  %conv2 = trunc i32 %add to i16, !dbg !6176
  %3 = load ptr, ptr %var.addr, align 8, !dbg !6177
  store i16 %conv2, ptr %3, align 2, !dbg !6178
  ret void, !dbg !6179
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6180 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6185 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_inc(ptr noundef %fbc) #4 align 16 !dbg !6186 {
entry:
  %fbc.addr = alloca ptr, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !6191, metadata !DIExpression()), !dbg !6192
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !6193
  call void @percpu_counter_add(ptr noundef %0, i64 noundef 1) #17, !dbg !6194
  ret void, !dbg !6195
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @percpu_counter_add(ptr noundef %fbc, i64 noundef %amount) #4 align 16 !dbg !6196 {
entry:
  %fbc.addr = alloca ptr, align 8
  %amount.addr = alloca i64, align 8
  store ptr %fbc, ptr %fbc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fbc.addr, metadata !6200, metadata !DIExpression()), !dbg !6202
  store i64 %amount, ptr %amount.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %amount.addr, metadata !6201, metadata !DIExpression()), !dbg !6203
  %0 = load ptr, ptr %fbc.addr, align 8, !dbg !6204
  %1 = load i64, ptr %amount.addr, align 8, !dbg !6205
  %2 = load i32, ptr @percpu_counter_batch, align 4, !dbg !6206
  call void @percpu_counter_add_batch(ptr noundef %0, i64 noundef %1, i32 noundef %2) #17, !dbg !6207
  ret void, !dbg !6208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6209 dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @free_dqentry(ptr noundef %info, ptr noundef %dquot, i32 noundef %blk) #0 align 16 !dbg !6212 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %dh = alloca ptr, align 8
  %buf = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6216, metadata !DIExpression()), !dbg !6223
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !6217, metadata !DIExpression()), !dbg !6224
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !6218, metadata !DIExpression()), !dbg !6225
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #15, !dbg !6226
  call void @llvm.dbg.declare(metadata ptr %dh, metadata !6219, metadata !DIExpression()), !dbg !6227
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6228
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6220, metadata !DIExpression()), !dbg !6229
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6230
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !6231
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !6231
  %conv = zext i32 %1 to i64, !dbg !6230
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !6232
  store ptr %call, ptr %buf, align 8, !dbg !6229
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6233
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6221, metadata !DIExpression()), !dbg !6234
  store i32 0, ptr %ret, align 4, !dbg !6234
  %2 = load ptr, ptr %buf, align 8, !dbg !6235
  %tobool = icmp ne ptr %2, null, !dbg !6235
  br i1 %tobool, label %if.end, label %if.then, !dbg !6237

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6238

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dquot.addr, align 8, !dbg !6239
  %dq_off = getelementptr inbounds %struct.dquot, ptr %3, i32 0, i32 9, !dbg !6241
  %4 = load i64, ptr %dq_off, align 8, !dbg !6241
  %5 = load ptr, ptr %info.addr, align 8, !dbg !6242
  %dqi_blocksize_bits = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %5, i32 0, i32 5, !dbg !6243
  %6 = load i32, ptr %dqi_blocksize_bits, align 8, !dbg !6243
  %sh_prom = zext i32 %6 to i64, !dbg !6244
  %shr = ashr i64 %4, %sh_prom, !dbg !6244
  %7 = load i32, ptr %blk.addr, align 4, !dbg !6245
  %conv1 = zext i32 %7 to i64, !dbg !6245
  %cmp = icmp ne i64 %shr, %conv1, !dbg !6246
  br i1 %cmp, label %if.then3, label %if.end9, !dbg !6247

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %dquot.addr, align 8, !dbg !6248
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %8, i32 0, i32 7, !dbg !6248
  %9 = load ptr, ptr %dq_sb, align 8, !dbg !6248
  %10 = load i32, ptr %blk.addr, align 4, !dbg !6248
  %11 = load ptr, ptr %dquot.addr, align 8, !dbg !6248
  %dq_off4 = getelementptr inbounds %struct.dquot, ptr %11, i32 0, i32 9, !dbg !6248
  %12 = load i64, ptr %dq_off4, align 8, !dbg !6248
  %13 = load ptr, ptr %info.addr, align 8, !dbg !6248
  %dqi_blocksize_bits5 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %13, i32 0, i32 5, !dbg !6248
  %14 = load i32, ptr %dqi_blocksize_bits5, align 8, !dbg !6248
  %sh_prom6 = zext i32 %14 to i64, !dbg !6248
  %shr7 = ashr i64 %12, %sh_prom6, !dbg !6248
  %conv8 = trunc i64 %shr7 to i32, !dbg !6248
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %9, ptr noundef @__func__.free_dqentry, ptr noundef @.str.23, i32 noundef %10, i32 noundef %conv8) #17, !dbg !6248
  store i32 -5, ptr %ret, align 4, !dbg !6250
  br label %out_buf, !dbg !6251

if.end9:                                          ; preds = %if.end
  %15 = load ptr, ptr %info.addr, align 8, !dbg !6252
  %16 = load i32, ptr %blk.addr, align 4, !dbg !6253
  %17 = load ptr, ptr %buf, align 8, !dbg !6254
  %call10 = call i64 @read_blk(ptr noundef %15, i32 noundef %16, ptr noundef %17) #17, !dbg !6255
  %conv11 = trunc i64 %call10 to i32, !dbg !6255
  store i32 %conv11, ptr %ret, align 4, !dbg !6256
  %18 = load i32, ptr %ret, align 4, !dbg !6257
  %cmp12 = icmp slt i32 %18, 0, !dbg !6259
  br i1 %cmp12, label %if.then14, label %if.end16, !dbg !6260

if.then14:                                        ; preds = %if.end9
  %19 = load ptr, ptr %dquot.addr, align 8, !dbg !6261
  %dq_sb15 = getelementptr inbounds %struct.dquot, ptr %19, i32 0, i32 7, !dbg !6261
  %20 = load ptr, ptr %dq_sb15, align 8, !dbg !6261
  %21 = load i32, ptr %blk.addr, align 4, !dbg !6261
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %20, ptr noundef @__func__.free_dqentry, ptr noundef @.str.21, i32 noundef %21) #17, !dbg !6261
  br label %out_buf, !dbg !6263

if.end16:                                         ; preds = %if.end9
  %22 = load ptr, ptr %buf, align 8, !dbg !6264
  store ptr %22, ptr %dh, align 8, !dbg !6265
  %23 = load ptr, ptr %info.addr, align 8, !dbg !6266
  %24 = load ptr, ptr %dh, align 8, !dbg !6267
  %call17 = call i32 @check_dquot_block_header(ptr noundef %23, ptr noundef %24) #17, !dbg !6268
  store i32 %call17, ptr %ret, align 4, !dbg !6269
  %25 = load i32, ptr %ret, align 4, !dbg !6270
  %tobool18 = icmp ne i32 %25, 0, !dbg !6270
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !6272

if.then19:                                        ; preds = %if.end16
  br label %out_buf, !dbg !6273

if.end20:                                         ; preds = %if.end16
  %26 = load ptr, ptr %dh, align 8, !dbg !6274
  %dqdh_entries = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %26, i32 0, i32 2, !dbg !6275
  call void @le16_add_cpu(ptr noundef %dqdh_entries, i16 noundef zeroext -1) #17, !dbg !6276
  %27 = load ptr, ptr %dh, align 8, !dbg !6277
  %dqdh_entries21 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %27, i32 0, i32 2, !dbg !6277
  %28 = load i16, ptr %dqdh_entries21, align 4, !dbg !6277
  %tobool22 = icmp ne i16 %28, 0, !dbg !6277
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !6279

if.then23:                                        ; preds = %if.end20
  %29 = load ptr, ptr %info.addr, align 8, !dbg !6280
  %30 = load ptr, ptr %buf, align 8, !dbg !6282
  %31 = load i32, ptr %blk.addr, align 4, !dbg !6283
  %call24 = call i32 @remove_free_dqentry(ptr noundef %29, ptr noundef %30, i32 noundef %31) #17, !dbg !6284
  store i32 %call24, ptr %ret, align 4, !dbg !6285
  %32 = load i32, ptr %ret, align 4, !dbg !6286
  %cmp25 = icmp sge i32 %32, 0, !dbg !6288
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !6289

if.then27:                                        ; preds = %if.then23
  %33 = load ptr, ptr %info.addr, align 8, !dbg !6290
  %34 = load ptr, ptr %buf, align 8, !dbg !6291
  %35 = load i32, ptr %blk.addr, align 4, !dbg !6292
  %call28 = call i32 @put_free_dqblk(ptr noundef %33, ptr noundef %34, i32 noundef %35) #17, !dbg !6293
  store i32 %call28, ptr %ret, align 4, !dbg !6294
  br label %if.end29, !dbg !6295

if.end29:                                         ; preds = %if.then27, %if.then23
  %36 = load i32, ptr %ret, align 4, !dbg !6296
  %cmp30 = icmp slt i32 %36, 0, !dbg !6298
  br i1 %cmp30, label %if.then32, label %if.end34, !dbg !6299

if.then32:                                        ; preds = %if.end29
  %37 = load ptr, ptr %dquot.addr, align 8, !dbg !6300
  %dq_sb33 = getelementptr inbounds %struct.dquot, ptr %37, i32 0, i32 7, !dbg !6300
  %38 = load ptr, ptr %dq_sb33, align 8, !dbg !6300
  %39 = load i32, ptr %blk.addr, align 4, !dbg !6300
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %38, ptr noundef @__func__.free_dqentry, ptr noundef @.str.24, i32 noundef %39) #17, !dbg !6300
  br label %out_buf, !dbg !6302

if.end34:                                         ; preds = %if.end29
  br label %if.end61, !dbg !6303

if.else:                                          ; preds = %if.end20
  %40 = load ptr, ptr %buf, align 8, !dbg !6304
  %41 = load ptr, ptr %dquot.addr, align 8, !dbg !6306
  %dq_off35 = getelementptr inbounds %struct.dquot, ptr %41, i32 0, i32 9, !dbg !6307
  %42 = load i64, ptr %dq_off35, align 8, !dbg !6307
  %43 = load ptr, ptr %info.addr, align 8, !dbg !6308
  %dqi_blocksize_bits36 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %43, i32 0, i32 5, !dbg !6309
  %44 = load i32, ptr %dqi_blocksize_bits36, align 8, !dbg !6309
  %shl = shl i32 1, %44, !dbg !6310
  %sub = sub i32 %shl, 1, !dbg !6311
  %conv37 = sext i32 %sub to i64, !dbg !6312
  %and = and i64 %42, %conv37, !dbg !6313
  %add.ptr = getelementptr i8, ptr %40, i64 %and, !dbg !6314
  %45 = load ptr, ptr %info.addr, align 8, !dbg !6315
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %45, i32 0, i32 6, !dbg !6316
  %46 = load i32, ptr %dqi_entry_size, align 4, !dbg !6316
  %conv38 = zext i32 %46 to i64, !dbg !6315
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv38, i1 false), !dbg !6317
  %47 = load ptr, ptr %dh, align 8, !dbg !6318
  %dqdh_entries39 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %47, i32 0, i32 2, !dbg !6318
  %48 = load i16, ptr %dqdh_entries39, align 4, !dbg !6318
  %conv40 = zext i16 %48 to i32, !dbg !6318
  %49 = load ptr, ptr %info.addr, align 8, !dbg !6320
  %call41 = call i32 @qtree_dqstr_in_blk(ptr noundef %49) #17, !dbg !6321
  %sub42 = sub i32 %call41, 1, !dbg !6322
  %cmp43 = icmp eq i32 %conv40, %sub42, !dbg !6323
  br i1 %cmp43, label %if.then45, label %if.else52, !dbg !6324

if.then45:                                        ; preds = %if.else
  %50 = load ptr, ptr %info.addr, align 8, !dbg !6325
  %51 = load ptr, ptr %buf, align 8, !dbg !6327
  %52 = load i32, ptr %blk.addr, align 4, !dbg !6328
  %call46 = call i32 @insert_free_dqentry(ptr noundef %50, ptr noundef %51, i32 noundef %52) #17, !dbg !6329
  store i32 %call46, ptr %ret, align 4, !dbg !6330
  %53 = load i32, ptr %ret, align 4, !dbg !6331
  %cmp47 = icmp slt i32 %53, 0, !dbg !6333
  br i1 %cmp47, label %if.then49, label %if.end51, !dbg !6334

if.then49:                                        ; preds = %if.then45
  %54 = load ptr, ptr %dquot.addr, align 8, !dbg !6335
  %dq_sb50 = getelementptr inbounds %struct.dquot, ptr %54, i32 0, i32 7, !dbg !6335
  %55 = load ptr, ptr %dq_sb50, align 8, !dbg !6335
  %56 = load i32, ptr %blk.addr, align 4, !dbg !6335
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %55, ptr noundef @__func__.free_dqentry, ptr noundef @.str.25, i32 noundef %56) #17, !dbg !6335
  br label %out_buf, !dbg !6337

if.end51:                                         ; preds = %if.then45
  br label %if.end60, !dbg !6338

if.else52:                                        ; preds = %if.else
  %57 = load ptr, ptr %info.addr, align 8, !dbg !6339
  %58 = load i32, ptr %blk.addr, align 4, !dbg !6341
  %59 = load ptr, ptr %buf, align 8, !dbg !6342
  %call53 = call i64 @write_blk(ptr noundef %57, i32 noundef %58, ptr noundef %59) #17, !dbg !6343
  %conv54 = trunc i64 %call53 to i32, !dbg !6343
  store i32 %conv54, ptr %ret, align 4, !dbg !6344
  %60 = load i32, ptr %ret, align 4, !dbg !6345
  %cmp55 = icmp slt i32 %60, 0, !dbg !6347
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !6348

if.then57:                                        ; preds = %if.else52
  %61 = load ptr, ptr %dquot.addr, align 8, !dbg !6349
  %dq_sb58 = getelementptr inbounds %struct.dquot, ptr %61, i32 0, i32 7, !dbg !6349
  %62 = load ptr, ptr %dq_sb58, align 8, !dbg !6349
  %63 = load i32, ptr %blk.addr, align 4, !dbg !6349
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %62, ptr noundef @__func__.free_dqentry, ptr noundef @.str.19, i32 noundef %63) #17, !dbg !6349
  br label %out_buf, !dbg !6351

if.end59:                                         ; preds = %if.else52
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.end51
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end34
  %64 = load ptr, ptr %dquot.addr, align 8, !dbg !6352
  %dq_off62 = getelementptr inbounds %struct.dquot, ptr %64, i32 0, i32 9, !dbg !6353
  store i64 0, ptr %dq_off62, align 8, !dbg !6354
  br label %out_buf, !dbg !6352

out_buf:                                          ; preds = %if.end61, %if.then57, %if.then49, %if.then32, %if.then19, %if.then14, %if.then3
  call void @llvm.dbg.label(metadata !6222), !dbg !6355
  %65 = load ptr, ptr %buf, align 8, !dbg !6356
  call void @kfree(ptr noundef %65) #17, !dbg !6357
  %66 = load i32, ptr %ret, align 4, !dbg !6358
  store i32 %66, ptr %retval, align 4, !dbg !6359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6359

cleanup:                                          ; preds = %out_buf, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6360
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #15, !dbg !6360
  %67 = load i32, ptr %retval, align 4, !dbg !6360
  ret i32 %67, !dbg !6360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @insert_free_dqentry(ptr noundef %info, ptr noundef %buf, i32 noundef %blk) #0 align 16 !dbg !6361 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %tmpbuf = alloca ptr, align 8
  %dh = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6363, metadata !DIExpression()), !dbg !6370
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6364, metadata !DIExpression()), !dbg !6371
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !6365, metadata !DIExpression()), !dbg !6372
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmpbuf) #15, !dbg !6373
  call void @llvm.dbg.declare(metadata ptr %tmpbuf, metadata !6366, metadata !DIExpression()), !dbg !6374
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6375
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !6376
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !6376
  %conv = zext i32 %1 to i64, !dbg !6375
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !6377
  store ptr %call, ptr %tmpbuf, align 8, !dbg !6374
  call void @llvm.lifetime.start.p0(i64 8, ptr %dh) #15, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %dh, metadata !6367, metadata !DIExpression()), !dbg !6379
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !6380
  store ptr %2, ptr %dh, align 8, !dbg !6379
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !6381
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6368, metadata !DIExpression()), !dbg !6382
  %3 = load ptr, ptr %tmpbuf, align 8, !dbg !6383
  %tobool = icmp ne ptr %3, null, !dbg !6383
  br i1 %tobool, label %if.end, label %if.then, !dbg !6385

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6386

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !6387
  %dqi_free_entry = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %4, i32 0, i32 4, !dbg !6387
  %5 = load i32, ptr %dqi_free_entry, align 4, !dbg !6387
  %6 = load ptr, ptr %dh, align 8, !dbg !6388
  %dqdh_next_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %6, i32 0, i32 0, !dbg !6389
  store i32 %5, ptr %dqdh_next_free, align 4, !dbg !6390
  %7 = load ptr, ptr %dh, align 8, !dbg !6391
  %dqdh_prev_free = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %7, i32 0, i32 1, !dbg !6392
  store i32 0, ptr %dqdh_prev_free, align 4, !dbg !6393
  %8 = load ptr, ptr %info.addr, align 8, !dbg !6394
  %9 = load i32, ptr %blk.addr, align 4, !dbg !6395
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !6396
  %call1 = call i64 @write_blk(ptr noundef %8, i32 noundef %9, ptr noundef %10) #17, !dbg !6397
  %conv2 = trunc i64 %call1 to i32, !dbg !6397
  store i32 %conv2, ptr %err, align 4, !dbg !6398
  %11 = load i32, ptr %err, align 4, !dbg !6399
  %cmp = icmp slt i32 %11, 0, !dbg !6401
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !6402

if.then4:                                         ; preds = %if.end
  br label %out_buf, !dbg !6403

if.end5:                                          ; preds = %if.end
  %12 = load ptr, ptr %info.addr, align 8, !dbg !6404
  %dqi_free_entry6 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %12, i32 0, i32 4, !dbg !6406
  %13 = load i32, ptr %dqi_free_entry6, align 4, !dbg !6406
  %tobool7 = icmp ne i32 %13, 0, !dbg !6404
  br i1 %tobool7, label %if.then8, label %if.end24, !dbg !6407

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %info.addr, align 8, !dbg !6408
  %15 = load ptr, ptr %info.addr, align 8, !dbg !6410
  %dqi_free_entry9 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %15, i32 0, i32 4, !dbg !6411
  %16 = load i32, ptr %dqi_free_entry9, align 4, !dbg !6411
  %17 = load ptr, ptr %tmpbuf, align 8, !dbg !6412
  %call10 = call i64 @read_blk(ptr noundef %14, i32 noundef %16, ptr noundef %17) #17, !dbg !6413
  %conv11 = trunc i64 %call10 to i32, !dbg !6413
  store i32 %conv11, ptr %err, align 4, !dbg !6414
  %18 = load i32, ptr %err, align 4, !dbg !6415
  %cmp12 = icmp slt i32 %18, 0, !dbg !6417
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6418

if.then14:                                        ; preds = %if.then8
  br label %out_buf, !dbg !6419

if.end15:                                         ; preds = %if.then8
  %19 = load i32, ptr %blk.addr, align 4, !dbg !6420
  %20 = load ptr, ptr %tmpbuf, align 8, !dbg !6421
  %dqdh_prev_free16 = getelementptr inbounds %struct.qt_disk_dqdbheader, ptr %20, i32 0, i32 1, !dbg !6422
  store i32 %19, ptr %dqdh_prev_free16, align 4, !dbg !6423
  %21 = load ptr, ptr %info.addr, align 8, !dbg !6424
  %22 = load ptr, ptr %info.addr, align 8, !dbg !6425
  %dqi_free_entry17 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %22, i32 0, i32 4, !dbg !6426
  %23 = load i32, ptr %dqi_free_entry17, align 4, !dbg !6426
  %24 = load ptr, ptr %tmpbuf, align 8, !dbg !6427
  %call18 = call i64 @write_blk(ptr noundef %21, i32 noundef %23, ptr noundef %24) #17, !dbg !6428
  %conv19 = trunc i64 %call18 to i32, !dbg !6428
  store i32 %conv19, ptr %err, align 4, !dbg !6429
  %25 = load i32, ptr %err, align 4, !dbg !6430
  %cmp20 = icmp slt i32 %25, 0, !dbg !6432
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !6433

if.then22:                                        ; preds = %if.end15
  br label %out_buf, !dbg !6434

if.end23:                                         ; preds = %if.end15
  br label %if.end24, !dbg !6435

if.end24:                                         ; preds = %if.end23, %if.end5
  %26 = load ptr, ptr %tmpbuf, align 8, !dbg !6436
  call void @kfree(ptr noundef %26) #17, !dbg !6437
  %27 = load i32, ptr %blk.addr, align 4, !dbg !6438
  %28 = load ptr, ptr %info.addr, align 8, !dbg !6439
  %dqi_free_entry25 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %28, i32 0, i32 4, !dbg !6440
  store i32 %27, ptr %dqi_free_entry25, align 4, !dbg !6441
  %29 = load ptr, ptr %info.addr, align 8, !dbg !6442
  %dqi_sb = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %29, i32 0, i32 0, !dbg !6443
  %30 = load ptr, ptr %dqi_sb, align 8, !dbg !6443
  %31 = load ptr, ptr %info.addr, align 8, !dbg !6444
  %dqi_type = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %31, i32 0, i32 1, !dbg !6445
  %32 = load i32, ptr %dqi_type, align 8, !dbg !6445
  call void @mark_info_dirty(ptr noundef %30, i32 noundef %32) #17, !dbg !6446
  store i32 0, ptr %retval, align 4, !dbg !6447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6447

out_buf:                                          ; preds = %if.then22, %if.then14, %if.then4
  call void @llvm.dbg.label(metadata !6369), !dbg !6448
  %33 = load ptr, ptr %tmpbuf, align 8, !dbg !6449
  call void @kfree(ptr noundef %33) #17, !dbg !6450
  %34 = load i32, ptr %err, align 4, !dbg !6451
  store i32 %34, ptr %retval, align 4, !dbg !6452
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6452

cleanup:                                          ; preds = %out_buf, %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %dh) #15, !dbg !6453
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmpbuf) #15, !dbg !6453
  %35 = load i32, ptr %retval, align 4, !dbg !6453
  ret i32 %35, !dbg !6453
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_tree_dqentry(ptr noundef %info, ptr noundef %dquot, ptr noundef %blks, i32 noundef %depth) #0 align 16 !dbg !6454 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blks.addr = alloca ptr, align 8
  %depth.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %ret = alloca i64, align 8
  %ref = alloca ptr, align 8
  %blk = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6458, metadata !DIExpression()), !dbg !6468
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !6459, metadata !DIExpression()), !dbg !6469
  store ptr %blks, ptr %blks.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blks.addr, metadata !6460, metadata !DIExpression()), !dbg !6470
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !6461, metadata !DIExpression()), !dbg !6471
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6472
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6462, metadata !DIExpression()), !dbg !6473
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6474
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !6475
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !6475
  %conv = zext i32 %1 to i64, !dbg !6474
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !6476
  store ptr %call, ptr %buf, align 8, !dbg !6473
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6477
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6463, metadata !DIExpression()), !dbg !6478
  store i64 0, ptr %ret, align 8, !dbg !6478
  call void @llvm.lifetime.start.p0(i64 8, ptr %ref) #15, !dbg !6479
  call void @llvm.dbg.declare(metadata ptr %ref, metadata !6464, metadata !DIExpression()), !dbg !6480
  %2 = load ptr, ptr %buf, align 8, !dbg !6481
  store ptr %2, ptr %ref, align 8, !dbg !6480
  call void @llvm.lifetime.start.p0(i64 4, ptr %blk) #15, !dbg !6482
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !6465, metadata !DIExpression()), !dbg !6483
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6484
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6466, metadata !DIExpression()), !dbg !6485
  %3 = load ptr, ptr %buf, align 8, !dbg !6486
  %tobool = icmp ne ptr %3, null, !dbg !6486
  br i1 %tobool, label %if.end, label %if.then, !dbg !6488

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !6489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6489

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %info.addr, align 8, !dbg !6490
  %5 = load ptr, ptr %blks.addr, align 8, !dbg !6491
  %6 = load i32, ptr %depth.addr, align 4, !dbg !6492
  %idxprom = sext i32 %6 to i64, !dbg !6491
  %arrayidx = getelementptr i32, ptr %5, i64 %idxprom, !dbg !6491
  %7 = load i32, ptr %arrayidx, align 4, !dbg !6491
  %8 = load ptr, ptr %buf, align 8, !dbg !6493
  %call1 = call i64 @read_blk(ptr noundef %4, i32 noundef %7, ptr noundef %8) #17, !dbg !6494
  store i64 %call1, ptr %ret, align 8, !dbg !6495
  %9 = load i64, ptr %ret, align 8, !dbg !6496
  %cmp = icmp slt i64 %9, 0, !dbg !6498
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !6499

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %dquot.addr, align 8, !dbg !6500
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %10, i32 0, i32 7, !dbg !6500
  %11 = load ptr, ptr %dq_sb, align 8, !dbg !6500
  %12 = load ptr, ptr %blks.addr, align 8, !dbg !6500
  %13 = load i32, ptr %depth.addr, align 4, !dbg !6500
  %idxprom4 = sext i32 %13 to i64, !dbg !6500
  %arrayidx5 = getelementptr i32, ptr %12, i64 %idxprom4, !dbg !6500
  %14 = load i32, ptr %arrayidx5, align 4, !dbg !6500
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %11, ptr noundef @__func__.find_tree_dqentry, ptr noundef @.str.26, i32 noundef %14) #17, !dbg !6500
  br label %out_buf, !dbg !6502

if.end6:                                          ; preds = %if.end
  store i64 0, ptr %ret, align 8, !dbg !6503
  %15 = load ptr, ptr %ref, align 8, !dbg !6504
  %16 = load ptr, ptr %info.addr, align 8, !dbg !6504
  %17 = load ptr, ptr %dquot.addr, align 8, !dbg !6504
  %dq_id = getelementptr inbounds %struct.dquot, ptr %17, i32 0, i32 8, !dbg !6504
  %18 = load i32, ptr %depth.addr, align 4, !dbg !6504
  %19 = load i64, ptr %dq_id, align 8, !dbg !6504
  %call7 = call i32 @get_index(ptr noundef %16, i64 %19, i32 noundef %18) #17, !dbg !6504
  %idxprom8 = sext i32 %call7 to i64, !dbg !6504
  %arrayidx9 = getelementptr i32, ptr %15, i64 %idxprom8, !dbg !6504
  %20 = load i32, ptr %arrayidx9, align 4, !dbg !6504
  store i32 %20, ptr %blk, align 4, !dbg !6505
  %21 = load i32, ptr %blk, align 4, !dbg !6506
  %tobool10 = icmp ne i32 %21, 0, !dbg !6506
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6508

if.then11:                                        ; preds = %if.end6
  br label %out_buf, !dbg !6509

if.end12:                                         ; preds = %if.end6
  %22 = load ptr, ptr %dquot.addr, align 8, !dbg !6510
  %dq_sb13 = getelementptr inbounds %struct.dquot, ptr %22, i32 0, i32 7, !dbg !6511
  %23 = load ptr, ptr %dq_sb13, align 8, !dbg !6511
  %24 = load i32, ptr %blk, align 4, !dbg !6512
  %25 = load ptr, ptr %info.addr, align 8, !dbg !6513
  %dqi_blocks = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %25, i32 0, i32 2, !dbg !6514
  %26 = load i32, ptr %dqi_blocks, align 4, !dbg !6514
  %sub = sub i32 %26, 1, !dbg !6515
  %call14 = call i32 @do_check_range(ptr noundef %23, ptr noundef @.str.10, i32 noundef %24, i32 noundef 1, i32 noundef %sub) #17, !dbg !6516
  %conv15 = sext i32 %call14 to i64, !dbg !6516
  store i64 %conv15, ptr %ret, align 8, !dbg !6517
  %27 = load i64, ptr %ret, align 8, !dbg !6518
  %tobool16 = icmp ne i64 %27, 0, !dbg !6518
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !6520

if.then17:                                        ; preds = %if.end12
  br label %out_buf, !dbg !6521

if.end18:                                         ; preds = %if.end12
  store i32 0, ptr %i, align 4, !dbg !6522
  br label %for.cond, !dbg !6524

for.cond:                                         ; preds = %for.inc, %if.end18
  %28 = load i32, ptr %i, align 4, !dbg !6525
  %29 = load i32, ptr %depth.addr, align 4, !dbg !6527
  %cmp19 = icmp sle i32 %28, %29, !dbg !6528
  br i1 %cmp19, label %for.body, label %for.end, !dbg !6529

for.body:                                         ; preds = %for.cond
  %30 = load i32, ptr %blk, align 4, !dbg !6530
  %31 = load ptr, ptr %blks.addr, align 8, !dbg !6532
  %32 = load i32, ptr %i, align 4, !dbg !6533
  %idxprom21 = sext i32 %32 to i64, !dbg !6532
  %arrayidx22 = getelementptr i32, ptr %31, i64 %idxprom21, !dbg !6532
  %33 = load i32, ptr %arrayidx22, align 4, !dbg !6532
  %cmp23 = icmp eq i32 %30, %33, !dbg !6534
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !6535

if.then25:                                        ; preds = %for.body
  %34 = load ptr, ptr %dquot.addr, align 8, !dbg !6536
  %dq_sb26 = getelementptr inbounds %struct.dquot, ptr %34, i32 0, i32 7, !dbg !6536
  %35 = load ptr, ptr %dq_sb26, align 8, !dbg !6536
  %36 = load ptr, ptr %blks.addr, align 8, !dbg !6536
  %37 = load i32, ptr %depth.addr, align 4, !dbg !6536
  %idxprom27 = sext i32 %37 to i64, !dbg !6536
  %arrayidx28 = getelementptr i32, ptr %36, i64 %idxprom27, !dbg !6536
  %38 = load i32, ptr %arrayidx28, align 4, !dbg !6536
  %39 = load ptr, ptr %info.addr, align 8, !dbg !6536
  %40 = load ptr, ptr %dquot.addr, align 8, !dbg !6536
  %dq_id29 = getelementptr inbounds %struct.dquot, ptr %40, i32 0, i32 8, !dbg !6536
  %41 = load i32, ptr %depth.addr, align 4, !dbg !6536
  %42 = load i64, ptr %dq_id29, align 8, !dbg !6536
  %call30 = call i32 @get_index(ptr noundef %39, i64 %42, i32 noundef %41) #17, !dbg !6536
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %35, ptr noundef @__func__.find_tree_dqentry, ptr noundef @.str.11, i32 noundef %38, i32 noundef %call30) #17, !dbg !6536
  store i64 -5, ptr %ret, align 8, !dbg !6538
  br label %out_buf, !dbg !6539

if.end31:                                         ; preds = %for.body
  br label %for.inc, !dbg !6540

for.inc:                                          ; preds = %if.end31
  %43 = load i32, ptr %i, align 4, !dbg !6541
  %inc = add i32 %43, 1, !dbg !6541
  store i32 %inc, ptr %i, align 4, !dbg !6541
  br label %for.cond, !dbg !6542, !llvm.loop !6543

for.end:                                          ; preds = %for.cond
  %44 = load i32, ptr %blk, align 4, !dbg !6545
  %45 = load ptr, ptr %blks.addr, align 8, !dbg !6546
  %46 = load i32, ptr %depth.addr, align 4, !dbg !6547
  %add = add i32 %46, 1, !dbg !6548
  %idxprom32 = sext i32 %add to i64, !dbg !6546
  %arrayidx33 = getelementptr i32, ptr %45, i64 %idxprom32, !dbg !6546
  store i32 %44, ptr %arrayidx33, align 4, !dbg !6549
  %47 = load i32, ptr %depth.addr, align 4, !dbg !6550
  %48 = load ptr, ptr %info.addr, align 8, !dbg !6552
  %dqi_qtree_depth = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %48, i32 0, i32 8, !dbg !6553
  %49 = load i32, ptr %dqi_qtree_depth, align 4, !dbg !6553
  %sub34 = sub i32 %49, 1, !dbg !6554
  %cmp35 = icmp ult i32 %47, %sub34, !dbg !6555
  br i1 %cmp35, label %if.then37, label %if.else, !dbg !6556

if.then37:                                        ; preds = %for.end
  %50 = load ptr, ptr %info.addr, align 8, !dbg !6557
  %51 = load ptr, ptr %dquot.addr, align 8, !dbg !6558
  %52 = load ptr, ptr %blks.addr, align 8, !dbg !6559
  %53 = load i32, ptr %depth.addr, align 4, !dbg !6560
  %add38 = add i32 %53, 1, !dbg !6561
  %call39 = call i64 @find_tree_dqentry(ptr noundef %50, ptr noundef %51, ptr noundef %52, i32 noundef %add38) #17, !dbg !6562
  store i64 %call39, ptr %ret, align 8, !dbg !6563
  br label %if.end41, !dbg !6564

if.else:                                          ; preds = %for.end
  %54 = load ptr, ptr %info.addr, align 8, !dbg !6565
  %55 = load ptr, ptr %dquot.addr, align 8, !dbg !6566
  %56 = load i32, ptr %blk, align 4, !dbg !6567
  %call40 = call i64 @find_block_dqentry(ptr noundef %54, ptr noundef %55, i32 noundef %56) #17, !dbg !6568
  store i64 %call40, ptr %ret, align 8, !dbg !6569
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then37
  br label %out_buf, !dbg !6570

out_buf:                                          ; preds = %if.end41, %if.then25, %if.then17, %if.then11, %if.then3
  call void @llvm.dbg.label(metadata !6467), !dbg !6571
  %57 = load ptr, ptr %buf, align 8, !dbg !6572
  call void @kfree(ptr noundef %57) #17, !dbg !6573
  %58 = load i64, ptr %ret, align 8, !dbg !6574
  store i64 %58, ptr %retval, align 8, !dbg !6575
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6575

cleanup:                                          ; preds = %out_buf, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6576
  call void @llvm.lifetime.end.p0(i64 4, ptr %blk) #15, !dbg !6576
  call void @llvm.lifetime.end.p0(i64 8, ptr %ref) #15, !dbg !6576
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6576
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6576
  %59 = load i64, ptr %retval, align 8, !dbg !6576
  ret i64 %59, !dbg !6576
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_block_dqentry(ptr noundef %info, ptr noundef %dquot, i32 noundef %blk) #0 align 16 !dbg !6577 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %dquot.addr = alloca ptr, align 8
  %blk.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %ret = alloca i64, align 8
  %i = alloca i32, align 4
  %ddquot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !6581, metadata !DIExpression()), !dbg !6589
  store ptr %dquot, ptr %dquot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dquot.addr, metadata !6582, metadata !DIExpression()), !dbg !6590
  store i32 %blk, ptr %blk.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %blk.addr, metadata !6583, metadata !DIExpression()), !dbg !6591
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !6592
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !6584, metadata !DIExpression()), !dbg !6593
  %0 = load ptr, ptr %info.addr, align 8, !dbg !6594
  %dqi_usable_bs = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %0, i32 0, i32 7, !dbg !6595
  %1 = load i32, ptr %dqi_usable_bs, align 8, !dbg !6595
  %conv = zext i32 %1 to i64, !dbg !6594
  %call = call noalias ptr @kmalloc(i64 noundef %conv, i32 noundef 3136) #16, !dbg !6596
  store ptr %call, ptr %buf, align 8, !dbg !6593
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #15, !dbg !6597
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6585, metadata !DIExpression()), !dbg !6598
  store i64 0, ptr %ret, align 8, !dbg !6598
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !6599
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6586, metadata !DIExpression()), !dbg !6600
  call void @llvm.lifetime.start.p0(i64 8, ptr %ddquot) #15, !dbg !6601
  call void @llvm.dbg.declare(metadata ptr %ddquot, metadata !6587, metadata !DIExpression()), !dbg !6602
  %2 = load ptr, ptr %buf, align 8, !dbg !6603
  %tobool = icmp ne ptr %2, null, !dbg !6603
  br i1 %tobool, label %if.end, label %if.then, !dbg !6605

if.then:                                          ; preds = %entry
  store i64 -12, ptr %retval, align 8, !dbg !6606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6606

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %info.addr, align 8, !dbg !6607
  %4 = load i32, ptr %blk.addr, align 4, !dbg !6608
  %5 = load ptr, ptr %buf, align 8, !dbg !6609
  %call1 = call i64 @read_blk(ptr noundef %3, i32 noundef %4, ptr noundef %5) #17, !dbg !6610
  store i64 %call1, ptr %ret, align 8, !dbg !6611
  %6 = load i64, ptr %ret, align 8, !dbg !6612
  %cmp = icmp slt i64 %6, 0, !dbg !6614
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !6615

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %dquot.addr, align 8, !dbg !6616
  %dq_sb = getelementptr inbounds %struct.dquot, ptr %7, i32 0, i32 7, !dbg !6616
  %8 = load ptr, ptr %dq_sb, align 8, !dbg !6616
  %9 = load i32, ptr %blk.addr, align 4, !dbg !6616
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %8, ptr noundef @__func__.find_block_dqentry, ptr noundef @.str.26, i32 noundef %9) #17, !dbg !6616
  br label %out_buf, !dbg !6618

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %buf, align 8, !dbg !6619
  %add.ptr = getelementptr i8, ptr %10, i64 16, !dbg !6620
  store ptr %add.ptr, ptr %ddquot, align 8, !dbg !6621
  store i32 0, ptr %i, align 4, !dbg !6622
  br label %for.cond, !dbg !6624

for.cond:                                         ; preds = %for.inc, %if.end4
  %11 = load i32, ptr %i, align 4, !dbg !6625
  %12 = load ptr, ptr %info.addr, align 8, !dbg !6627
  %call5 = call i32 @qtree_dqstr_in_blk(ptr noundef %12) #17, !dbg !6628
  %cmp6 = icmp slt i32 %11, %call5, !dbg !6629
  br i1 %cmp6, label %for.body, label %for.end, !dbg !6630

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %info.addr, align 8, !dbg !6631
  %dqi_ops = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %13, i32 0, i32 9, !dbg !6634
  %14 = load ptr, ptr %dqi_ops, align 8, !dbg !6634
  %is_id = getelementptr inbounds %struct.qtree_fmt_operations, ptr %14, i32 0, i32 2, !dbg !6635
  %15 = load ptr, ptr %is_id, align 8, !dbg !6635
  %16 = load ptr, ptr %ddquot, align 8, !dbg !6636
  %17 = load ptr, ptr %dquot.addr, align 8, !dbg !6637
  %call8 = call i32 %15(ptr noundef %16, ptr noundef %17) #17, !dbg !6631
  %tobool9 = icmp ne i32 %call8, 0, !dbg !6631
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !6638

if.then10:                                        ; preds = %for.body
  br label %for.end, !dbg !6639

if.end11:                                         ; preds = %for.body
  %18 = load ptr, ptr %info.addr, align 8, !dbg !6640
  %dqi_entry_size = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %18, i32 0, i32 6, !dbg !6641
  %19 = load i32, ptr %dqi_entry_size, align 4, !dbg !6641
  %20 = load ptr, ptr %ddquot, align 8, !dbg !6642
  %idx.ext = zext i32 %19 to i64, !dbg !6642
  %add.ptr12 = getelementptr i8, ptr %20, i64 %idx.ext, !dbg !6642
  store ptr %add.ptr12, ptr %ddquot, align 8, !dbg !6642
  br label %for.inc, !dbg !6643

for.inc:                                          ; preds = %if.end11
  %21 = load i32, ptr %i, align 4, !dbg !6644
  %inc = add i32 %21, 1, !dbg !6644
  store i32 %inc, ptr %i, align 4, !dbg !6644
  br label %for.cond, !dbg !6645, !llvm.loop !6646

for.end:                                          ; preds = %if.then10, %for.cond
  %22 = load i32, ptr %i, align 4, !dbg !6648
  %23 = load ptr, ptr %info.addr, align 8, !dbg !6650
  %call13 = call i32 @qtree_dqstr_in_blk(ptr noundef %23) #17, !dbg !6651
  %cmp14 = icmp eq i32 %22, %call13, !dbg !6652
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !6653

if.then16:                                        ; preds = %for.end
  %24 = load ptr, ptr %dquot.addr, align 8, !dbg !6654
  %dq_sb17 = getelementptr inbounds %struct.dquot, ptr %24, i32 0, i32 7, !dbg !6654
  %25 = load ptr, ptr %dq_sb17, align 8, !dbg !6654
  %26 = load ptr, ptr %dquot.addr, align 8, !dbg !6654
  %dq_id = getelementptr inbounds %struct.dquot, ptr %26, i32 0, i32 8, !dbg !6654
  %27 = load i64, ptr %dq_id, align 8, !dbg !6654
  %call18 = call i32 @from_kqid(ptr noundef @init_user_ns, i64 %27) #17, !dbg !6654
  call void (ptr, ptr, ptr, ...) @__quota_error(ptr noundef %25, ptr noundef @__func__.find_block_dqentry, ptr noundef @.str.27, i32 noundef %call18) #17, !dbg !6654
  store i64 -5, ptr %ret, align 8, !dbg !6656
  br label %out_buf, !dbg !6657

if.else:                                          ; preds = %for.end
  %28 = load i32, ptr %blk.addr, align 4, !dbg !6658
  %conv19 = zext i32 %28 to i64, !dbg !6660
  %29 = load ptr, ptr %info.addr, align 8, !dbg !6661
  %dqi_blocksize_bits = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %29, i32 0, i32 5, !dbg !6662
  %30 = load i32, ptr %dqi_blocksize_bits, align 8, !dbg !6662
  %sh_prom = zext i32 %30 to i64, !dbg !6663
  %shl = shl i64 %conv19, %sh_prom, !dbg !6663
  %add = add i64 %shl, 16, !dbg !6664
  %31 = load i32, ptr %i, align 4, !dbg !6665
  %32 = load ptr, ptr %info.addr, align 8, !dbg !6666
  %dqi_entry_size20 = getelementptr inbounds %struct.qtree_mem_dqinfo, ptr %32, i32 0, i32 6, !dbg !6667
  %33 = load i32, ptr %dqi_entry_size20, align 4, !dbg !6667
  %mul = mul i32 %31, %33, !dbg !6668
  %conv21 = zext i32 %mul to i64, !dbg !6665
  %add22 = add i64 %add, %conv21, !dbg !6669
  store i64 %add22, ptr %ret, align 8, !dbg !6670
  br label %if.end23

if.end23:                                         ; preds = %if.else
  br label %out_buf, !dbg !6671

out_buf:                                          ; preds = %if.end23, %if.then16, %if.then3
  call void @llvm.dbg.label(metadata !6588), !dbg !6672
  %34 = load ptr, ptr %buf, align 8, !dbg !6673
  call void @kfree(ptr noundef %34) #17, !dbg !6674
  %35 = load i64, ptr %ret, align 8, !dbg !6675
  store i64 %35, ptr %retval, align 8, !dbg !6676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6676

cleanup:                                          ; preds = %out_buf, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ddquot) #15, !dbg !6677
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6677
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #15, !dbg !6677
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !6677
  %36 = load i64, ptr %retval, align 8, !dbg !6677
  ret i64 %36, !dbg !6677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6678 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6686, metadata !DIExpression()), !dbg !6688
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6687, metadata !DIExpression()), !dbg !6689
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6690
  %1 = load i64, ptr %size.addr, align 8, !dbg !6691
  %conv = trunc i64 %1 to i32, !dbg !6691
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6692
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6693
  %3 = load i64, ptr %size.addr, align 8, !dbg !6693
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6693
  ret void, !dbg !6694
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6695 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6698, metadata !DIExpression()), !dbg !6700
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6699, metadata !DIExpression()), !dbg !6701
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6702
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6704
  br i1 %1, label %if.then, label %if.else, !dbg !6705

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6706
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6706
  %shr = ashr i64 %3, 3, !dbg !6706
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6706
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6708
  %and = and i64 %4, 7, !dbg !6708
  %sh_prom = trunc i64 %and to i32, !dbg !6708
  %shl = shl i32 1, %sh_prom, !dbg !6708
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #15, !dbg !6709, !srcloc !6710
  br label %if.end, !dbg !6711

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6712
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6714
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #15, !dbg !6715, !srcloc !6716
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6717
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6718 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6723, metadata !DIExpression()), !dbg !6725
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6724, metadata !DIExpression()), !dbg !6726
  ret i1 true, !dbg !6727
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !6728 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6733, metadata !DIExpression()), !dbg !6736
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6734, metadata !DIExpression()), !dbg !6737
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6735, metadata !DIExpression()), !dbg !6738
  ret void, !dbg !6739
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !6740 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6742, metadata !DIExpression()), !dbg !6744
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6743, metadata !DIExpression()), !dbg !6745
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6746
  %1 = load i64, ptr %size.addr, align 8, !dbg !6747
  %conv = trunc i64 %1 to i32, !dbg !6747
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #17, !dbg !6748
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6749
  %3 = load i64, ptr %size.addr, align 8, !dbg !6749
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #17, !dbg !6749
  ret void, !dbg !6750
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6751 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6753, metadata !DIExpression()), !dbg !6755
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6754, metadata !DIExpression()), !dbg !6756
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6757
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6758
  br i1 %1, label %cond.true, label %cond.false, !dbg !6758

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6759
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6760
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !6761
  %conv = zext i1 %call to i32, !dbg !6761
  br label %cond.end, !dbg !6758

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6762
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6763
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #17, !dbg !6764
  %conv2 = zext i1 %call1 to i32, !dbg !6764
  br label %cond.end, !dbg !6758

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !6758
  %tobool = icmp ne i32 %cond, 0, !dbg !6758
  ret i1 %tobool, !dbg !6765
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !6766 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6768, metadata !DIExpression()), !dbg !6770
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6769, metadata !DIExpression()), !dbg !6771
  ret i1 true, !dbg !6772
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6773 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6777, metadata !DIExpression()), !dbg !6779
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6778, metadata !DIExpression()), !dbg !6780
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6781
  %and = and i64 %0, 63, !dbg !6782
  %shl = shl i64 1, %and, !dbg !6783
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6784
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6785
  %shr = ashr i64 %2, 6, !dbg !6786
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !6784
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !6784
  %and1 = and i64 %shl, %3, !dbg !6787
  %cmp = icmp ne i64 %and1, 0, !dbg !6788
  ret i1 %cmp, !dbg !6789
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !6790 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6792, metadata !DIExpression()), !dbg !6795
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6793, metadata !DIExpression()), !dbg !6796
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !6797
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !6794, metadata !DIExpression()), !dbg !6798
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6799
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6800
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !6801, !srcloc !6802
  %3 = icmp ult i8 %2, 2, !dbg !6801
  call void @llvm.assume(i1 %3), !dbg !6801
  store i8 %2, ptr %oldbit, align 1, !dbg !6801
  %4 = load i8, ptr %oldbit, align 1, !dbg !6803, !range !5206, !noundef !1399
  %tobool = trunc i8 %4 to i1, !dbg !6803
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !6804
  ret i1 %tobool, !dbg !6805
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #4 align 16 !dbg !6806 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6810, metadata !DIExpression()), !dbg !6812
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !6811, metadata !DIExpression()), !dbg !6813
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6814
  %0 = load i32, ptr %uid.addr, align 4, !dbg !6814
  store i32 %0, ptr %val, align 4, !dbg !6814
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !6815
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6815
  ret i32 %1, !dbg !6815
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #4 align 16 !dbg !6816 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6820, metadata !DIExpression()), !dbg !6822
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !6821, metadata !DIExpression()), !dbg !6823
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6824
  %0 = load i32, ptr %gid.addr, align 4, !dbg !6824
  store i32 %0, ptr %val, align 4, !dbg !6824
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !6825
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6825
  ret i32 %1, !dbg !6825
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kprojid(ptr noundef %from, i32 noundef %projid) #4 align 16 !dbg !6826 {
entry:
  %retval = alloca %struct.kprojid_t, align 4
  %from.addr = alloca ptr, align 8
  %projid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6830, metadata !DIExpression()), !dbg !6832
  store i32 %projid, ptr %projid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %projid.addr, metadata !6831, metadata !DIExpression()), !dbg !6833
  %val = getelementptr inbounds %struct.kprojid_t, ptr %retval, i32 0, i32 0, !dbg !6834
  %0 = load i32, ptr %projid.addr, align 4, !dbg !6834
  store i32 %0, ptr %val, align 4, !dbg !6834
  %coerce.dive = getelementptr inbounds %struct.kprojid_t, ptr %retval, i32 0, i32 0, !dbg !6835
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !6835
  ret i32 %1, !dbg !6835
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!326, !327, !328, !329, !330, !331, !332, !333}
!llvm.ident = !{!334}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author259", scope: !2, file: !3, line: 20, type: !323, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/quota/.quota_tree.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/quota/quota_tree\22 -D KBUILD_BASENAME=\22quota_tree\22 -D KBUILD_MODNAME=\22quota_tree\22 -D __KBUILD_MODNAME=kmod_quota_tree -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/quota/quota_tree.ll fs/quota/quota_tree.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !127, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/quota/quota_tree.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3511058a3113d1bddafe43c8545a7a36")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63, !74, !79}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 253, baseType: !7, size: 32, elements: !64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73}
!65 = !DIEnumerator(name: "DQST_LOOKUPS", value: 0)
!66 = !DIEnumerator(name: "DQST_DROPS", value: 1)
!67 = !DIEnumerator(name: "DQST_READS", value: 2)
!68 = !DIEnumerator(name: "DQST_WRITES", value: 3)
!69 = !DIEnumerator(name: "DQST_CACHE_HITS", value: 4)
!70 = !DIEnumerator(name: "DQST_ALLOC_DQUOTS", value: 5)
!71 = !DIEnumerator(name: "DQST_FREE_DQUOTS", value: 6)
!72 = !DIEnumerator(name: "DQST_SYNCS", value: 7)
!73 = !DIEnumerator(name: "_DQST_DQSTAT_LAST", value: 8)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !75, line: 10, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!76 = !{!77, !78}
!77 = !DIEnumerator(name: "false", value: 0)
!78 = !DIEnumerator(name: "true", value: 1)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !80, line: 364, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!81 = !{!82, !83, !84, !85, !86, !87, !88}
!82 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!83 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!84 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!85 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!86 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!87 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!88 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!89 = !{!90, !91, !93, !95, !94, !97, !100, !98, !102, !110, !109, !114, !118, !119, !120, !123, !126}
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !92, line: 154, baseType: !7)
!92 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !92, line: 42, baseType: !94)
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !99, line: 38, baseType: !100)
!99 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !101, line: 27, baseType: !7)
!101 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qt_disk_dqdbheader", file: !104, line: 16, size: 128, elements: !105)
!104 = !DIFile(filename: "fs/quota/quota_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d31cf5efba6b2e2e4b55fb003667cd05")
!105 = !{!106, !107, !108, !112, !113}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "dqdh_next_free", scope: !103, file: !104, line: 17, baseType: !98, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dqdh_prev_free", scope: !103, file: !104, line: 18, baseType: !98, size: 32, offset: 32)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "dqdh_entries", scope: !103, file: !104, line: 19, baseType: !109, size: 16, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !99, line: 36, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !101, line: 24, baseType: !111)
!111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "dqdh_pad1", scope: !103, file: !104, line: 20, baseType: !109, size: 16, offset: 80)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dqdh_pad2", scope: !103, file: !104, line: 21, baseType: !98, size: 32, offset: 96)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !92, line: 52, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !116, line: 88, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!117 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !92, line: 93, baseType: !7)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !122)
!122 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !125)
!125 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!127 = !{!0, !128, !134, !139, !144, !146, !151, !156, !161, !163, !168, !173, !175, !180, !185, !190, !195, !197, !199, !201, !206, !211, !213, !215, !218, !223, !228, !233, !238, !241, !243, !248, !250, !252, !254, !259, !261, !266, !269, !274, !279, !284, !286, !288, !291, !296, !298, !303, !305, !307, !309, !311, !316, !318}
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description260", scope: !2, file: !3, line: 21, type: !130, isLocal: true, isDefinition: true, align: 8)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 336, elements: !132)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!132 = !{!133}
!133 = !DISubrange(count: 42)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file261", scope: !2, file: !3, line: 22, type: !136, isLocal: true, isDefinition: true, align: 8)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 288, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 36)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license262", scope: !2, file: !3, line: 22, type: !141, isLocal: true, isDefinition: true, align: 8)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 184, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 23)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qtree_entry_unused263", scope: !2, file: !3, line: 256, type: !90, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 144, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 18)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 453, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 320, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 40)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 465, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 160, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 20)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qtree_write_dquot264", scope: !2, file: !3, line: 476, type: !90, isLocal: true, isDefinition: true)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 614, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 152, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 19)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 614, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 208, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 26)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qtree_delete_dquot265", scope: !2, file: !3, line: 619, type: !90, isLocal: true, isDefinition: true)
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(scope: null, file: !3, line: 730, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 136, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 17)
!180 = !DIGlobalVariableExpression(var: !181, expr: !DIExpression())
!181 = distinct !DIGlobalVariable(scope: null, file: !3, line: 730, type: !182, isLocal: true, isDefinition: true)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 264, elements: !183)
!183 = !{!184}
!184 = !DISubrange(count: 33)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !3, line: 739, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 296, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 37)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !3, line: 759, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 368, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 46)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qtree_read_dquot266", scope: !2, file: !3, line: 779, type: !90, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qtree_release_dquot267", scope: !2, file: !3, line: 790, type: !90, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_qtree_get_next_id268", scope: !2, file: !3, line: 853, type: !90, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !80, line: 480, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 168, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 21)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 120, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 15)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 424, type: !182, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !208, isLocal: true, isDefinition: true)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(scope: null, file: !3, line: 352, type: !217, isLocal: true, isDefinition: true)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 336, elements: !132)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 364, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 248, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 31)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 371, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 48, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 6)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 380, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 384, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 48)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 392, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 392, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 49)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 120, elements: !209)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !240, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 107, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 104, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 13)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !208, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !182, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !148, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 298, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 360, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 45)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 313, type: !182, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 256, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 32)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 160, elements: !159)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !271, isLocal: true, isDefinition: true)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 328, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 41)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 80, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 10)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !3, line: 557, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 96, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 12)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !3, line: 557, type: !220, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !3, line: 596, type: !263, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 104, elements: !246)
!291 = !DIGlobalVariableExpression(var: !292, expr: !DIExpression())
!292 = distinct !DIGlobalVariable(scope: null, file: !3, line: 489, type: !293, isLocal: true, isDefinition: true)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 536, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 67)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !192, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !3, line: 524, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 432, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 54)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !3, line: 713, type: !290, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 673, type: !148, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 673, type: !220, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 634, type: !165, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 344, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 43)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !3, line: 810, type: !290, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !40, line: 114, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 176, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 22)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 216, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 27)
!326 = !{i32 7, !"Dwarf Version", i32 5}
!327 = !{i32 2, !"Debug Info Version", i32 3}
!328 = !{i32 1, !"wchar_size", i32 2}
!329 = !{i32 8, !"cf-protection-branch", i32 1}
!330 = !{i32 4, !"function_return_thunk_extern", i32 1}
!331 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!332 = !{i32 1, !"Code Model", i32 2}
!333 = !{i32 1, !"override-stack-alignment", i32 8}
!334 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!335 = distinct !DISubprogram(name: "qtree_entry_unused", scope: !3, file: !3, line: 247, type: !336, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4106)
!336 = !DISubroutineType(types: !337)
!337 = !{!118, !338, !492}
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qtree_mem_dqinfo", file: !340, line: 29, size: 384, elements: !341)
!340 = !DIFile(filename: "./include/linux/dqblk_qtree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a37abcc49522b6303b5c210297d4528e")
!341 = !{!342, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_sb", scope: !339, file: !340, line: 30, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !345)
!345 = !{!346, !352, !357, !359, !360, !361, !2495, !2624, !2664, !2746, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2763, !2767, !2768, !2771, !2774, !2777, !2780, !2781, !2782, !2823, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4031, !4032, !4033, !4034, !4035, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !344, file: !35, line: 1191, baseType: !347, size: 128)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !92, line: 190, size: 128, elements: !348)
!348 = !{!349, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !92, line: 191, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !347, file: !92, line: 191, baseType: !350, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !344, file: !35, line: 1192, baseType: !353, size: 32, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !92, line: 21, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !92, line: 18, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !356, line: 21, baseType: !100)
!356 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !344, file: !35, line: 1193, baseType: !358, size: 8, offset: 160)
!358 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !344, file: !35, line: 1194, baseType: !94, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !344, file: !35, line: 1195, baseType: !114, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !344, file: !35, line: 1196, baseType: !362, size: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !364)
!364 = !{!365, !367, !368, !375, !379, !2478, !2482, !2483, !2484, !2485, !2487, !2488, !2489, !2491, !2492, !2493, !2494}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !363, file: !35, line: 2367, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !363, file: !35, line: 2368, baseType: !118, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !363, file: !35, line: 2376, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!118, !372}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !374, line: 21, flags: DIFlagFwdDecl)
!374 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!375 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !363, file: !35, line: 2377, baseType: !376, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !363, file: !35, line: 2378, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !362, !118, !366, !90}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !385, line: 82, size: 1536, elements: !386)
!385 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!386 = !{!387, !388, !398, !406, !407, !425, !2387, !2389, !2402, !2461, !2462, !2463, !2464, !2470, !2471, !2472}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !384, file: !385, line: 84, baseType: !7, size: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !384, file: !385, line: 85, baseType: !389, size: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !390, line: 275, baseType: !391)
!390 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !390, line: 275, size: 32, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !391, file: !390, line: 275, baseType: !394, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !390, line: 69, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !390, line: 64, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !395, file: !390, line: 65, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !384, file: !385, line: 86, baseType: !399, size: 128, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !400, line: 38, size: 128, elements: !401)
!400 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!401 = !{!402, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !400, line: 39, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !399, file: !400, line: 39, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !384, file: !385, line: 87, baseType: !383, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !384, file: !385, line: 88, baseType: !408, size: 128, offset: 256)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !385, line: 49, size: 128, elements: !409)
!409 = !{!410, !422}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !385, line: 50, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !408, file: !385, line: 50, size: 64, elements: !412)
!412 = !{!413, !418}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !385, line: 51, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !385, line: 51, size: 64, elements: !415)
!415 = !{!416, !417}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !414, file: !385, line: 52, baseType: !355, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !414, file: !385, line: 52, baseType: !355, size: 32, offset: 32)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !411, file: !385, line: 54, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !356, line: 23, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !421)
!421 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !408, file: !385, line: 56, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !358)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !384, file: !385, line: 89, baseType: !426, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !428)
!428 = !{!429, !431, !432, !440, !441, !448, !449, !452, !453, !2319, !2320, !2321, !2322, !2323, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2367, !2370, !2371, !2372, !2381, !2382, !2383, !2386}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !427, file: !35, line: 642, baseType: !430, size: 16)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !92, line: 24, baseType: !111)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !427, file: !35, line: 643, baseType: !111, size: 16, offset: 16)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !427, file: !35, line: 644, baseType: !433, size: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !434, line: 23, baseType: !435)
!434 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 21, size: 32, elements: !436)
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !435, file: !434, line: 22, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !92, line: 37, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !116, line: 49, baseType: !7)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !427, file: !35, line: 645, baseType: !347, size: 128, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !427, file: !35, line: 646, baseType: !442, size: 32, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !434, line: 28, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 26, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !443, file: !434, line: 27, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !92, line: 38, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !116, line: 50, baseType: !7)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !427, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !427, file: !35, line: 650, baseType: !450, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !427, file: !35, line: 651, baseType: !450, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !427, file: !35, line: 654, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !457)
!457 = !{!458, !462, !475, !482, !488, !493, !497, !501, !505, !509, !513, !514, !518, !522, !2239, !2270, !2274, !2280, !2284, !2288, !2292, !2296, !2300, !2306, !2310}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !456, file: !35, line: 1967, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!383, !426, !383, !7}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !456, file: !35, line: 1968, baseType: !463, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!366, !383, !426, !466}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !468, line: 10, size: 128, elements: !469)
!468 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!469 = !{!470, !474}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !467, file: !468, line: 11, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !90}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !467, file: !468, line: 12, baseType: !90, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !456, file: !35, line: 1969, baseType: !476, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!118, !479, !426, !118}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !481, line: 42, flags: DIFlagFwdDecl)
!481 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !456, file: !35, line: 1970, baseType: !483, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!450, !426, !118, !486}
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !92, line: 35, baseType: !487)
!487 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !456, file: !35, line: 1972, baseType: !489, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!118, !383, !492, !118}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !456, file: !35, line: 1974, baseType: !494, size: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!118, !479, !426, !383, !430, !486}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !456, file: !35, line: 1976, baseType: !498, size: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!118, !383, !426, !383}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !456, file: !35, line: 1977, baseType: !502, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!118, !426, !383}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !456, file: !35, line: 1978, baseType: !506, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!118, !479, !426, !383, !366}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !456, file: !35, line: 1980, baseType: !510, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!118, !479, !426, !383, !430}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !456, file: !35, line: 1982, baseType: !502, size: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !456, file: !35, line: 1983, baseType: !515, size: 64, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!118, !479, !426, !383, !430, !353}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !456, file: !35, line: 1985, baseType: !519, size: 64, offset: 768)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!118, !479, !426, !383, !426, !383, !7}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !456, file: !35, line: 1987, baseType: !523, size: 64, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!118, !479, !383, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !528)
!528 = !{!529, !530, !531, !541, !550, !551, !559, !560, !561}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !527, file: !35, line: 227, baseType: !7, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !527, file: !35, line: 228, baseType: !430, size: 16, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !35, line: 241, baseType: !532, size: 32, offset: 64)
!532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !35, line: 241, size: 32, elements: !533)
!533 = !{!534, !535}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !532, file: !35, line: 242, baseType: !433, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !532, file: !35, line: 243, baseType: !536, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !537, line: 16, baseType: !538)
!537 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 14, size: 32, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !538, file: !537, line: 15, baseType: !438, size: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !35, line: 245, baseType: !542, size: 32, offset: 96)
!542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !35, line: 245, size: 32, elements: !543)
!543 = !{!544, !545}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !542, file: !35, line: 246, baseType: !442, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !542, file: !35, line: 247, baseType: !546, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !537, line: 20, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !537, line: 18, size: 32, elements: !548)
!548 = !{!549}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !547, file: !537, line: 19, baseType: !446, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !527, file: !35, line: 249, baseType: !114, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !527, file: !35, line: 250, baseType: !552, size: 128, offset: 192)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !553, line: 13, size: 128, elements: !554)
!553 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!554 = !{!555, !558}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !552, file: !553, line: 14, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !553, line: 8, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !117)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !552, file: !553, line: 15, baseType: !125, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !527, file: !35, line: 251, baseType: !552, size: 128, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !527, file: !35, line: 252, baseType: !552, size: 128, offset: 448)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !527, file: !35, line: 259, baseType: !562, size: 64, offset: 576)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !564)
!564 = !{!565, !584, !622, !624, !632, !645, !646, !647, !721, !925, !934, !947, !948, !2231, !2232, !2233, !2234, !2236, !2237, !2238}
!565 = !DIDerivedType(tag: DW_TAG_member, scope: !563, file: !35, line: 995, baseType: !566, size: 128)
!566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !563, file: !35, line: 995, size: 128, elements: !567)
!567 = !{!568, !574, !583}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !566, file: !35, line: 996, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !570, line: 60, size: 64, elements: !571)
!570 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !569, file: !570, line: 61, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !566, file: !35, line: 997, baseType: !575, size: 128, align: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !92, line: 232, size: 128, align: 64, elements: !576)
!576 = !{!577, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !92, line: 233, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !575, file: !92, line: 234, baseType: !580, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !578}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !566, file: !35, line: 998, baseType: !7, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !563, file: !35, line: 1005, baseType: !585, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !586, line: 29, baseType: !587)
!586 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !586, line: 17, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !586, line: 18, baseType: !590, size: 32)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !587, file: !586, line: 18, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !590, file: !586, line: 19, baseType: !593, size: 32)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !594, line: 14, size: 32, elements: !595)
!594 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !593, file: !594, line: 15, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !598, line: 44, baseType: !599)
!598 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !598, line: 14, size: 32, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, scope: !599, file: !598, line: 15, baseType: !602, size: 32)
!602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !599, file: !598, line: 15, size: 32, elements: !603)
!603 = !{!604, !609, !616}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !602, file: !598, line: 16, baseType: !605, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !92, line: 174, baseType: !606)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 172, size: 32, elements: !607)
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !606, file: !92, line: 173, baseType: !118, size: 32)
!609 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !598, line: 24, baseType: !610, size: 16)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !602, file: !598, line: 24, size: 16, elements: !611)
!611 = !{!612, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !610, file: !598, line: 25, baseType: !613, size: 8)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !356, line: 17, baseType: !614)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !101, line: 21, baseType: !358)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !610, file: !598, line: 26, baseType: !613, size: 8, offset: 8)
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !602, file: !598, line: 28, baseType: !617, size: 32)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !602, file: !598, line: 28, size: 32, elements: !618)
!618 = !{!619, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !617, file: !598, line: 29, baseType: !620, size: 16)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !356, line: 19, baseType: !110)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !617, file: !598, line: 30, baseType: !620, size: 16, offset: 16)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !563, file: !35, line: 1006, baseType: !623, size: 32, offset: 160)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !92, line: 156, baseType: !7)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !563, file: !35, line: 1007, baseType: !625, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !626, line: 13, baseType: !627)
!626 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !92, line: 181, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 179, size: 64, elements: !629)
!629 = !{!630}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !628, file: !92, line: 180, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !356, line: 22, baseType: !557)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !563, file: !35, line: 1008, baseType: !633, size: 256, offset: 256)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !634, line: 66, size: 256, elements: !635)
!634 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!635 = !{!636, !637, !639, !644}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !633, file: !634, line: 67, baseType: !625, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !633, file: !634, line: 68, baseType: !638, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !594, line: 23, baseType: !593)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !633, file: !634, line: 70, baseType: !640, size: 32, offset: 96)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !641, line: 15, size: 32, elements: !642)
!641 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !640, file: !641, line: 20, baseType: !605, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !633, file: !634, line: 72, baseType: !347, size: 128, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !563, file: !35, line: 1009, baseType: !114, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !563, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !563, file: !35, line: 1011, baseType: !648, size: 256, offset: 640)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !649)
!649 = !{!650, !673, !717, !718, !719, !720}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !648, file: !35, line: 949, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !652, line: 34, baseType: !653)
!652 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !652, line: 25, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !653, file: !652, line: 26, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !657, line: 27, baseType: !658)
!657 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !657, line: 13, size: 64, elements: !659)
!659 = !{!660, !672}
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !657, line: 14, baseType: !661, size: 32)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !657, line: 14, size: 32, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !661, file: !657, line: 15, baseType: !605, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !657, line: 16, baseType: !665, size: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !661, file: !657, line: 16, size: 32, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !665, file: !657, line: 18, baseType: !613, size: 8)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !665, file: !657, line: 19, baseType: !669, size: 24, offset: 8)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 24, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 3)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !658, file: !657, line: 26, baseType: !597, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !648, file: !35, line: 950, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !676)
!676 = !{!677, !683, !684, !685, !698, !699, !706, !707}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !675, file: !6, line: 61, baseType: !678, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !679, line: 113, baseType: !680)
!679 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !679, line: 111, size: 32, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !680, file: !679, line: 112, baseType: !605, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !675, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !675, file: !6, line: 63, baseType: !585, size: 32, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !675, file: !6, line: 65, baseType: !686, size: 256, offset: 128)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 256, elements: !696)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !92, line: 194, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !687, file: !92, line: 195, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !92, line: 198, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !92, line: 199, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !691, file: !92, line: 199, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!696 = !{!697}
!697 = !DISubrange(count: 4)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !675, file: !6, line: 66, baseType: !687, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !675, file: !6, line: 68, baseType: !700, size: 192, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !701, line: 41, baseType: !702)
!701 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !701, line: 37, size: 192, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !702, file: !701, line: 38, baseType: !585, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !702, file: !701, line: 39, baseType: !347, size: 128, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !675, file: !6, line: 69, baseType: !575, size: 128, align: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !675, file: !6, line: 70, baseType: !708, offset: 768)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, elements: !715)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !709, file: !6, line: 55, baseType: !118, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !709, file: !6, line: 56, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!715 = !{!716}
!716 = !DISubrange(count: -1)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !648, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !648, file: !35, line: 952, baseType: !433, size: 32, offset: 160)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !648, file: !35, line: 952, baseType: !433, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !648, file: !35, line: 953, baseType: !118, size: 32, offset: 224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !563, file: !35, line: 1012, baseType: !722, size: 64, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !725, line: 110, size: 1472, elements: !726)
!725 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !742, !743, !744, !745, !746, !747, !870, !871, !872, !873, !874, !905, !908, !912, !920}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !724, file: !725, line: 111, baseType: !625, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !724, file: !725, line: 112, baseType: !433, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !724, file: !725, line: 113, baseType: !442, size: 32, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !724, file: !725, line: 114, baseType: !433, size: 32, offset: 128)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !724, file: !725, line: 115, baseType: !442, size: 32, offset: 160)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !724, file: !725, line: 116, baseType: !433, size: 32, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !724, file: !725, line: 117, baseType: !442, size: 32, offset: 224)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !724, file: !725, line: 118, baseType: !433, size: 32, offset: 256)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !724, file: !725, line: 119, baseType: !442, size: 32, offset: 288)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !724, file: !725, line: 120, baseType: !7, size: 32, offset: 320)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !724, file: !725, line: 121, baseType: !738, size: 64, offset: 384)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !481, line: 24, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 24, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !739, file: !481, line: 24, baseType: !419, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !724, file: !725, line: 122, baseType: !738, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !724, file: !725, line: 123, baseType: !738, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !724, file: !725, line: 124, baseType: !738, size: 64, offset: 576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !724, file: !725, line: 125, baseType: !738, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !724, file: !725, line: 127, baseType: !358, size: 8, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !724, file: !725, line: 129, baseType: !748, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !750, line: 195, size: 1728, elements: !751)
!750 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!751 = !{!752, !753, !758, !770, !779, !782, !783, !788, !789, !790, !791, !794, !795, !796, !798, !799, !834, !855}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !749, file: !750, line: 196, baseType: !678, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !749, file: !750, line: 197, baseType: !754, size: 32, offset: 32)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !750, line: 28, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !92, line: 104, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !356, line: 20, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !118)
!758 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !750, line: 198, baseType: !759, size: 192, offset: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !750, line: 198, size: 192, elements: !760)
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !759, file: !750, line: 199, baseType: !347, size: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !759, file: !750, line: 200, baseType: !763, size: 192, align: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !764, line: 5, size: 192, align: 64, elements: !765)
!764 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!765 = !{!766, !767, !769}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !763, file: !764, line: 6, baseType: !94, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !763, file: !764, line: 7, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !763, file: !764, line: 8, baseType: !768, size: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !749, file: !750, line: 205, baseType: !771, size: 320, offset: 256)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !772, line: 48, size: 320, elements: !773)
!772 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!773 = !{!774, !775, !776, !777, !778}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !772, line: 49, baseType: !625, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !771, file: !772, line: 55, baseType: !625, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !771, file: !772, line: 57, baseType: !640, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !771, file: !772, line: 59, baseType: !638, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !771, file: !772, line: 60, baseType: !347, size: 128, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !749, file: !750, line: 206, baseType: !780, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !750, line: 206, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !749, file: !750, line: 207, baseType: !90, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !750, line: 208, baseType: !784, size: 64, offset: 704)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !750, line: 208, size: 64, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !784, file: !750, line: 209, baseType: !556, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !784, file: !750, line: 210, baseType: !556, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !749, file: !750, line: 212, baseType: !556, size: 64, offset: 768)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !749, file: !750, line: 213, baseType: !433, size: 32, offset: 832)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !749, file: !750, line: 214, baseType: !442, size: 32, offset: 864)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !749, file: !750, line: 215, baseType: !792, size: 32, offset: 896)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !750, line: 31, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !92, line: 110, baseType: !355)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !749, file: !750, line: 216, baseType: !111, size: 16, offset: 928)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !749, file: !750, line: 217, baseType: !111, size: 16, offset: 944)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !749, file: !750, line: 221, baseType: !797, size: 16, offset: 960)
!797 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !749, file: !750, line: 228, baseType: !94, size: 64, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !750, line: 245, baseType: !800, size: 320, offset: 1088)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !750, line: 245, size: 320, elements: !801)
!801 = !{!802, !826}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !800, file: !750, line: 246, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !750, line: 114, size: 320, elements: !804)
!804 = !{!805, !806, !815, !818, !825}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !803, file: !750, line: 116, baseType: !94, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !750, line: 117, baseType: !807, size: 64, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !750, line: 117, size: 64, elements: !808)
!808 = !{!809, !814}
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !750, line: 118, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !750, line: 118, size: 64, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !810, file: !750, line: 120, baseType: !620, size: 16)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !810, file: !750, line: 121, baseType: !225, size: 48, offset: 16)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !807, file: !750, line: 127, baseType: !94, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !750, line: 129, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !750, line: 102, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !803, file: !750, line: 130, baseType: !819, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !750, line: 108, size: 192, elements: !821)
!821 = !{!822, !823, !824}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !820, file: !750, line: 109, baseType: !575, size: 128, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !820, file: !750, line: 110, baseType: !678, size: 32, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !820, file: !750, line: 111, baseType: !486, size: 8, offset: 160)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !803, file: !750, line: 131, baseType: !366, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !750, line: 247, baseType: !827, size: 320)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !750, line: 247, size: 320, elements: !828)
!828 = !{!829, !830, !831, !832, !833}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !827, file: !750, line: 248, baseType: !94, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !827, file: !750, line: 249, baseType: !94, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !827, file: !750, line: 250, baseType: !816, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !827, file: !750, line: 251, baseType: !819, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !827, file: !750, line: 252, baseType: !492, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !749, file: !750, line: 260, baseType: !835, size: 256, offset: 1408)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !749, file: !750, line: 260, size: 256, elements: !836)
!836 = !{!837, !843}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !835, file: !750, line: 261, baseType: !838, size: 256)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !750, line: 134, size: 256, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !838, file: !750, line: 135, baseType: !90, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !838, file: !750, line: 136, baseType: !842, size: 256)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !696)
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !750, line: 262, baseType: !844, size: 256)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !835, file: !750, line: 262, size: 256, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !844, file: !750, line: 264, baseType: !347, size: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !844, file: !750, line: 265, baseType: !848, size: 128, offset: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !849, line: 22, size: 128, elements: !850)
!849 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!850 = !{!851, !854}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !848, file: !849, line: 23, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !849, line: 23, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !848, file: !849, line: 24, baseType: !94, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !749, file: !750, line: 280, baseType: !856, size: 64, offset: 1664)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !750, line: 176, size: 192, elements: !858)
!858 = !{!859, !868, !869}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !857, file: !750, line: 177, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !750, line: 171, baseType: !861)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{!118, !748, !864, !866, !748}
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !857, file: !750, line: 178, baseType: !748, size: 64, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !857, file: !750, line: 179, baseType: !816, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !724, file: !725, line: 130, baseType: !748, size: 64, offset: 832)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !724, file: !725, line: 131, baseType: !748, size: 64, offset: 896)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !724, file: !725, line: 132, baseType: !748, size: 64, offset: 960)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !724, file: !725, line: 135, baseType: !90, size: 64, offset: 1024)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !724, file: !725, line: 137, baseType: !875, size: 64, offset: 1088)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !877, line: 14, size: 1088, elements: !878)
!877 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!878 = !{!879, !880, !889, !890, !891, !892, !893, !894}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !876, file: !877, line: 15, baseType: !678, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !876, file: !877, line: 17, baseType: !881, size: 320, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !882, line: 22, size: 320, elements: !883)
!882 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!883 = !{!884, !885, !886, !887}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !881, file: !882, line: 23, baseType: !638, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !881, file: !882, line: 24, baseType: !631, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !881, file: !882, line: 26, baseType: !347, size: 128, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !881, file: !882, line: 28, baseType: !888, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !876, file: !877, line: 19, baseType: !94, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !876, file: !877, line: 20, baseType: !625, size: 64, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !876, file: !877, line: 23, baseType: !691, size: 128, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !876, file: !877, line: 24, baseType: !433, size: 32, offset: 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !876, file: !877, line: 29, baseType: !625, size: 64, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !876, file: !877, line: 36, baseType: !895, size: 320, offset: 768)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !896, line: 15, size: 320, elements: !897)
!896 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!897 = !{!898, !899, !900, !901, !902, !903, !904}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !895, file: !896, line: 16, baseType: !638, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !895, file: !896, line: 18, baseType: !118, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !895, file: !896, line: 19, baseType: !118, size: 32, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !895, file: !896, line: 20, baseType: !118, size: 32, offset: 96)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !895, file: !896, line: 21, baseType: !118, size: 32, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !895, file: !896, line: 22, baseType: !94, size: 64, offset: 192)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !895, file: !896, line: 23, baseType: !94, size: 64, offset: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !724, file: !725, line: 138, baseType: !906, size: 64, offset: 1152)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !434, line: 18, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !724, file: !725, line: 139, baseType: !909, size: 64, offset: 1216)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !911, line: 16, flags: DIFlagFwdDecl)
!911 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!912 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !724, file: !725, line: 140, baseType: !913, size: 64, offset: 1280)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !725, line: 25, size: 64, elements: !915)
!915 = !{!916, !917, !918}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !914, file: !725, line: 26, baseType: !605, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !914, file: !725, line: 27, baseType: !118, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !914, file: !725, line: 28, baseType: !919, offset: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, elements: !715)
!920 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 142, baseType: !921, size: 128, offset: 1344)
!921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 142, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !921, file: !725, line: 143, baseType: !118, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !921, file: !725, line: 144, baseType: !575, size: 128, align: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !563, file: !35, line: 1013, baseType: !926, size: 256, offset: 960)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !933}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !926, file: !35, line: 971, baseType: !94, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !926, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !926, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !926, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !926, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !926, file: !35, line: 976, baseType: !114, size: 64, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !563, file: !35, line: 1014, baseType: !935, size: 128, offset: 1216)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !936, line: 8, size: 128, elements: !937)
!936 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!937 = !{!938, !946}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !935, file: !936, line: 9, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !374, line: 70, size: 256, elements: !941)
!941 = !{!942, !943, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !940, file: !374, line: 71, baseType: !383, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !940, file: !374, line: 72, baseType: !343, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !940, file: !374, line: 73, baseType: !118, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !940, file: !374, line: 74, baseType: !479, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !935, file: !936, line: 10, baseType: !383, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !563, file: !35, line: 1015, baseType: !426, size: 64, offset: 1344)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !563, file: !35, line: 1016, baseType: !949, size: 64, offset: 1408)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !952)
!952 = !{!953, !2111, !2115, !2119, !2123, !2124, !2125, !2131, !2144, !2148, !2152, !2153, !2157, !2158, !2162, !2167, !2168, !2172, !2176, !2182, !2183, !2187, !2188, !2194, !2198, !2199, !2204, !2208, !2212, !2216, !2220, !2221, !2227}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !951, file: !35, line: 1915, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !956)
!956 = !{!957, !958, !959, !963, !1768, !1794, !1795, !1796, !1797, !1801, !1804, !1805, !1806, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1874, !1878, !1898, !1916, !1917, !1918, !1919, !1928, !1951, !1952, !1955, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1969, !1970, !2070, !2078, !2079, !2080, !2082, !2086, !2087, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2104, !2105, !2106, !2110}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !955, file: !15, line: 403, baseType: !14, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !955, file: !15, line: 406, baseType: !347, size: 128, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !955, file: !15, line: 409, baseType: !960, size: 448, offset: 192)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 448, elements: !961)
!961 = !{!962}
!962 = !DISubrange(count: 56)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !955, file: !15, line: 417, baseType: !964, size: 768, offset: 640)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !965)
!965 = !{!966, !1751, !1752, !1753, !1756}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !964, file: !15, line: 46, baseType: !967, size: 512)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !968, line: 64, size: 512, elements: !969)
!968 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!969 = !{!970, !971, !972, !974, !1018, !1630, !1741, !1746, !1747, !1748, !1749, !1750}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !967, file: !968, line: 65, baseType: !366, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !967, file: !968, line: 66, baseType: !347, size: 128, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !967, file: !968, line: 67, baseType: !973, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !967, file: !968, line: 68, baseType: !975, size: 64, offset: 256)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !968, line: 168, size: 768, elements: !977)
!977 = !{!978, !979, !980, !981}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !976, file: !968, line: 169, baseType: !347, size: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !976, file: !968, line: 170, baseType: !585, size: 32, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !976, file: !968, line: 171, baseType: !967, size: 512, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !976, file: !968, line: 172, baseType: !982, size: 64, offset: 704)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !968, line: 133, size: 192, elements: !985)
!985 = !{!986, !993, !998}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !984, file: !968, line: 134, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!118, !991}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !984, file: !968, line: 135, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!366, !991}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !984, file: !968, line: 136, baseType: !999, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!118, !991, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !968, line: 125, size: 20736, elements: !1005)
!1005 = !{!1006, !1008, !1012, !1013, !1017}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1004, file: !968, line: 126, baseType: !1007, size: 192)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 192, elements: !670)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1004, file: !968, line: 127, baseType: !1009, size: 4096, offset: 192)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !492, size: 4096, elements: !1010)
!1010 = !{!1011}
!1011 = !DISubrange(count: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1004, file: !968, line: 128, baseType: !118, size: 32, offset: 4288)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1004, file: !968, line: 129, baseType: !1014, size: 16384, offset: 4320)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 16384, elements: !1015)
!1015 = !{!1016}
!1016 = !DISubrange(count: 2048)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1004, file: !968, line: 130, baseType: !118, size: 32, offset: 20704)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !967, file: !968, line: 69, baseType: !1019, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !968, line: 116, size: 384, elements: !1022)
!1022 = !{!1023, !1027, !1052, !1592, !1620, !1624}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1021, file: !968, line: 117, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !973}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1021, file: !968, line: 118, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1031, line: 254, size: 128, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1032 = !{!1033, !1045}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1030, file: !1031, line: 255, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!1037, !973, !1040, !492}
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !92, line: 66, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !116, line: 73, baseType: !1039)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !116, line: 15, baseType: !125)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1031, line: 30, size: 128, elements: !1042)
!1042 = !{!1043, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1041, file: !1031, line: 31, baseType: !366, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1041, file: !1031, line: 32, baseType: !430, size: 16, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1030, file: !1031, line: 256, baseType: !1046, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!1037, !973, !1040, !366, !1049}
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 61, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !116, line: 72, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !116, line: 16, baseType: !94)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1021, file: !968, line: 119, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1031, line: 84, size: 320, elements: !1057)
!1057 = !{!1058, !1059, !1063, !1588, !1590}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1056, file: !1031, line: 85, baseType: !366, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1056, file: !1031, line: 86, baseType: !1060, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!430, !973, !1040, !118}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1056, file: !1031, line: 88, baseType: !1064, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!430, !973, !1067, !118}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1031, line: 175, size: 512, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1356, !1360, !1361}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1068, file: !1031, line: 176, baseType: !1041, size: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1068, file: !1031, line: 177, baseType: !1049, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1068, file: !1031, line: 178, baseType: !90, size: 64, offset: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1068, file: !1031, line: 179, baseType: !1074, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!1077}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1079)
!1079 = !{!1080, !1081, !1088, !1089, !1090, !1091, !1099, !1100, !1101, !1348, !1349, !1350, !1353, !1354, !1355}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1078, file: !35, line: 473, baseType: !426, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1078, file: !35, line: 474, baseType: !1082, size: 128, offset: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1083, line: 296, size: 128, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1084 = !{!1085, !1086, !1087}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1082, file: !1083, line: 297, baseType: !585, size: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1082, file: !1083, line: 299, baseType: !91, size: 32, offset: 32)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1082, file: !1083, line: 300, baseType: !90, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1078, file: !35, line: 475, baseType: !771, size: 320, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1078, file: !35, line: 476, baseType: !91, size: 32, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1078, file: !35, line: 477, baseType: !605, size: 32, offset: 544)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1078, file: !35, line: 482, baseType: !1092, size: 128, offset: 576)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !764, line: 26, size: 128, elements: !1093)
!1093 = !{!1094, !1098}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1092, file: !764, line: 27, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !764, line: 12, size: 64, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1095, file: !764, line: 13, baseType: !768, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1092, file: !764, line: 28, baseType: !768, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1078, file: !35, line: 483, baseType: !94, size: 64, offset: 704)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1078, file: !35, line: 484, baseType: !94, size: 64, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1078, file: !35, line: 485, baseType: !1102, size: 64, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1105)
!1105 = !{!1106, !1173, !1243, !1247, !1251, !1257, !1263, !1267, !1272, !1276, !1280, !1284, !1312, !1316, !1320, !1324, !1329, !1333, !1340, !1344}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1104, file: !35, line: 405, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!118, !1110, !1171}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1112, line: 74, size: 512, align: 128, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1113 = !{!1114, !1115, !1165, !1170}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1111, file: !1112, line: 75, baseType: !94, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !1112, line: 83, baseType: !1116, size: 320, offset: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !1112, line: 83, size: 320, elements: !1117)
!1117 = !{!1118, !1139, !1153, !1157, !1164}
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 84, baseType: !1119, size: 320)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 84, size: 320, elements: !1120)
!1120 = !{!1121, !1132, !1133, !1138}
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !1112, line: 90, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !1112, line: 90, size: 128, elements: !1123)
!1123 = !{!1124, !1125, !1130, !1131}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1122, file: !1112, line: 91, baseType: !347, size: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !1112, line: 94, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1112, line: 94, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1126, file: !1112, line: 96, baseType: !90, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1126, file: !1112, line: 98, baseType: !7, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1122, file: !1112, line: 102, baseType: !347, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1122, file: !1112, line: 103, baseType: !347, size: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1119, file: !1112, line: 106, baseType: !1077, size: 64, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !1112, line: 107, baseType: !1134, size: 64, offset: 192)
!1134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !1112, line: 107, size: 64, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1134, file: !1112, line: 108, baseType: !94, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1134, file: !1112, line: 109, baseType: !94, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1119, file: !1112, line: 117, baseType: !94, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 119, baseType: !1140, size: 320)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 119, size: 320, elements: !1141)
!1141 = !{!1142, !1143, !1146, !1147, !1148}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1140, file: !1112, line: 124, baseType: !94, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1140, file: !1112, line: 125, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1112, line: 125, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1140, file: !1112, line: 126, baseType: !94, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1140, file: !1112, line: 127, baseType: !94, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !1112, line: 128, baseType: !1149, size: 64, offset: 256)
!1149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1140, file: !1112, line: 128, size: 64, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1149, file: !1112, line: 133, baseType: !94, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1149, file: !1112, line: 138, baseType: !625, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 141, baseType: !1154, size: 64)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 141, size: 64, elements: !1155)
!1155 = !{!1156}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1154, file: !1112, line: 142, baseType: !94, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, scope: !1116, file: !1112, line: 144, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1116, file: !1112, line: 144, size: 128, elements: !1159)
!1159 = !{!1160, !1163}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1158, file: !1112, line: 146, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1112, line: 146, flags: DIFlagFwdDecl)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1158, file: !1112, line: 147, baseType: !90, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1116, file: !1112, line: 161, baseType: !575, size: 128, align: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1111, file: !1112, line: 164, baseType: !1166, size: 32, offset: 384)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1111, file: !1112, line: 164, size: 32, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1166, file: !1112, line: 169, baseType: !605, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1166, file: !1112, line: 177, baseType: !7, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1111, file: !1112, line: 181, baseType: !605, size: 32, offset: 416)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1104, file: !35, line: 406, baseType: !1174, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!118, !562, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1112, line: 293, size: 1536, elements: !1179)
!1179 = !{!1180, !1210, !1224}
!1180 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1112, line: 295, baseType: !1181, size: 512)
!1181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1112, line: 295, size: 512, elements: !1182)
!1182 = !{!1183, !1209}
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1181, file: !1112, line: 296, baseType: !1184, size: 448)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1181, file: !1112, line: 296, size: 448, elements: !1185)
!1185 = !{!1186, !1187, !1196, !1197, !1198, !1207, !1208}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !1112, line: 298, baseType: !94, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1112, line: 299, baseType: !1188, size: 128, offset: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !1112, line: 299, size: 128, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1188, file: !1112, line: 300, baseType: !347, size: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1112, line: 302, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !1112, line: 302, size: 128, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1192, file: !1112, line: 303, baseType: !90, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1192, file: !1112, line: 305, baseType: !7, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1184, file: !1112, line: 310, baseType: !1077, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1184, file: !1112, line: 311, baseType: !94, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1112, line: 312, baseType: !1199, size: 64, offset: 320)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !1112, line: 312, size: 64, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1199, file: !1112, line: 313, baseType: !90, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1199, file: !1112, line: 314, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1112, line: 257, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1112, line: 255, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1204, file: !1112, line: 256, baseType: !94, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1184, file: !1112, line: 316, baseType: !605, size: 32, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1184, file: !1112, line: 317, baseType: !605, size: 32, offset: 416)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1181, file: !1112, line: 323, baseType: !1111, size: 512, align: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1112, line: 325, baseType: !1211, size: 512, offset: 512)
!1211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1112, line: 325, size: 512, elements: !1212)
!1212 = !{!1213, !1223}
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1112, line: 326, baseType: !1214, size: 320)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1211, file: !1112, line: 326, size: 320, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1221, !1222}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1214, file: !1112, line: 327, baseType: !94, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1214, file: !1112, line: 328, baseType: !94, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1214, file: !1112, line: 329, baseType: !94, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1214, file: !1112, line: 331, baseType: !605, size: 32, offset: 192)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1214, file: !1112, line: 332, baseType: !605, size: 32, offset: 224)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1214, file: !1112, line: 333, baseType: !605, size: 32, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1214, file: !1112, line: 335, baseType: !7, size: 32, offset: 288)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1211, file: !1112, line: 339, baseType: !1111, size: 512, align: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1178, file: !1112, line: 341, baseType: !1225, size: 512, offset: 1024)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1178, file: !1112, line: 341, size: 512, elements: !1226)
!1226 = !{!1227, !1236, !1242}
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !1112, line: 342, baseType: !1228, size: 384)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1225, file: !1112, line: 342, size: 384, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1234, !1235}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1228, file: !1112, line: 343, baseType: !94, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1228, file: !1112, line: 344, baseType: !94, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1228, file: !1112, line: 346, baseType: !90, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1228, file: !1112, line: 347, baseType: !90, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1228, file: !1112, line: 348, baseType: !90, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1228, file: !1112, line: 349, baseType: !90, size: 64, offset: 320)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1225, file: !1112, line: 352, baseType: !1237, size: 256)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1225, file: !1112, line: 352, size: 256, elements: !1238)
!1238 = !{!1239, !1240, !1241}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1237, file: !1112, line: 353, baseType: !94, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1237, file: !1112, line: 354, baseType: !94, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1237, file: !1112, line: 356, baseType: !347, size: 128, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1225, file: !1112, line: 359, baseType: !1111, size: 512, align: 128)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1104, file: !35, line: 409, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!118, !1077, !1171}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1104, file: !35, line: 412, baseType: !1248, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!486, !1077, !1177}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1104, file: !35, line: 414, baseType: !1252, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !1255}
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1104, file: !35, line: 416, baseType: !1258, size: 64, offset: 320)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!118, !562, !1077, !114, !7, !1261, !1262}
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1104, file: !35, line: 419, baseType: !1264, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!118, !562, !1077, !114, !7, !7, !1110, !90}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1104, file: !35, line: 424, baseType: !1268, size: 64, offset: 448)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!1271, !1077, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !92, line: 131, baseType: !419)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1104, file: !35, line: 425, baseType: !1273, size: 64, offset: 512)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1177, !1049, !1049}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1104, file: !35, line: 426, baseType: !1277, size: 64, offset: 576)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!486, !1177, !91}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1104, file: !35, line: 427, baseType: !1281, size: 64, offset: 640)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !1177}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1104, file: !35, line: 428, baseType: !1285, size: 64, offset: 704)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!1037, !1288, !1310}
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1290)
!1290 = !{!1291, !1292, !1293, !1297, !1298, !1299, !1300}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1289, file: !35, line: 374, baseType: !562, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1289, file: !35, line: 375, baseType: !114, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1289, file: !35, line: 376, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{null, !1288, !125}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1289, file: !35, line: 377, baseType: !90, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1289, file: !35, line: 378, baseType: !118, size: 32, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1289, file: !35, line: 379, baseType: !620, size: 16, offset: 288)
!1300 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !35, line: 380, baseType: !1301, size: 64, offset: 320)
!1301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !35, line: 380, size: 64, elements: !1302)
!1302 = !{!1303, !1306}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1301, file: !35, line: 386, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1301, file: !35, line: 395, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!1037, !90}
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1104, file: !35, line: 433, baseType: !1313, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!118, !1077, !1177, !1177, !21}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1104, file: !35, line: 435, baseType: !1317, size: 64, offset: 832)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!118, !1177}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1104, file: !35, line: 436, baseType: !1321, size: 64, offset: 896)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!486, !1177, !1049, !1049}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1104, file: !35, line: 438, baseType: !1325, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !1177, !1328, !1328}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1104, file: !35, line: 439, baseType: !1330, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!118, !1077, !1110}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1104, file: !35, line: 442, baseType: !1334, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!118, !1337, !562, !1339}
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1104, file: !35, line: 444, baseType: !1341, size: 64, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !562}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1104, file: !35, line: 445, baseType: !1345, size: 64, offset: 1216)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!118, !1288, !1310}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1078, file: !35, line: 486, baseType: !94, size: 64, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1078, file: !35, line: 487, baseType: !771, size: 320, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1078, file: !35, line: 488, baseType: !1351, size: 32, offset: 1280)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1352, line: 8, baseType: !355)
!1352 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1078, file: !35, line: 489, baseType: !585, size: 32, offset: 1312)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1078, file: !35, line: 490, baseType: !347, size: 128, offset: 1344)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1078, file: !35, line: 491, baseType: !90, size: 64, offset: 1472)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1068, file: !1031, line: 180, baseType: !1357, size: 64, offset: 320)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!1037, !562, !973, !1067, !492, !114, !1049}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1068, file: !1031, line: 182, baseType: !1357, size: 64, offset: 384)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1068, file: !1031, line: 184, baseType: !1362, size: 64, offset: 448)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!118, !562, !973, !1067, !1365}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1112, line: 625, size: 1344, elements: !1367)
!1367 = !{!1368, !1377, !1546, !1552, !1559, !1560, !1565, !1566, !1571, !1572, !1575, !1579, !1580, !1581, !1582, !1583, !1586}
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1112, line: 628, baseType: !1369, size: 128)
!1369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1366, file: !1112, line: 628, size: 128, elements: !1370)
!1370 = !{!1371, !1376}
!1371 = !DIDerivedType(tag: DW_TAG_member, scope: !1369, file: !1112, line: 629, baseType: !1372, size: 128)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1369, file: !1112, line: 629, size: 128, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1372, file: !1112, line: 631, baseType: !94, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1372, file: !1112, line: 632, baseType: !94, size: 64, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1369, file: !1112, line: 635, baseType: !575, size: 128, align: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1366, file: !1112, line: 639, baseType: !1378, size: 64, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1112, line: 733, size: 10240, elements: !1380)
!1380 = !{!1381, !1544}
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1379, file: !1112, line: 734, baseType: !1382, size: 10240)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1379, file: !1112, line: 734, size: 10240, elements: !1383)
!1383 = !{!1384, !1388, !1402, !1406, !1407, !1408, !1409, !1410, !1411, !1420, !1421, !1422, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1461, !1463, !1466, !1513, !1514, !1515, !1518, !1519, !1520, !1523, !1524, !1525, !1531, !1532}
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1382, file: !1112, line: 739, baseType: !1385, size: 512, align: 512)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1382, file: !1112, line: 739, size: 512, align: 512, elements: !1386)
!1386 = !{!1387}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1385, file: !1112, line: 747, baseType: !605, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1382, file: !1112, line: 750, baseType: !1389, size: 128, offset: 512)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1390, line: 218, size: 128, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1391 = !{!1392, !1400, !1401}
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 219, baseType: !1393, size: 32)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 219, size: 32, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1393, file: !1390, line: 220, baseType: !585, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1393, file: !1390, line: 221, baseType: !1397)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1390, line: 197, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1390, line: 197, elements: !1399)
!1399 = !{}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1389, file: !1390, line: 223, baseType: !7, size: 32, offset: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1389, file: !1390, line: 224, baseType: !90, size: 64, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1382, file: !1112, line: 752, baseType: !1403, size: 64, offset: 640)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!94, !562, !94, !94, !94, !94}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1382, file: !1112, line: 756, baseType: !94, size: 64, offset: 704)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1382, file: !1112, line: 757, baseType: !94, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1382, file: !1112, line: 760, baseType: !94, size: 64, offset: 832)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1382, file: !1112, line: 761, baseType: !94, size: 64, offset: 896)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1382, file: !1112, line: 763, baseType: !94, size: 64, offset: 960)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1382, file: !1112, line: 764, baseType: !1412, size: 64, offset: 1024)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1414, line: 299, baseType: !1415)
!1414 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 299, size: 64, elements: !1416)
!1416 = !{!1417}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1415, file: !1414, line: 299, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1419, line: 18, baseType: !94)
!1419 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1382, file: !1112, line: 773, baseType: !605, size: 32, offset: 1088)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1382, file: !1112, line: 785, baseType: !605, size: 32, offset: 1120)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1382, file: !1112, line: 795, baseType: !1423, size: 64, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1112, line: 726, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1424, file: !1112, line: 727, baseType: !419, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1424, file: !1112, line: 728, baseType: !118, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1382, file: !1112, line: 801, baseType: !94, size: 64, offset: 1216)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1382, file: !1112, line: 804, baseType: !625, size: 64, offset: 1280)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1382, file: !1112, line: 806, baseType: !118, size: 32, offset: 1344)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1382, file: !1112, line: 808, baseType: !585, size: 32, offset: 1376)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1382, file: !1112, line: 823, baseType: !771, size: 320, offset: 1408)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1382, file: !1112, line: 825, baseType: !347, size: 128, offset: 1728)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1382, file: !1112, line: 845, baseType: !118, size: 32, offset: 1856)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1382, file: !1112, line: 849, baseType: !94, size: 64, offset: 1920)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1382, file: !1112, line: 850, baseType: !94, size: 64, offset: 1984)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1382, file: !1112, line: 852, baseType: !94, size: 64, offset: 2048)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1382, file: !1112, line: 853, baseType: !94, size: 64, offset: 2112)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1382, file: !1112, line: 854, baseType: !627, size: 64, offset: 2176)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1382, file: !1112, line: 855, baseType: !94, size: 64, offset: 2240)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1382, file: !1112, line: 856, baseType: !94, size: 64, offset: 2304)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1382, file: !1112, line: 857, baseType: !94, size: 64, offset: 2368)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1382, file: !1112, line: 858, baseType: !94, size: 64, offset: 2432)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1382, file: !1112, line: 865, baseType: !394, size: 32, offset: 2496)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1382, file: !1112, line: 867, baseType: !585, size: 32, offset: 2528)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1382, file: !1112, line: 869, baseType: !94, size: 64, offset: 2560)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1382, file: !1112, line: 869, baseType: !94, size: 64, offset: 2624)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1382, file: !1112, line: 869, baseType: !94, size: 64, offset: 2688)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1382, file: !1112, line: 869, baseType: !94, size: 64, offset: 2752)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1382, file: !1112, line: 870, baseType: !94, size: 64, offset: 2816)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1382, file: !1112, line: 870, baseType: !94, size: 64, offset: 2880)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1382, file: !1112, line: 870, baseType: !94, size: 64, offset: 2944)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1382, file: !1112, line: 871, baseType: !94, size: 64, offset: 3008)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1382, file: !1112, line: 871, baseType: !94, size: 64, offset: 3072)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1382, file: !1112, line: 871, baseType: !94, size: 64, offset: 3136)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1382, file: !1112, line: 871, baseType: !94, size: 64, offset: 3200)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1382, file: !1112, line: 873, baseType: !1458, size: 3328, offset: 3264)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3328, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 52)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1382, file: !1112, line: 875, baseType: !1462, size: 1280, offset: 6592)
!1462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !881, size: 1280, elements: !696)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1382, file: !1112, line: 877, baseType: !1464, size: 64, offset: 7872)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1112, line: 877, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1382, file: !1112, line: 880, baseType: !1467, size: 1088, offset: 7936)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1468, line: 72, baseType: !1469)
!1468 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1468, line: 23, size: 1088, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1478, !1479, !1480, !1481, !1508, !1509, !1510}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1469, file: !1468, line: 28, baseType: !419, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1469, file: !1468, line: 38, baseType: !627, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1469, file: !1468, line: 40, baseType: !94, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1469, file: !1468, line: 43, baseType: !771, size: 320, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1469, file: !1468, line: 44, baseType: !1476, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1468, line: 44, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1469, file: !1468, line: 48, baseType: !94, size: 64, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1469, file: !1468, line: 59, baseType: !633, size: 256, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1469, file: !1468, line: 60, baseType: !90, size: 64, offset: 896)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1469, file: !1468, line: 61, baseType: !1482, size: 64, offset: 960)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1484)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1485, line: 13, size: 1216, elements: !1486)
!1485 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1484, file: !1485, line: 14, baseType: !90, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1484, file: !1485, line: 15, baseType: !94, size: 64, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1484, file: !1485, line: 17, baseType: !94, size: 64, offset: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1484, file: !1485, line: 17, baseType: !94, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1484, file: !1485, line: 18, baseType: !94, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1484, file: !1485, line: 18, baseType: !94, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1484, file: !1485, line: 19, baseType: !1494, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1484, file: !1485, line: 21, baseType: !125, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1484, file: !1485, line: 23, baseType: !125, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1484, file: !1485, line: 24, baseType: !125, size: 64, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1484, file: !1485, line: 25, baseType: !125, size: 64, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1484, file: !1485, line: 26, baseType: !125, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1484, file: !1485, line: 27, baseType: !125, size: 64, offset: 768)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1484, file: !1485, line: 28, baseType: !125, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1484, file: !1485, line: 29, baseType: !125, size: 64, offset: 896)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1484, file: !1485, line: 30, baseType: !125, size: 64, offset: 960)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1484, file: !1485, line: 31, baseType: !125, size: 64, offset: 1024)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1484, file: !1485, line: 32, baseType: !125, size: 64, offset: 1088)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1484, file: !1485, line: 33, baseType: !125, size: 64, offset: 1152)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1469, file: !1468, line: 63, baseType: !605, size: 32, offset: 1024)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1469, file: !1468, line: 69, baseType: !620, size: 16, offset: 1056)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1469, file: !1468, line: 70, baseType: !1511, size: 16, offset: 1072)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !356, line: 18, baseType: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !797)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1382, file: !1112, line: 882, baseType: !94, size: 64, offset: 9024)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1382, file: !1112, line: 885, baseType: !585, size: 32, offset: 9088)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1382, file: !1112, line: 886, baseType: !1516, size: 64, offset: 9152)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1112, line: 732, flags: DIFlagFwdDecl)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1382, file: !1112, line: 901, baseType: !906, size: 64, offset: 9216)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1382, file: !1112, line: 904, baseType: !562, size: 64, offset: 9280)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1382, file: !1112, line: 906, baseType: !1521, size: 64, offset: 9344)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1112, line: 906, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1382, file: !1112, line: 930, baseType: !605, size: 32, offset: 9408)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1382, file: !1112, line: 933, baseType: !605, size: 32, offset: 9440)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1382, file: !1112, line: 935, baseType: !1526, size: 64, offset: 9472)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1527)
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1526, file: !57, line: 104, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1382, file: !1112, line: 940, baseType: !625, size: 64, offset: 9536)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1382, file: !1112, line: 942, baseType: !1533, size: 256, offset: 9600)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1534, line: 98, size: 256, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1535 = !{!1536, !1537, !1538}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1533, file: !1534, line: 99, baseType: !625, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1533, file: !1534, line: 100, baseType: !347, size: 128, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1533, file: !1534, line: 101, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1534, line: 21, baseType: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1379, file: !1112, line: 986, baseType: !1545, offset: 10240)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !715)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1366, file: !1112, line: 640, baseType: !1547, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1414, line: 297, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1414, line: 297, size: 64, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1548, file: !1414, line: 297, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1419, line: 19, baseType: !94)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1112, line: 646, baseType: !1553, size: 64, offset: 256)
!1553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1366, file: !1112, line: 646, size: 64, elements: !1554)
!1554 = !{!1555, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1553, file: !1112, line: 647, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1112, line: 542, baseType: !94)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1553, file: !1112, line: 648, baseType: !1557, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1366, file: !1112, line: 666, baseType: !118, size: 32, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1366, file: !1112, line: 667, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1112, line: 579, size: 320, elements: !1563)
!1563 = !{!1564}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1562, file: !1112, line: 580, baseType: !771, size: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1366, file: !1112, line: 670, baseType: !486, size: 8, offset: 448)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1366, file: !1112, line: 681, baseType: !1567, size: 256, offset: 512)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1366, file: !1112, line: 678, size: 256, elements: !1568)
!1568 = !{!1569, !1570}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1567, file: !1112, line: 679, baseType: !763, size: 192, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1567, file: !1112, line: 680, baseType: !94, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1366, file: !1112, line: 689, baseType: !347, size: 128, offset: 768)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1366, file: !1112, line: 691, baseType: !1573, size: 64, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1112, line: 691, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1366, file: !1112, line: 694, baseType: !1576, size: 64, offset: 960)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1578)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1112, line: 694, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1366, file: !1112, line: 697, baseType: !94, size: 64, offset: 1024)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1366, file: !1112, line: 699, baseType: !562, size: 64, offset: 1088)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1366, file: !1112, line: 700, baseType: !90, size: 64, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1366, file: !1112, line: 711, baseType: !625, size: 64, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1366, file: !1112, line: 717, baseType: !1584, size: 64, offset: 1280)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1112, line: 717, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1366, file: !1112, line: 722, baseType: !1587, offset: 1344)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1112, line: 570, elements: !1399)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1056, file: !1031, line: 90, baseType: !1589, size: 64, offset: 192)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1056, file: !1031, line: 91, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1021, file: !968, line: 120, baseType: !1593, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1596, !991}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1599)
!1599 = !{!1600, !1601, !1605, !1609, !1615, !1619}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1598, file: !29, line: 40, baseType: !28, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1598, file: !29, line: 41, baseType: !1602, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!486}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1598, file: !29, line: 42, baseType: !1606, size: 64, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!90}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1598, file: !29, line: 43, baseType: !1610, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1494, !1613}
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1598, file: !29, line: 44, baseType: !1616, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1494}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1598, file: !29, line: 45, baseType: !471, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1021, file: !968, line: 121, baseType: !1621, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!1494, !991}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1021, file: !968, line: 122, baseType: !1625, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{null, !991, !1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !967, file: !968, line: 70, baseType: !1631, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1633, line: 190, size: 1152, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1733, !1734, !1735, !1736, !1737, !1740}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1632, file: !1633, line: 191, baseType: !605, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1632, file: !1633, line: 192, baseType: !605, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1632, file: !1633, line: 202, baseType: !1631, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1632, file: !1633, line: 203, baseType: !366, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1632, file: !1633, line: 205, baseType: !763, size: 192, align: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1632, file: !1633, line: 207, baseType: !1494, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1632, file: !1633, line: 208, baseType: !7, size: 32, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !1633, line: 209, baseType: !1643, size: 256, offset: 512)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1632, file: !1633, line: 209, size: 256, elements: !1644)
!1644 = !{!1645, !1654, !1658}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1643, file: !1633, line: 210, baseType: !1646, size: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1633, line: 153, size: 256, elements: !1647)
!1647 = !{!1648, !1649, !1650, !1653}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1646, file: !1633, line: 154, baseType: !94, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1646, file: !1633, line: 156, baseType: !1095, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1646, file: !1633, line: 162, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1633, line: 162, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1646, file: !1633, line: 167, baseType: !94, size: 64, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1643, file: !1633, line: 211, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1633, line: 170, size: 64, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1655, file: !1633, line: 171, baseType: !1631, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1643, file: !1633, line: 212, baseType: !1659, size: 256)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1633, line: 174, size: 256, elements: !1660)
!1660 = !{!1661, !1728, !1731, !1732}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1659, file: !1633, line: 175, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1633, line: 271, size: 768, elements: !1665)
!1665 = !{!1666, !1689, !1693, !1697, !1702, !1706, !1710, !1714, !1715, !1716, !1717, !1724}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1664, file: !1633, line: 276, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!118, !1670}
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1633, line: 251, size: 1216, elements: !1672)
!1672 = !{!1673, !1674, !1675, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1671, file: !1633, line: 253, baseType: !1631, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1671, file: !1633, line: 254, baseType: !562, size: 64, offset: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1671, file: !1633, line: 255, baseType: !1676, size: 64, offset: 128)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1678, line: 66, flags: DIFlagFwdDecl)
!1678 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1671, file: !1633, line: 256, baseType: !90, size: 64, offset: 192)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1671, file: !1633, line: 259, baseType: !633, size: 256, offset: 256)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1671, file: !1633, line: 260, baseType: !633, size: 256, offset: 512)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1671, file: !1633, line: 261, baseType: !118, size: 32, offset: 768)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1671, file: !1633, line: 262, baseType: !347, size: 128, offset: 832)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1671, file: !1633, line: 263, baseType: !492, size: 64, offset: 960)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1671, file: !1633, line: 265, baseType: !1049, size: 64, offset: 1024)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1671, file: !1633, line: 266, baseType: !486, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1671, file: !1633, line: 267, baseType: !486, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1671, file: !1633, line: 268, baseType: !1576, size: 64, offset: 1152)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1664, file: !1633, line: 277, baseType: !1690, size: 64, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1670}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1664, file: !1633, line: 290, baseType: !1694, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!118, !1676, !90}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1664, file: !1633, line: 292, baseType: !1698, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!90, !1676, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1664, file: !1633, line: 293, baseType: !1703, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!90, !1676, !90, !1701}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1664, file: !1633, line: 294, baseType: !1707, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !1676, !90}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1664, file: !1633, line: 296, baseType: !1711, size: 64, offset: 384)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!1037, !1670, !492, !1049, !114}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1664, file: !1633, line: 306, baseType: !1049, size: 64, offset: 448)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1664, file: !1633, line: 313, baseType: !486, size: 8, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1664, file: !1633, line: 314, baseType: !1711, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1664, file: !1633, line: 317, baseType: !1718, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!1721, !1670, !1722}
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !99, line: 59, baseType: !7)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !35, line: 61, flags: DIFlagFwdDecl)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1664, file: !1633, line: 320, baseType: !1725, size: 64, offset: 704)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!118, !1670, !1365}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1659, file: !1633, line: 176, baseType: !1729, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1633, line: 35, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1659, file: !1633, line: 177, baseType: !114, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1659, file: !1633, line: 178, baseType: !1631, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1632, file: !1633, line: 215, baseType: !90, size: 64, offset: 768)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1632, file: !1633, line: 221, baseType: !419, size: 64, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1632, file: !1633, line: 223, baseType: !111, size: 16, offset: 896)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1632, file: !1633, line: 224, baseType: !430, size: 16, offset: 912)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1632, file: !1633, line: 225, baseType: !1738, size: 64, offset: 960)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1633, line: 36, flags: DIFlagFwdDecl)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1632, file: !1633, line: 227, baseType: !575, size: 128, align: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !967, file: !968, line: 71, baseType: !1742, size: 32, offset: 448)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1743, line: 19, size: 32, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1744 = !{!1745}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1742, file: !1743, line: 20, baseType: !678, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !967, file: !968, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !967, file: !968, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !967, file: !968, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !967, file: !968, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !967, file: !968, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !964, file: !15, line: 47, baseType: !954, size: 64, offset: 512)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !964, file: !15, line: 48, baseType: !973, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !964, file: !15, line: 49, baseType: !1754, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !964, file: !15, line: 50, baseType: !1757, size: 64, offset: 704)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1759, line: 26, size: 256, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1760 = !{!1761, !1762}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1758, file: !1759, line: 27, baseType: !7, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1758, file: !1759, line: 28, baseType: !1763, size: 192, offset: 64)
!1763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1764, line: 43, size: 192, elements: !1765)
!1764 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1765 = !{!1766, !1767}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1763, file: !1764, line: 44, baseType: !638, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1763, file: !1764, line: 45, baseType: !347, size: 128, offset: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !955, file: !15, line: 418, baseType: !1769, size: 64, offset: 1408)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1771)
!1771 = !{!1772, !1773, !1778, !1782, !1786, !1790}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1770, file: !15, line: 54, baseType: !1041, size: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1770, file: !15, line: 55, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1037, !1769, !1777, !492}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1770, file: !15, line: 57, baseType: !1779, size: 64, offset: 192)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!1037, !1769, !1777, !366, !1049}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1770, file: !15, line: 59, baseType: !1783, size: 64, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !954, !366}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1770, file: !15, line: 60, baseType: !1787, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!118, !954}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1770, file: !15, line: 61, baseType: !1791, size: 64, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !954}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !955, file: !15, line: 419, baseType: !366, size: 64, offset: 1472)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !955, file: !15, line: 420, baseType: !366, size: 64, offset: 1536)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !955, file: !15, line: 421, baseType: !973, size: 64, offset: 1600)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !955, file: !15, line: 424, baseType: !1798, size: 64, offset: 1664)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !955, file: !15, line: 425, baseType: !1802, size: 64, offset: 1728)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !955, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !955, file: !15, line: 435, baseType: !633, size: 256, offset: 1856)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !955, file: !15, line: 437, baseType: !1807, size: 64, offset: 2112)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1809, line: 69, size: 320, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1810 = !{!1811, !1812, !1813, !1830, !1832, !1836, !1837}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1808, file: !1809, line: 70, baseType: !366, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1808, file: !1809, line: 71, baseType: !954, size: 64, offset: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1808, file: !1809, line: 72, baseType: !1814, size: 64, offset: 128)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1809, line: 47, size: 256, elements: !1817)
!1817 = !{!1818, !1819, !1825, !1829}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1816, file: !1809, line: 49, baseType: !7, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1816, file: !1809, line: 51, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!118, !366, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1816, file: !1809, line: 53, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!118, !492, !1823}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1816, file: !1809, line: 55, baseType: !471, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1808, file: !1809, line: 73, baseType: !1831, size: 16, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !620)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1808, file: !1809, line: 74, baseType: !1833, size: 8, offset: 208)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !356, line: 16, baseType: !1834)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !101, line: 20, baseType: !1835)
!1835 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1808, file: !1809, line: 75, baseType: !613, size: 8, offset: 216)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1808, file: !1809, line: 76, baseType: !1838, size: 64, offset: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1808, file: !1809, line: 76, size: 64, elements: !1839)
!1839 = !{!1840, !1841, !1848}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1838, file: !1809, line: 77, baseType: !90, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1838, file: !1809, line: 78, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1809, line: 86, size: 128, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1844, file: !1809, line: 87, baseType: !7, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1844, file: !1809, line: 88, baseType: !492, size: 64, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1838, file: !1809, line: 79, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1809, line: 92, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1855, !1857, !1858}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1851, file: !1809, line: 94, baseType: !7, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1851, file: !1809, line: 95, baseType: !7, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1851, file: !1809, line: 96, baseType: !1856, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1851, file: !1809, line: 97, baseType: !1814, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1851, file: !1809, line: 98, baseType: !90, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !955, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !955, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !955, file: !15, line: 442, baseType: !1798, size: 64, offset: 2240)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !955, file: !15, line: 443, baseType: !1802, size: 64, offset: 2304)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !955, file: !15, line: 444, baseType: !486, size: 8, offset: 2368)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !955, file: !15, line: 451, baseType: !486, size: 8, offset: 2376)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !955, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !955, file: !15, line: 455, baseType: !1867, size: 64, offset: 2432)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1869, line: 23, size: 96, elements: !1870)
!1869 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1868, file: !1869, line: 24, baseType: !118, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1868, file: !1869, line: 24, baseType: !118, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1868, file: !1869, line: 24, baseType: !118, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !955, file: !15, line: 458, baseType: !1875, size: 64, offset: 2496)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!118}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !955, file: !15, line: 460, baseType: !1879, size: 4032, align: 512, offset: 2560)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1880, size: 4032, elements: !1896)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !1881)
!1881 = !{!1882, !1883, !1884}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1880, file: !15, line: 363, baseType: !90, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1880, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1880, file: !15, line: 367, baseType: !1885, size: 448, offset: 128)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1885, file: !15, line: 320, baseType: !954, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1885, file: !15, line: 321, baseType: !1889, size: 384, offset: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1890, line: 40, size: 384, elements: !1891)
!1890 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1889, file: !1890, line: 41, baseType: !1893, size: 384, align: 64)
!1893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !763, size: 384, align: 64, elements: !1894)
!1894 = !{!1895}
!1895 = !DISubrange(count: 2)
!1896 = !{!1897}
!1897 = !DISubrange(count: 7)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !955, file: !15, line: 463, baseType: !1899, size: 192, offset: 6592)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1900, line: 8, size: 192, elements: !1901)
!1900 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1901 = !{!1902, !1903, !1905}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1899, file: !1900, line: 10, baseType: !7, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1899, file: !1900, line: 11, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1899, file: !1900, line: 12, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1908, line: 59, size: 48, elements: !1909)
!1908 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1909 = !{!1910, !1911, !1912, !1913, !1914, !1915}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1907, file: !1908, line: 60, baseType: !1511, size: 16)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1907, file: !1908, line: 61, baseType: !1511, size: 16, offset: 16)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1907, file: !1908, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1907, file: !1908, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1907, file: !1908, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1907, file: !1908, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !955, file: !15, line: 465, baseType: !94, size: 64, offset: 6784)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !955, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !955, file: !15, line: 470, baseType: !347, size: 128, offset: 6912)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !955, file: !15, line: 471, baseType: !1920, size: 64, offset: 7040)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1922, line: 33, size: 96, elements: !1923)
!1922 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1923 = !{!1924, !1925, !1926, !1927}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1921, file: !1922, line: 37, baseType: !118, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1921, file: !1922, line: 43, baseType: !118, size: 32, offset: 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1921, file: !1922, line: 45, baseType: !111, size: 16, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1921, file: !1922, line: 47, baseType: !111, size: 16, offset: 80)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !955, file: !15, line: 476, baseType: !1929, size: 64, offset: 7104)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !1931)
!1931 = !{!1932, !1948, !1949, !1950}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1930, file: !15, line: 379, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1935, line: 204, baseType: !1936)
!1935 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1935, line: 197, size: 192, elements: !1937)
!1937 = !{!1938, !1940, !1941, !1942, !1944, !1946}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1936, file: !1935, line: 198, baseType: !1939, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1935, line: 21, baseType: !100)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1936, file: !1935, line: 199, baseType: !358, size: 8, offset: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1936, file: !1935, line: 200, baseType: !358, size: 8, offset: 40)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1936, file: !1935, line: 201, baseType: !1943, size: 16, offset: 48)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1935, line: 17, baseType: !110)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1936, file: !1935, line: 202, baseType: !1945, size: 64, offset: 64)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1935, line: 16, baseType: !420)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1936, file: !1935, line: 203, baseType: !1947, size: 64, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1935, line: 22, baseType: !420)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1930, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1930, file: !15, line: 381, baseType: !492, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1930, file: !15, line: 382, baseType: !492, size: 64, offset: 192)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !955, file: !15, line: 477, baseType: !1930, size: 256, offset: 7168)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !955, file: !15, line: 480, baseType: !1953, size: 64, offset: 7424)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !955, file: !15, line: 483, baseType: !1956, size: 64, offset: 7488)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !955, file: !15, line: 488, baseType: !492, size: 64, offset: 7552)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !955, file: !15, line: 492, baseType: !90, size: 64, offset: 7616)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !955, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !955, file: !15, line: 495, baseType: !90, size: 64, offset: 7744)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !955, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !955, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !955, file: !15, line: 500, baseType: !1965, size: 64, offset: 7872)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1967, line: 45, baseType: !1968)
!1967 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !955, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !955, file: !15, line: 504, baseType: !1971, size: 64, offset: 8000)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1974, line: 96, size: 192, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1975 = !{!1976, !1977, !2031, !2034}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1973, file: !1974, line: 97, baseType: !7, size: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1973, file: !1974, line: 98, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1974, line: 24, size: 3072, elements: !1980)
!1980 = !{!1981, !1983, !1984, !1985, !1986, !2000, !2001, !2002, !2003, !2015, !2016, !2017, !2028, !2029, !2030}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1979, file: !1974, line: 26, baseType: !1982, size: 128)
!1982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, size: 128, elements: !1894)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1979, file: !1974, line: 27, baseType: !1982, size: 128, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1979, file: !1974, line: 28, baseType: !118, size: 32, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1979, file: !1974, line: 31, baseType: !585, size: 32, align: 512, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1979, file: !1974, line: 32, baseType: !1987, size: 960, offset: 576)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1988, line: 206, size: 960, elements: !1989)
!1988 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1989 = !{!1990, !1991, !1994, !1996, !1997, !1999}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1987, file: !1988, line: 207, baseType: !578, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1987, file: !1988, line: 208, baseType: !1992, size: 256, offset: 64)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1993, size: 256, elements: !696)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1987, file: !1988, line: 209, baseType: !1995, size: 256, offset: 320)
!1995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !696)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1987, file: !1988, line: 213, baseType: !125, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1987, file: !1988, line: 215, baseType: !1998, size: 256, offset: 640)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !696)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1987, file: !1988, line: 216, baseType: !613, size: 8, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1979, file: !1974, line: 33, baseType: !94, size: 64, offset: 1536)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1979, file: !1974, line: 34, baseType: !94, size: 64, offset: 1600)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1979, file: !1974, line: 35, baseType: !486, size: 8, offset: 1664)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1979, file: !1974, line: 36, baseType: !2004, size: 320, offset: 1728)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2005, line: 11, size: 320, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2006 = !{!2007, !2008, !2009, !2014}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2004, file: !2005, line: 16, baseType: !691, size: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2004, file: !2005, line: 17, baseType: !94, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2004, file: !2005, line: 18, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{null, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !2005, line: 19, baseType: !355, size: 32, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1979, file: !1974, line: 37, baseType: !1533, size: 256, offset: 2048)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1979, file: !1974, line: 38, baseType: !575, size: 128, align: 64, offset: 2304)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1979, file: !1974, line: 39, baseType: !2018, size: 64, offset: 2432)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1974, line: 49, size: 768, elements: !2020)
!2020 = !{!2021, !2022, !2023, !2024, !2025, !2026, !2027}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2019, file: !1974, line: 50, baseType: !585, size: 32)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2019, file: !1974, line: 51, baseType: !1995, size: 256, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2019, file: !1974, line: 53, baseType: !1995, size: 256, offset: 320)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2019, file: !1974, line: 54, baseType: !94, size: 64, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2019, file: !1974, line: 55, baseType: !2018, size: 64, offset: 640)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2019, file: !1974, line: 56, baseType: !118, size: 32, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2019, file: !1974, line: 57, baseType: !118, size: 32, offset: 736)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1979, file: !1974, line: 40, baseType: !94, size: 64, offset: 2496)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1979, file: !1974, line: 42, baseType: !118, size: 32, offset: 2560)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1979, file: !1974, line: 43, baseType: !1972, size: 64, offset: 2624)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1973, file: !1974, line: 99, baseType: !2032, offset: 128)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2033, line: 211, elements: !1399)
!2033 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1973, file: !1974, line: 100, baseType: !2035, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1974, line: 63, size: 3008, elements: !2037)
!2037 = !{!2038, !2039, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2069}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2036, file: !1974, line: 64, baseType: !2018, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2036, file: !1974, line: 65, baseType: !2040, size: 192, offset: 64)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2018, size: 192, elements: !670)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2036, file: !1974, line: 67, baseType: !118, size: 32, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2036, file: !1974, line: 68, baseType: !633, size: 256, offset: 320)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2036, file: !1974, line: 69, baseType: !585, size: 32, offset: 576)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2036, file: !1974, line: 70, baseType: !633, size: 256, offset: 640)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2036, file: !1974, line: 71, baseType: !94, size: 64, offset: 896)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2036, file: !1974, line: 72, baseType: !94, size: 64, offset: 960)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2036, file: !1974, line: 73, baseType: !94, size: 64, offset: 1024)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2036, file: !1974, line: 74, baseType: !94, size: 64, offset: 1088)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2036, file: !1974, line: 75, baseType: !94, size: 64, offset: 1152)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2036, file: !1974, line: 76, baseType: !94, size: 64, offset: 1216)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2036, file: !1974, line: 77, baseType: !94, size: 64, offset: 1280)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2036, file: !1974, line: 78, baseType: !94, size: 64, offset: 1344)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2036, file: !1974, line: 79, baseType: !486, size: 8, offset: 1408)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2036, file: !1974, line: 80, baseType: !94, size: 64, offset: 1472)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2036, file: !1974, line: 81, baseType: !633, size: 256, offset: 1536)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2036, file: !1974, line: 82, baseType: !1758, size: 256, offset: 1792)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2036, file: !1974, line: 84, baseType: !605, size: 32, offset: 2048)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2036, file: !1974, line: 87, baseType: !94, size: 64, offset: 2112)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2036, file: !1974, line: 88, baseType: !94, size: 64, offset: 2176)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2036, file: !1974, line: 89, baseType: !2061, size: 704, offset: 2240)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1534, line: 111, size: 704, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2068}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2061, file: !1534, line: 112, baseType: !1533, size: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2061, file: !1534, line: 113, baseType: !2004, size: 320, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2061, file: !1534, line: 116, baseType: !2066, size: 64, offset: 576)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1534, line: 18, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2061, file: !1534, line: 117, baseType: !118, size: 32, offset: 640)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2036, file: !1974, line: 90, baseType: !1972, size: 64, offset: 2944)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !955, file: !15, line: 515, baseType: !2071, size: 64, offset: 8064)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2073, line: 117, size: 128, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2074 = !{!2075, !2076, !2077}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2072, file: !2073, line: 118, baseType: !756, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2072, file: !2073, line: 119, baseType: !756, size: 32, offset: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2072, file: !2073, line: 120, baseType: !125, size: 64, offset: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !955, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !955, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !955, file: !15, line: 520, baseType: !2081, size: 64, offset: 8192)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !955, file: !15, line: 523, baseType: !2083, size: 64, offset: 8256)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !955, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !955, file: !15, line: 525, baseType: !2088, size: 64, offset: 8384)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !955, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !955, file: !15, line: 533, baseType: !90, size: 64, offset: 8512)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !955, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !955, file: !15, line: 535, baseType: !126, size: 64, offset: 8640)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !955, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !955, file: !15, line: 539, baseType: !118, size: 32, offset: 8736)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !955, file: !15, line: 540, baseType: !2098, size: 64, offset: 8768)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2100, line: 32, size: 64, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2099, file: !2100, line: 33, baseType: !756, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2099, file: !2100, line: 34, baseType: !756, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !955, file: !15, line: 563, baseType: !347, size: 128, offset: 8832)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !955, file: !15, line: 565, baseType: !347, size: 128, offset: 8960)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !955, file: !15, line: 568, baseType: !2107, size: 64, offset: 9088)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DISubroutineType(types: !2109)
!2109 = !{null}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !955, file: !15, line: 570, baseType: !605, size: 32, offset: 9152)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !951, file: !35, line: 1916, baseType: !2112, size: 64, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!114, !562, !114, !118}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !951, file: !35, line: 1917, baseType: !2116, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!1037, !562, !492, !1049, !1701}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !951, file: !35, line: 1918, baseType: !2120, size: 64, offset: 192)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!1037, !562, !366, !1049, !1701}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !951, file: !35, line: 1919, baseType: !1285, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !951, file: !35, line: 1920, baseType: !1285, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !951, file: !35, line: 1921, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{!118, !1288, !2129, !7}
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !951, file: !35, line: 1923, baseType: !2132, size: 64, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!118, !562, !2135}
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !2137)
!2137 = !{!2138, !2143}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2136, file: !35, line: 1859, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !2140)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!486, !2135, !366, !118, !114, !419, !7}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2136, file: !35, line: 1860, baseType: !114, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !951, file: !35, line: 1924, baseType: !2145, size: 64, offset: 512)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!1721, !562, !1722}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !951, file: !35, line: 1925, baseType: !2149, size: 64, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!125, !562, !7, !94}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !951, file: !35, line: 1926, baseType: !2149, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !951, file: !35, line: 1927, baseType: !2154, size: 64, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!118, !562, !1365}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !951, file: !35, line: 1928, baseType: !94, size: 64, offset: 768)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !951, file: !35, line: 1929, baseType: !2159, size: 64, offset: 832)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DISubroutineType(types: !2161)
!2161 = !{!118, !426, !562}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !951, file: !35, line: 1930, baseType: !2163, size: 64, offset: 896)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!118, !562, !2166}
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !90)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !951, file: !35, line: 1931, baseType: !2159, size: 64, offset: 960)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !951, file: !35, line: 1932, baseType: !2169, size: 64, offset: 1024)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!118, !562, !114, !114, !118}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !951, file: !35, line: 1933, baseType: !2173, size: 64, offset: 1088)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!118, !118, !562, !118}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !951, file: !35, line: 1934, baseType: !2177, size: 64, offset: 1152)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!118, !562, !118, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !951, file: !35, line: 1935, baseType: !1403, size: 64, offset: 1216)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !951, file: !35, line: 1936, baseType: !2184, size: 64, offset: 1280)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!118, !118}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !951, file: !35, line: 1937, baseType: !2177, size: 64, offset: 1344)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !951, file: !35, line: 1938, baseType: !2189, size: 64, offset: 1408)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DISubroutineType(types: !2191)
!2191 = !{!1037, !2192, !562, !1701, !1049, !7}
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1678, line: 59, flags: DIFlagFwdDecl)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !951, file: !35, line: 1939, baseType: !2195, size: 64, offset: 1472)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!1037, !562, !1701, !2192, !1049, !7}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !951, file: !35, line: 1940, baseType: !1341, size: 64, offset: 1536)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !951, file: !35, line: 1941, baseType: !2200, size: 64, offset: 1600)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!118, !562, !118, !2203, !1262}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !951, file: !35, line: 1942, baseType: !2205, size: 64, offset: 1664)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!125, !562, !118, !114, !114}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !951, file: !35, line: 1944, baseType: !2209, size: 64, offset: 1728)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !1676, !562}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !951, file: !35, line: 1948, baseType: !2213, size: 64, offset: 1792)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!1037, !562, !114, !562, !114, !1049, !7}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !951, file: !35, line: 1950, baseType: !2217, size: 64, offset: 1856)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!114, !562, !114, !562, !114, !114, !7}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !951, file: !35, line: 1953, baseType: !2169, size: 64, offset: 1920)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !951, file: !35, line: 1954, baseType: !2222, size: 64, offset: 1984)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!118, !2225, !7}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !951, file: !35, line: 1955, baseType: !2228, size: 64, offset: 2048)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!118, !2225, !2129, !7}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !563, file: !35, line: 1018, baseType: !419, size: 64, offset: 1472)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !563, file: !35, line: 1020, baseType: !90, size: 64, offset: 1536)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !563, file: !35, line: 1023, baseType: !90, size: 64, offset: 1600)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !563, file: !35, line: 1027, baseType: !2235, size: 64, offset: 1664)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !563, file: !35, line: 1029, baseType: !1077, size: 64, offset: 1728)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !563, file: !35, line: 1030, baseType: !1351, size: 32, offset: 1792)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !563, file: !35, line: 1031, baseType: !1351, size: 32, offset: 1824)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !456, file: !35, line: 1988, baseType: !2240, size: 64, offset: 896)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!118, !479, !2243, !2245, !355, !7}
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2247, line: 22, size: 1280, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!2248 = !{!2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2246, file: !2247, line: 23, baseType: !355, size: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2246, file: !2247, line: 24, baseType: !430, size: 16, offset: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2246, file: !2247, line: 25, baseType: !7, size: 32, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2246, file: !2247, line: 26, baseType: !793, size: 32, offset: 96)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2246, file: !2247, line: 27, baseType: !419, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2246, file: !2247, line: 28, baseType: !419, size: 64, offset: 192)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2246, file: !2247, line: 41, baseType: !419, size: 64, offset: 256)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2246, file: !2247, line: 42, baseType: !353, size: 32, offset: 320)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2246, file: !2247, line: 43, baseType: !353, size: 32, offset: 352)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2246, file: !2247, line: 44, baseType: !433, size: 32, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2246, file: !2247, line: 45, baseType: !442, size: 32, offset: 416)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2246, file: !2247, line: 46, baseType: !114, size: 64, offset: 448)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2246, file: !2247, line: 47, baseType: !552, size: 128, offset: 512)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2246, file: !2247, line: 48, baseType: !552, size: 128, offset: 640)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2246, file: !2247, line: 49, baseType: !552, size: 128, offset: 768)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2246, file: !2247, line: 50, baseType: !552, size: 128, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2246, file: !2247, line: 51, baseType: !419, size: 64, offset: 1024)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2246, file: !2247, line: 52, baseType: !419, size: 64, offset: 1088)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !2246, file: !2247, line: 53, baseType: !355, size: 32, offset: 1152)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !2246, file: !2247, line: 54, baseType: !355, size: 32, offset: 1184)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !2246, file: !2247, line: 55, baseType: !419, size: 64, offset: 1216)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !456, file: !35, line: 1990, baseType: !2271, size: 64, offset: 960)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!1037, !383, !492, !1049}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !456, file: !35, line: 1991, baseType: !2275, size: 64, offset: 1024)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!118, !426, !2278, !419, !419}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !456, file: !35, line: 1993, baseType: !2281, size: 64, offset: 1088)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!118, !426, !118}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !456, file: !35, line: 1994, baseType: !2285, size: 64, offset: 1152)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!118, !426, !383, !562, !7, !430}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !456, file: !35, line: 1997, baseType: !2289, size: 64, offset: 1216)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!118, !479, !426, !562, !430}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !456, file: !35, line: 1999, baseType: !2293, size: 64, offset: 1280)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!450, !479, !383, !118}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !456, file: !35, line: 2001, baseType: !2297, size: 64, offset: 1344)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!118, !479, !383, !450, !118}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !456, file: !35, line: 2003, baseType: !2301, size: 64, offset: 1408)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!118, !479, !383, !2304}
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !456, file: !35, line: 2005, baseType: !2307, size: 64, offset: 1472)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!118, !383, !2304}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !456, file: !35, line: 2006, baseType: !2311, size: 64, offset: 1536)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!2314, !426}
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !2316)
!2316 = !{!2317, !2318}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !2315, file: !35, line: 3193, baseType: !1082, size: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !2315, file: !35, line: 3194, baseType: !355, size: 32, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !427, file: !35, line: 655, baseType: !343, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !427, file: !35, line: 656, baseType: !1077, size: 64, offset: 512)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !427, file: !35, line: 659, baseType: !90, size: 64, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !427, file: !35, line: 663, baseType: !94, size: 64, offset: 640)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !35, line: 671, baseType: !2324, size: 32, offset: 704)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !35, line: 671, size: 32, elements: !2325)
!2325 = !{!2326, !2328}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2324, file: !35, line: 672, baseType: !2327, size: 32)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2324, file: !35, line: 673, baseType: !7, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !427, file: !35, line: 675, baseType: !353, size: 32, offset: 736)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !427, file: !35, line: 676, baseType: !114, size: 64, offset: 768)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !427, file: !35, line: 677, baseType: !552, size: 128, offset: 832)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !427, file: !35, line: 678, baseType: !552, size: 128, offset: 960)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !427, file: !35, line: 679, baseType: !552, size: 128, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !427, file: !35, line: 680, baseType: !585, size: 32, offset: 1216)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !427, file: !35, line: 681, baseType: !111, size: 16, offset: 1248)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !427, file: !35, line: 682, baseType: !613, size: 8, offset: 1264)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !427, file: !35, line: 683, baseType: !613, size: 8, offset: 1272)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !427, file: !35, line: 684, baseType: !2339, size: 64, offset: 1280)
!2339 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !92, line: 132, baseType: !419)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !427, file: !35, line: 691, baseType: !94, size: 64, offset: 1344)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !427, file: !35, line: 692, baseType: !771, size: 320, offset: 1408)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !427, file: !35, line: 694, baseType: !94, size: 64, offset: 1728)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !427, file: !35, line: 695, baseType: !94, size: 64, offset: 1792)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !427, file: !35, line: 697, baseType: !691, size: 128, offset: 1856)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !427, file: !35, line: 698, baseType: !347, size: 128, offset: 1984)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !427, file: !35, line: 707, baseType: !347, size: 128, offset: 2112)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !427, file: !35, line: 708, baseType: !347, size: 128, offset: 2240)
!2348 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !35, line: 709, baseType: !2349, size: 128, offset: 2368)
!2349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !35, line: 709, size: 128, elements: !2350)
!2350 = !{!2351, !2352}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2349, file: !35, line: 710, baseType: !687, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2349, file: !35, line: 711, baseType: !575, size: 128, align: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !427, file: !35, line: 713, baseType: !627, size: 64, offset: 2496)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !427, file: !35, line: 714, baseType: !627, size: 64, offset: 2560)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !427, file: !35, line: 715, baseType: !605, size: 32, offset: 2624)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !427, file: !35, line: 716, baseType: !605, size: 32, offset: 2656)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !427, file: !35, line: 717, baseType: !605, size: 32, offset: 2688)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !427, file: !35, line: 719, baseType: !605, size: 32, offset: 2720)
!2359 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !35, line: 721, baseType: !2360, size: 64, offset: 2752)
!2360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !35, line: 721, size: 64, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2360, file: !35, line: 722, baseType: !949, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2360, file: !35, line: 723, baseType: !2364, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !426}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !427, file: !35, line: 725, baseType: !2368, size: 64, offset: 2816)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !427, file: !35, line: 726, baseType: !1078, size: 1536, align: 64, offset: 2880)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !427, file: !35, line: 727, baseType: !347, size: 128, offset: 4416)
!2372 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !35, line: 728, baseType: !2373, size: 64, offset: 4544)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !427, file: !35, line: 728, size: 64, elements: !2374)
!2374 = !{!2375, !2376, !2379, !2380}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2373, file: !35, line: 729, baseType: !2192, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2373, file: !35, line: 730, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2373, file: !35, line: 731, baseType: !492, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2373, file: !35, line: 732, baseType: !7, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !427, file: !35, line: 735, baseType: !100, size: 32, offset: 4608)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !427, file: !35, line: 738, baseType: !100, size: 32, offset: 4640)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !427, file: !35, line: 739, baseType: !2384, size: 64, offset: 4672)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !427, file: !35, line: 750, baseType: !90, size: 64, offset: 4736)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !384, file: !385, line: 91, baseType: !2388, size: 256, offset: 448)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !358, size: 256, elements: !264)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !384, file: !385, line: 94, baseType: !2390, size: 64, offset: 704)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2391, line: 25, size: 64, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!2392 = !{!2393}
!2393 = !DIDerivedType(tag: DW_TAG_member, scope: !2390, file: !2391, line: 26, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2390, file: !2391, line: 26, size: 64, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !2394, file: !2391, line: 28, baseType: !420, size: 64, align: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, scope: !2394, file: !2391, line: 30, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2394, file: !2391, line: 30, size: 64, elements: !2399)
!2399 = !{!2400, !2401}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2398, file: !2391, line: 31, baseType: !585, size: 32)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2398, file: !2391, line: 32, baseType: !118, size: 32, offset: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !384, file: !385, line: 95, baseType: !2403, size: 64, offset: 768)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2405)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !385, line: 128, size: 1024, align: 512, elements: !2406)
!2406 = !{!2407, !2411, !2412, !2419, !2425, !2429, !2433, !2437, !2438, !2442, !2446, !2451, !2455}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2405, file: !385, line: 129, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!118, !383, !7}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2405, file: !385, line: 130, baseType: !2408, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2405, file: !385, line: 131, baseType: !2413, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!118, !2416, !2418}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2405, file: !385, line: 132, baseType: !2420, size: 64, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!118, !2416, !7, !366, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2405, file: !385, line: 134, baseType: !2426, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!118, !2416}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2405, file: !385, line: 135, baseType: !2430, size: 64, offset: 320)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = !DISubroutineType(types: !2432)
!2432 = !{!118, !383}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2405, file: !385, line: 136, baseType: !2434, size: 64, offset: 384)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DISubroutineType(types: !2436)
!2436 = !{null, !383}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2405, file: !385, line: 137, baseType: !2434, size: 64, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2405, file: !385, line: 138, baseType: !2439, size: 64, offset: 512)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{null, !383, !426}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2405, file: !385, line: 139, baseType: !2443, size: 64, offset: 576)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!492, !383, !492, !118}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2405, file: !385, line: 140, baseType: !2447, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!939, !2450}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2405, file: !385, line: 141, baseType: !2452, size: 64, offset: 704)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!118, !2243, !486}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2405, file: !385, line: 142, baseType: !2456, size: 64, offset: 768)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!383, !383, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !384, file: !385, line: 96, baseType: !343, size: 64, offset: 832)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !384, file: !385, line: 97, baseType: !94, size: 64, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !384, file: !385, line: 98, baseType: !90, size: 64, offset: 960)
!2464 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !385, line: 100, baseType: !2465, size: 128, offset: 1024)
!2465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 100, size: 128, elements: !2466)
!2466 = !{!2467, !2468}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2465, file: !385, line: 101, baseType: !347, size: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2465, file: !385, line: 102, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !384, file: !385, line: 104, baseType: !347, size: 128, offset: 1152)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !384, file: !385, line: 105, baseType: !347, size: 128, offset: 1280)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !384, file: !385, line: 113, baseType: !2473, size: 128, offset: 1408)
!2473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !385, line: 109, size: 128, elements: !2474)
!2474 = !{!2475, !2476, !2477}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2473, file: !385, line: 110, baseType: !691, size: 128)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2473, file: !385, line: 111, baseType: !399, size: 128)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2473, file: !385, line: 112, baseType: !575, size: 128, align: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !363, file: !35, line: 2380, baseType: !2479, size: 64, offset: 320)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !343}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !363, file: !35, line: 2381, baseType: !954, size: 64, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !35, line: 2382, baseType: !362, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !363, file: !35, line: 2383, baseType: !687, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !363, file: !35, line: 2385, baseType: !2486, offset: 576)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2033, line: 206, elements: !1399)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !363, file: !35, line: 2386, baseType: !2486, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !363, file: !35, line: 2387, baseType: !2486, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !363, file: !35, line: 2388, baseType: !2490, offset: 576)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2486, elements: !670)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !363, file: !35, line: 2390, baseType: !2486, offset: 576)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !363, file: !35, line: 2391, baseType: !2486, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !363, file: !35, line: 2392, baseType: !2486, offset: 576)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !363, file: !35, line: 2393, baseType: !2486, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !344, file: !35, line: 1197, baseType: !2496, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2499)
!2499 = !{!2500, !2504, !2505, !2506, !2510, !2514, !2518, !2519, !2520, !2524, !2528, !2532, !2533, !2534, !2540, !2544, !2545, !2549, !2550, !2551, !2552, !2556, !2560, !2607, !2622, !2623}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2498, file: !35, line: 2058, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!426, !343}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2498, file: !35, line: 2059, baseType: !2364, size: 64, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2498, file: !35, line: 2060, baseType: !2364, size: 64, offset: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2498, file: !35, line: 2062, baseType: !2507, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{null, !426, !118}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2498, file: !35, line: 2063, baseType: !2511, size: 64, offset: 256)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = !DISubroutineType(types: !2513)
!2513 = !{!118, !426, !1171}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2498, file: !35, line: 2064, baseType: !2515, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!118, !426}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2498, file: !35, line: 2065, baseType: !2364, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2498, file: !35, line: 2066, baseType: !2479, size: 64, offset: 448)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2498, file: !35, line: 2067, baseType: !2521, size: 64, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!118, !343, !118}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2498, file: !35, line: 2068, baseType: !2525, size: 64, offset: 576)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!118, !343, !34}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2498, file: !35, line: 2069, baseType: !2529, size: 64, offset: 640)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!118, !343}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2498, file: !35, line: 2070, baseType: !2525, size: 64, offset: 704)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2498, file: !35, line: 2071, baseType: !2529, size: 64, offset: 768)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2498, file: !35, line: 2072, baseType: !2535, size: 64, offset: 832)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!118, !383, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2498, file: !35, line: 2073, baseType: !2541, size: 64, offset: 896)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!118, !343, !1904, !492}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2498, file: !35, line: 2074, baseType: !2479, size: 64, offset: 960)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2498, file: !35, line: 2076, baseType: !2546, size: 64, offset: 1024)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!118, !1676, !383}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2498, file: !35, line: 2077, baseType: !2546, size: 64, offset: 1088)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2498, file: !35, line: 2078, baseType: !2546, size: 64, offset: 1152)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2498, file: !35, line: 2079, baseType: !2546, size: 64, offset: 1216)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2498, file: !35, line: 2081, baseType: !2553, size: 64, offset: 1280)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!1037, !343, !118, !492, !1049, !114}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2498, file: !35, line: 2082, baseType: !2557, size: 64, offset: 1344)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!1037, !343, !118, !366, !1049, !114}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2498, file: !35, line: 2083, baseType: !2561, size: 64, offset: 1408)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!2564, !426}
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2567)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2592, !2593, !2594}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2566, file: !40, line: 297, baseType: !691, size: 128)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2566, file: !40, line: 298, baseType: !347, size: 128, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2566, file: !40, line: 299, baseType: !347, size: 128, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2566, file: !40, line: 300, baseType: !347, size: 128, offset: 384)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2566, file: !40, line: 301, baseType: !633, size: 256, offset: 512)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2566, file: !40, line: 302, baseType: !585, size: 32, offset: 768)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2566, file: !40, line: 303, baseType: !605, size: 32, offset: 800)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2566, file: !40, line: 304, baseType: !343, size: 64, offset: 832)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2566, file: !40, line: 305, baseType: !2577, size: 64, offset: 896)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2578)
!2578 = !{!2579, !2591}
!2579 = !DIDerivedType(tag: DW_TAG_member, scope: !2577, file: !40, line: 69, baseType: !2580, size: 32)
!2580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2577, file: !40, line: 69, size: 32, elements: !2581)
!2581 = !{!2582, !2583, !2584}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2580, file: !40, line: 70, baseType: !433, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2580, file: !40, line: 71, baseType: !442, size: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2580, file: !40, line: 72, baseType: !2585, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2586, line: 24, baseType: !2587)
!2586 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2586, line: 22, size: 32, elements: !2588)
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2587, file: !2586, line: 23, baseType: !2590, size: 32)
!2590 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2586, line: 20, baseType: !439)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2577, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2566, file: !40, line: 306, baseType: !114, size: 64, offset: 960)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2566, file: !40, line: 307, baseType: !94, size: 64, offset: 1024)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2566, file: !40, line: 308, baseType: !2595, size: 576, offset: 1088)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2596)
!2596 = !{!2597, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2595, file: !40, line: 206, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !117)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2595, file: !40, line: 207, baseType: !2598, size: 64, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2595, file: !40, line: 208, baseType: !2598, size: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2595, file: !40, line: 209, baseType: !2598, size: 64, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2595, file: !40, line: 210, baseType: !2598, size: 64, offset: 256)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2595, file: !40, line: 211, baseType: !2598, size: 64, offset: 320)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2595, file: !40, line: 212, baseType: !2598, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2595, file: !40, line: 213, baseType: !556, size: 64, offset: 448)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2595, file: !40, line: 214, baseType: !556, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2498, file: !35, line: 2085, baseType: !2608, size: 64, offset: 1472)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!125, !343, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2613, line: 15, size: 256, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2614 = !{!2615, !2616, !2617, !2618, !2619}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2612, file: !2613, line: 16, baseType: !91, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2612, file: !2613, line: 19, baseType: !118, size: 32, offset: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2612, file: !2613, line: 26, baseType: !94, size: 64, offset: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2612, file: !2613, line: 33, baseType: !94, size: 64, offset: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2612, file: !2613, line: 36, baseType: !2620, size: 64, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2613, line: 36, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2498, file: !35, line: 2087, baseType: !2608, size: 64, offset: 1536)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2498, file: !35, line: 2089, baseType: !2479, size: 64, offset: 1600)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !344, file: !35, line: 1198, baseType: !2625, size: 64, offset: 448)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2628)
!2628 = !{!2629, !2633, !2637, !2641, !2642, !2643, !2644, !2645, !2650, !2655, !2659}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2627, file: !40, line: 325, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!118, !2565}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2627, file: !40, line: 326, baseType: !2634, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!2565, !343, !118}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2627, file: !40, line: 327, baseType: !2638, size: 64, offset: 128)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2565}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2627, file: !40, line: 328, baseType: !2630, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2627, file: !40, line: 329, baseType: !2630, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2627, file: !40, line: 330, baseType: !2630, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2627, file: !40, line: 331, baseType: !2521, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2627, file: !40, line: 334, baseType: !2646, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!2649, !426}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2627, file: !40, line: 335, baseType: !2651, size: 64, offset: 512)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!118, !426, !2654}
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2627, file: !40, line: 337, baseType: !2656, size: 64, offset: 576)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!118, !426, !2649}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2627, file: !40, line: 339, baseType: !2660, size: 64, offset: 640)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!118, !343, !2663}
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !344, file: !35, line: 1199, baseType: !2665, size: 64, offset: 512)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2667)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2668)
!2668 = !{!2669, !2673, !2674, !2678, !2679, !2680, !2695, !2718, !2722, !2723, !2745}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2667, file: !40, line: 431, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!118, !343, !118, !118, !2243}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2667, file: !40, line: 432, baseType: !2521, size: 64, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2667, file: !40, line: 433, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!118, !343, !7}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2667, file: !40, line: 434, baseType: !2675, size: 64, offset: 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2667, file: !40, line: 435, baseType: !2521, size: 64, offset: 256)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2667, file: !40, line: 436, baseType: !2681, size: 64, offset: 320)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!118, !343, !118, !2684}
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2685, file: !40, line: 418, baseType: !118, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2685, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2685, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2685, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2685, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2685, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2685, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2685, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2667, file: !40, line: 437, baseType: !2696, size: 64, offset: 384)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!118, !343, !2577, !2699}
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2701)
!2701 = !{!2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2700, file: !40, line: 346, baseType: !118, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2700, file: !40, line: 347, baseType: !419, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2700, file: !40, line: 348, baseType: !419, size: 64, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2700, file: !40, line: 349, baseType: !419, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2700, file: !40, line: 350, baseType: !419, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2700, file: !40, line: 351, baseType: !419, size: 64, offset: 320)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2700, file: !40, line: 352, baseType: !419, size: 64, offset: 384)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2700, file: !40, line: 353, baseType: !631, size: 64, offset: 448)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2700, file: !40, line: 355, baseType: !631, size: 64, offset: 512)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2700, file: !40, line: 356, baseType: !118, size: 32, offset: 576)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2700, file: !40, line: 357, baseType: !118, size: 32, offset: 608)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2700, file: !40, line: 358, baseType: !419, size: 64, offset: 640)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2700, file: !40, line: 359, baseType: !419, size: 64, offset: 704)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2700, file: !40, line: 360, baseType: !419, size: 64, offset: 768)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2700, file: !40, line: 361, baseType: !631, size: 64, offset: 832)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2700, file: !40, line: 362, baseType: !118, size: 32, offset: 896)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2667, file: !40, line: 438, baseType: !2719, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!118, !343, !2663, !2699}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2667, file: !40, line: 440, baseType: !2696, size: 64, offset: 512)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2667, file: !40, line: 441, baseType: !2724, size: 64, offset: 576)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!118, !343, !2727}
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2728, file: !40, line: 412, baseType: !7, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2728, file: !40, line: 413, baseType: !2732, size: 1344, offset: 64)
!2732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2733, size: 1344, elements: !670)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2734)
!2734 = !{!2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2733, file: !40, line: 398, baseType: !7, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2733, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2733, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2733, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2733, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2733, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2733, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2733, file: !40, line: 406, baseType: !421, size: 64, offset: 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2733, file: !40, line: 407, baseType: !2339, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2733, file: !40, line: 408, baseType: !2339, size: 64, offset: 384)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2667, file: !40, line: 442, baseType: !2675, size: 64, offset: 640)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !344, file: !35, line: 1200, baseType: !2747, size: 64, offset: 576)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !344, file: !35, line: 1201, baseType: !94, size: 64, offset: 640)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !344, file: !35, line: 1202, baseType: !94, size: 64, offset: 704)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !344, file: !35, line: 1203, baseType: !94, size: 64, offset: 768)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !344, file: !35, line: 1204, baseType: !383, size: 64, offset: 832)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !344, file: !35, line: 1205, baseType: !771, size: 320, offset: 896)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !344, file: !35, line: 1206, baseType: !118, size: 32, offset: 1216)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !344, file: !35, line: 1207, baseType: !605, size: 32, offset: 1248)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !344, file: !35, line: 1209, baseType: !90, size: 64, offset: 1280)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !344, file: !35, line: 1211, baseType: !2759, size: 64, offset: 1344)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !344, file: !35, line: 1223, baseType: !2764, size: 64, offset: 1408)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !400, line: 34, size: 64, elements: !2765)
!2765 = !{!2766}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2764, file: !400, line: 35, baseType: !403, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !344, file: !35, line: 1224, baseType: !347, size: 128, offset: 1472)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !344, file: !35, line: 1225, baseType: !2769, size: 64, offset: 1600)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !344, file: !35, line: 1226, baseType: !2772, size: 64, offset: 1664)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !344, file: !35, line: 1227, baseType: !2775, size: 64, offset: 1728)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !344, file: !35, line: 1228, baseType: !2778, size: 64, offset: 1792)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !344, file: !35, line: 1229, baseType: !691, size: 128, offset: 1856)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !344, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !344, file: !35, line: 1231, baseType: !2783, size: 2496, offset: 2048)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2784)
!2784 = !{!2785, !2786, !2787, !2789, !2821}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2783, file: !40, line: 522, baseType: !7, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2783, file: !40, line: 523, baseType: !771, size: 320, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2783, file: !40, line: 524, baseType: !2788, size: 192, offset: 384)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 192, elements: !670)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2783, file: !40, line: 525, baseType: !2790, size: 1728, offset: 576)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2791, size: 1728, elements: !670)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2792)
!2792 = !{!2793, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2791, file: !40, line: 223, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2796)
!2796 = !{!2797, !2798, !2811, !2812}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2795, file: !40, line: 446, baseType: !118, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2795, file: !40, line: 447, baseType: !2799, size: 64, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2801, file: !40, line: 313, baseType: !2521, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2801, file: !40, line: 314, baseType: !2521, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2801, file: !40, line: 315, baseType: !2521, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2801, file: !40, line: 316, baseType: !2521, size: 64, offset: 192)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2801, file: !40, line: 317, baseType: !2630, size: 64, offset: 256)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2801, file: !40, line: 318, baseType: !2630, size: 64, offset: 320)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2801, file: !40, line: 319, baseType: !2630, size: 64, offset: 384)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2801, file: !40, line: 320, baseType: !2660, size: 64, offset: 448)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2795, file: !40, line: 448, baseType: !954, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2795, file: !40, line: 449, baseType: !2794, size: 64, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2791, file: !40, line: 224, baseType: !118, size: 32, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2791, file: !40, line: 226, baseType: !347, size: 128, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2791, file: !40, line: 227, baseType: !94, size: 64, offset: 256)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2791, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2791, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2791, file: !40, line: 230, baseType: !2598, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2791, file: !40, line: 231, baseType: !2598, size: 64, offset: 448)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2791, file: !40, line: 232, baseType: !90, size: 64, offset: 512)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2783, file: !40, line: 526, baseType: !2822, size: 192, offset: 2304)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2799, size: 192, elements: !670)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !344, file: !35, line: 1233, baseType: !2824, size: 2368, offset: 4544)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2825)
!2825 = !{!2826, !2827, !2828}
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2824, file: !35, line: 1185, baseType: !111, size: 16)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2824, file: !35, line: 1186, baseType: !111, size: 16, offset: 16)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2824, file: !35, line: 1187, baseType: !2829, size: 2304, offset: 64)
!2829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2830, size: 2304, elements: !670)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2831, line: 12, size: 768, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2832 = !{!2833, !2841, !2842, !4015, !4016}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2830, file: !2831, line: 13, baseType: !2834, size: 384)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2835, line: 17, size: 384, elements: !2836)
!2835 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2834, file: !2835, line: 18, baseType: !118, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2834, file: !2835, line: 19, baseType: !118, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2834, file: !2835, line: 20, baseType: !700, size: 192, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2834, file: !2835, line: 22, baseType: !575, size: 128, align: 64, offset: 256)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2830, file: !2831, line: 14, baseType: !1856, size: 64, offset: 384)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2830, file: !2831, line: 15, baseType: !2843, size: 64, offset: 448)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2844, line: 16, size: 64, elements: !2845)
!2844 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2845 = !{!2846}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2843, file: !2844, line: 17, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1678, line: 746, size: 58368, elements: !2849)
!2849 = !{!2850, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2930, !2941, !3029, !3033, !3036, !3067, !3068, !3069, !3070, !3081, !3083, !3084, !3085, !3086, !3087, !3088, !3099, !3100, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3117, !3118, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3206, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3254, !3260, !3261, !3262, !3263, !3264, !3268, !3271, !3278, !3283, !3286, !3289, !3292, !3295, !3433, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3471, !3472, !3473, !3482, !3490, !3491, !3492, !3493, !3494, !3499, !3500, !3501, !3504, !3505, !3508, !3511, !3514, !3522, !3525, !3526, !3612, !3613, !3614, !3615, !3616, !3622, !3623, !3624, !3625, !3628, !3629, !3632, !3635, !3636, !3639, !3640, !3641, !3644, !3645, !3646, !3647, !3648, !3649, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3681, !3682, !3688, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3700, !3772, !3774, !3775, !3776, !3777, !3778, !3779, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3796, !3797, !3798}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2848, file: !1678, line: 752, baseType: !2851, size: 192)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2852, line: 56, size: 192, elements: !2853)
!2852 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2853 = !{!2854, !2855, !2856, !2857}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2851, file: !2852, line: 57, baseType: !94, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2851, file: !2852, line: 58, baseType: !94, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2851, file: !2852, line: 59, baseType: !355, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2851, file: !2852, line: 61, baseType: !355, size: 32, offset: 160)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2848, file: !1678, line: 754, baseType: !7, size: 32, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2848, file: !1678, line: 767, baseType: !90, size: 64, offset: 256)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2848, file: !1678, line: 768, baseType: !678, size: 32, offset: 320)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2848, file: !1678, line: 770, baseType: !7, size: 32, offset: 352)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2848, file: !1678, line: 771, baseType: !7, size: 32, offset: 384)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2848, file: !1678, line: 774, baseType: !118, size: 32, offset: 416)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2848, file: !1678, line: 775, baseType: !2865, size: 128, offset: 448)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2866, line: 58, size: 128, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2867 = !{!2868, !2869, !2874, !2875}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2865, file: !2866, line: 59, baseType: !569, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, scope: !2865, file: !2866, line: 60, baseType: !2870, size: 32, offset: 64)
!2870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2865, file: !2866, line: 60, size: 32, elements: !2871)
!2871 = !{!2872, !2873}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2870, file: !2866, line: 61, baseType: !7, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2870, file: !2866, line: 62, baseType: !605, size: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2865, file: !2866, line: 65, baseType: !620, size: 16, offset: 96)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2865, file: !2866, line: 65, baseType: !620, size: 16, offset: 112)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2848, file: !1678, line: 776, baseType: !7, size: 32, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2848, file: !1678, line: 777, baseType: !94, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2848, file: !1678, line: 778, baseType: !2847, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2848, file: !1678, line: 787, baseType: !118, size: 32, offset: 768)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2848, file: !1678, line: 788, baseType: !118, size: 32, offset: 800)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2848, file: !1678, line: 790, baseType: !118, size: 32, offset: 832)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2848, file: !1678, line: 792, baseType: !118, size: 32, offset: 864)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2848, file: !1678, line: 793, baseType: !118, size: 32, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2848, file: !1678, line: 794, baseType: !118, size: 32, offset: 928)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2848, file: !1678, line: 795, baseType: !7, size: 32, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2848, file: !1678, line: 797, baseType: !2887, size: 2048, offset: 1024)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1678, line: 551, size: 2048, elements: !2888)
!2888 = !{!2889, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2909, !2912, !2913, !2914}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2887, file: !1678, line: 553, baseType: !2890, size: 128)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1678, line: 411, size: 128, elements: !2891)
!2891 = !{!2892, !2893}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2890, file: !1678, line: 412, baseType: !94, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2890, file: !1678, line: 413, baseType: !355, size: 32, offset: 64)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2887, file: !1678, line: 554, baseType: !763, size: 192, align: 64, offset: 128)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2887, file: !1678, line: 555, baseType: !419, size: 64, offset: 320)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2887, file: !1678, line: 556, baseType: !419, size: 64, offset: 384)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2887, file: !1678, line: 558, baseType: !347, size: 128, offset: 448)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2887, file: !1678, line: 559, baseType: !7, size: 32, offset: 576)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2887, file: !1678, line: 561, baseType: !419, size: 64, offset: 640)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2887, file: !1678, line: 562, baseType: !419, size: 64, offset: 704)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2887, file: !1678, line: 563, baseType: !419, size: 64, offset: 768)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2887, file: !1678, line: 564, baseType: !419, size: 64, offset: 832)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2887, file: !1678, line: 565, baseType: !631, size: 64, offset: 896)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2887, file: !1678, line: 566, baseType: !419, size: 64, offset: 960)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2887, file: !1678, line: 568, baseType: !419, size: 64, offset: 1024)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2887, file: !1678, line: 571, baseType: !118, size: 32, offset: 1088)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2887, file: !1678, line: 572, baseType: !2908, size: 64, offset: 1152)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2887, file: !1678, line: 574, baseType: !2910, size: 64, offset: 1216)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1678, line: 49, flags: DIFlagFwdDecl)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2887, file: !1678, line: 576, baseType: !2910, size: 64, offset: 1280)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2887, file: !1678, line: 578, baseType: !94, size: 64, offset: 1344)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2887, file: !1678, line: 588, baseType: !2915, size: 512, align: 512, offset: 1536)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1678, line: 497, size: 512, align: 512, elements: !2916)
!2916 = !{!2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2915, file: !1678, line: 498, baseType: !419, size: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2915, file: !1678, line: 499, baseType: !419, size: 64, offset: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2915, file: !1678, line: 500, baseType: !419, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2915, file: !1678, line: 501, baseType: !355, size: 32, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2915, file: !1678, line: 502, baseType: !355, size: 32, offset: 224)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2915, file: !1678, line: 503, baseType: !94, size: 64, offset: 256)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2915, file: !1678, line: 504, baseType: !94, size: 64, offset: 320)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2915, file: !1678, line: 505, baseType: !94, size: 64, offset: 384)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2915, file: !1678, line: 506, baseType: !2926, size: 64, align: 64, offset: 448)
!2926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1678, line: 445, size: 64, align: 64, elements: !2927)
!2927 = !{!2928, !2929}
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2926, file: !1678, line: 446, baseType: !7, size: 32)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2926, file: !1678, line: 447, baseType: !7, size: 32, offset: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2848, file: !1678, line: 798, baseType: !2931, size: 384, offset: 3072)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1678, line: 592, size: 384, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2936, !2937, !2938, !2939}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2931, file: !1678, line: 593, baseType: !347, size: 128)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2931, file: !1678, line: 594, baseType: !94, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2931, file: !1678, line: 595, baseType: !94, size: 64, offset: 192)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2931, file: !1678, line: 596, baseType: !7, size: 32, offset: 256)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2931, file: !1678, line: 597, baseType: !111, size: 16, offset: 288)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2931, file: !1678, line: 598, baseType: !111, size: 16, offset: 304)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2931, file: !1678, line: 600, baseType: !2940, size: 64, offset: 320)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2848, file: !1678, line: 799, baseType: !2942, size: 1792, offset: 3456)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1678, line: 610, size: 1792, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !3026, !3027}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2942, file: !1678, line: 611, baseType: !763, size: 192, align: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2942, file: !1678, line: 618, baseType: !419, size: 64, offset: 192)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2942, file: !1678, line: 619, baseType: !419, size: 64, offset: 256)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2942, file: !1678, line: 620, baseType: !419, size: 64, offset: 320)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2942, file: !1678, line: 621, baseType: !419, size: 64, offset: 384)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2942, file: !1678, line: 622, baseType: !419, size: 64, offset: 448)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2942, file: !1678, line: 629, baseType: !631, size: 64, offset: 512)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2942, file: !1678, line: 630, baseType: !419, size: 64, offset: 576)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2942, file: !1678, line: 631, baseType: !7, size: 32, offset: 640)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2942, file: !1678, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2942, file: !1678, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2942, file: !1678, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2942, file: !1678, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2942, file: !1678, line: 662, baseType: !2958, size: 512, offset: 704)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2959)
!2959 = !{!2960, !2968, !2969, !2974, !3022, !3023, !3024, !3025}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2958, file: !46, line: 119, baseType: !2961, size: 256)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2962, line: 9, size: 256, elements: !2963)
!2962 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2963 = !{!2964, !2965}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2961, file: !2962, line: 10, baseType: !763, size: 192, align: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2961, file: !2962, line: 11, baseType: !2966, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2967, line: 29, baseType: !631)
!2967 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2958, file: !46, line: 120, baseType: !2966, size: 64, offset: 256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2958, file: !46, line: 121, baseType: !2970, size: 64, offset: 320)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!45, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2958, file: !46, line: 122, baseType: !2975, size: 64, offset: 384)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2977)
!2977 = !{!2978, !3003, !3004, !3007, !3012, !3013, !3017, !3021}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2976, file: !46, line: 160, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2980, file: !46, line: 216, baseType: !638, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2980, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2980, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2980, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2980, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2980, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2980, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2980, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2980, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2980, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2980, file: !46, line: 227, baseType: !111, size: 16, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2980, file: !46, line: 228, baseType: !111, size: 16, offset: 208)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2980, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2980, file: !46, line: 235, baseType: !2966, size: 64, offset: 256)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2980, file: !46, line: 236, baseType: !2973, size: 64, offset: 320)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2980, file: !46, line: 237, baseType: !2966, size: 64, offset: 384)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2980, file: !46, line: 238, baseType: !2973, size: 64, offset: 448)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2980, file: !46, line: 239, baseType: !3000, size: 4096, align: 512, offset: 512)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2976, size: 4096, align: 512, elements: !3001)
!3001 = !{!3002}
!3002 = !DISubrange(count: 8)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2976, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2976, file: !46, line: 162, baseType: !3005, size: 32, offset: 96)
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !92, line: 32, baseType: !3006)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !116, line: 96, baseType: !118)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2976, file: !46, line: 163, baseType: !3008, size: 32, offset: 128)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !390, line: 274, baseType: !3009)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !390, line: 274, size: 32, elements: !3010)
!3010 = !{!3011}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3009, file: !390, line: 274, baseType: !394, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2976, file: !46, line: 164, baseType: !2973, size: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2976, file: !46, line: 165, baseType: !3014, size: 128, offset: 256)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2962, line: 14, size: 128, elements: !3015)
!3015 = !{!3016}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !3014, file: !2962, line: 15, baseType: !1092, size: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2976, file: !46, line: 166, baseType: !3018, size: 64, offset: 384)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!2966}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2976, file: !46, line: 167, baseType: !2966, size: 64, offset: 448)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2958, file: !46, line: 123, baseType: !613, size: 8, offset: 448)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2958, file: !46, line: 124, baseType: !613, size: 8, offset: 456)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2958, file: !46, line: 125, baseType: !613, size: 8, offset: 464)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2958, file: !46, line: 126, baseType: !613, size: 8, offset: 472)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2942, file: !1678, line: 671, baseType: !2958, size: 512, offset: 1216)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2942, file: !1678, line: 679, baseType: !3028, size: 64, offset: 1728)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2848, file: !1678, line: 800, baseType: !3030, size: 64, offset: 5248)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3032)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1678, line: 800, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2848, file: !1678, line: 809, baseType: !3034, size: 64, offset: 5312)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1678, line: 70, flags: DIFlagFwdDecl)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2848, file: !1678, line: 825, baseType: !3037, size: 2048, align: 512, offset: 5632)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1678, line: 509, size: 2048, align: 512, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3037, file: !1678, line: 511, baseType: !419, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3037, file: !1678, line: 512, baseType: !419, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3037, file: !1678, line: 513, baseType: !419, size: 64, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3037, file: !1678, line: 514, baseType: !419, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3037, file: !1678, line: 515, baseType: !419, size: 64, offset: 256)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3037, file: !1678, line: 516, baseType: !419, size: 64, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3037, file: !1678, line: 518, baseType: !419, size: 64, offset: 384)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3037, file: !1678, line: 519, baseType: !419, size: 64, offset: 448)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3037, file: !1678, line: 520, baseType: !631, size: 64, offset: 512)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3037, file: !1678, line: 522, baseType: !419, size: 64, offset: 576)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3037, file: !1678, line: 523, baseType: !419, size: 64, offset: 640)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3037, file: !1678, line: 524, baseType: !631, size: 64, offset: 704)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3037, file: !1678, line: 526, baseType: !631, size: 64, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3037, file: !1678, line: 527, baseType: !419, size: 64, offset: 832)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3037, file: !1678, line: 529, baseType: !419, size: 64, offset: 896)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3037, file: !1678, line: 530, baseType: !419, size: 64, offset: 960)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3037, file: !1678, line: 531, baseType: !419, size: 64, offset: 1024)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3037, file: !1678, line: 532, baseType: !419, size: 64, offset: 1088)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3037, file: !1678, line: 533, baseType: !419, size: 64, offset: 1152)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3037, file: !1678, line: 535, baseType: !419, size: 64, offset: 1216)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3037, file: !1678, line: 536, baseType: !419, size: 64, offset: 1280)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3037, file: !1678, line: 537, baseType: !419, size: 64, offset: 1344)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3037, file: !1678, line: 538, baseType: !419, size: 64, offset: 1408)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3037, file: !1678, line: 539, baseType: !419, size: 64, offset: 1472)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3037, file: !1678, line: 540, baseType: !419, size: 64, offset: 1536)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3037, file: !1678, line: 541, baseType: !419, size: 64, offset: 1600)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3037, file: !1678, line: 542, baseType: !419, size: 64, offset: 1664)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3037, file: !1678, line: 543, baseType: !419, size: 64, offset: 1728)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2848, file: !1678, line: 833, baseType: !7, size: 32, offset: 7680)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2848, file: !1678, line: 836, baseType: !7, size: 32, offset: 7712)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2848, file: !1678, line: 837, baseType: !118, size: 32, offset: 7744)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2848, file: !1678, line: 838, baseType: !3071, size: 64, offset: 7808)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3073)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !3074, line: 19, baseType: !3075)
!3074 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !3074, line: 19, size: 64, elements: !3076)
!3076 = !{!3077}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3075, file: !3074, line: 19, baseType: !3078, size: 64)
!3078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !3079)
!3079 = !{!3080}
!3080 = !DISubrange(count: 1)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2848, file: !1678, line: 839, baseType: !3082, size: 64, offset: 7872)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2848, file: !1678, line: 840, baseType: !3073, size: 64, offset: 7936)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2848, file: !1678, line: 841, baseType: !90, size: 64, offset: 8000)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2848, file: !1678, line: 843, baseType: !111, size: 16, offset: 8064)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2848, file: !1678, line: 845, baseType: !111, size: 16, offset: 8080)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2848, file: !1678, line: 848, baseType: !118, size: 32, offset: 8096)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2848, file: !1678, line: 849, baseType: !3089, size: 32, offset: 8128)
!3089 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1678, line: 718, size: 32, elements: !3090)
!3090 = !{!3091, !3098}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3089, file: !1678, line: 724, baseType: !3092, size: 32)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3089, file: !1678, line: 719, size: 32, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3092, file: !1678, line: 720, baseType: !613, size: 8)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3092, file: !1678, line: 721, baseType: !613, size: 8, offset: 8)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3092, file: !1678, line: 722, baseType: !613, size: 8, offset: 16)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3092, file: !1678, line: 723, baseType: !613, size: 8, offset: 24)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3089, file: !1678, line: 725, baseType: !355, size: 32)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2848, file: !1678, line: 850, baseType: !347, size: 128, offset: 8192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2848, file: !1678, line: 851, baseType: !3101, size: 64, offset: 8320)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1678, line: 60, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2848, file: !1678, line: 855, baseType: !94, size: 64, offset: 8384)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2848, file: !1678, line: 856, baseType: !613, size: 8, offset: 8448)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2848, file: !1678, line: 857, baseType: !613, size: 8, offset: 8456)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2848, file: !1678, line: 858, baseType: !118, size: 32, offset: 8480)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2848, file: !1678, line: 859, baseType: !347, size: 128, offset: 8512)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2848, file: !1678, line: 860, baseType: !118, size: 32, offset: 8640)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2848, file: !1678, line: 861, baseType: !347, size: 128, offset: 8704)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2848, file: !1678, line: 873, baseType: !3111, size: 256, offset: 8832)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1678, line: 376, size: 256, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3111, file: !1678, line: 381, baseType: !94, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3111, file: !1678, line: 384, baseType: !421, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3111, file: !1678, line: 389, baseType: !421, size: 64, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3111, file: !1678, line: 392, baseType: !421, size: 64, offset: 192)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2848, file: !1678, line: 875, baseType: !347, size: 128, offset: 9088)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2848, file: !1678, line: 877, baseType: !3119, size: 320, offset: 9216)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3120, line: 86, size: 320, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3121 = !{!3122, !3123, !3124}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3119, file: !3120, line: 87, baseType: !118, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3119, file: !3120, line: 88, baseType: !347, size: 128, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3119, file: !3120, line: 89, baseType: !347, size: 128, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2848, file: !1678, line: 878, baseType: !763, size: 192, align: 64, offset: 9536)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2848, file: !1678, line: 881, baseType: !1378, size: 64, offset: 9728)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2848, file: !1678, line: 882, baseType: !1378, size: 64, offset: 9792)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2848, file: !1678, line: 884, baseType: !118, size: 32, offset: 9856)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2848, file: !1678, line: 885, baseType: !118, size: 32, offset: 9888)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2848, file: !1678, line: 886, baseType: !118, size: 32, offset: 9920)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2848, file: !1678, line: 888, baseType: !118, size: 32, offset: 9952)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2848, file: !1678, line: 890, baseType: !94, size: 64, offset: 9984)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2848, file: !1678, line: 893, baseType: !7, size: 32, offset: 10048)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2848, file: !1678, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2848, file: !1678, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2848, file: !1678, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2848, file: !1678, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2848, file: !1678, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2848, file: !1678, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2848, file: !1678, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2848, file: !1678, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2848, file: !1678, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2848, file: !1678, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2848, file: !1678, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2848, file: !1678, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2848, file: !1678, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2848, file: !1678, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2848, file: !1678, line: 969, baseType: !94, size: 64, offset: 10176)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2848, file: !1678, line: 971, baseType: !3150, size: 448, offset: 10240)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !3151)
!3151 = !{!3152, !3153, !3158}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3150, file: !51, line: 26, baseType: !94, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3150, file: !51, line: 27, baseType: !3154, size: 64, offset: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!125, !3157}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !51, line: 28, baseType: !3159, size: 320, offset: 128)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3150, file: !51, line: 28, size: 320, elements: !3160)
!3160 = !{!3161, !3171, !3196}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3159, file: !51, line: 37, baseType: !3162, size: 320)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !51, line: 30, size: 320, elements: !3163)
!3163 = !{!3164, !3166, !3167, !3168, !3169, !3170}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3162, file: !51, line: 31, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3162, file: !51, line: 32, baseType: !355, size: 32, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3162, file: !51, line: 33, baseType: !355, size: 32, offset: 96)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3162, file: !51, line: 34, baseType: !355, size: 32, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3162, file: !51, line: 35, baseType: !419, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3162, file: !51, line: 36, baseType: !3165, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3159, file: !51, line: 47, baseType: !3172, size: 192)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !51, line: 39, size: 192, elements: !3173)
!3173 = !{!3174, !3175, !3176, !3195}
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3172, file: !51, line: 40, baseType: !3005, size: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3172, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, scope: !3172, file: !51, line: 42, baseType: !3177, size: 64, offset: 64)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3172, file: !51, line: 42, size: 64, elements: !3178)
!3178 = !{!3179, !3187}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3177, file: !51, line: 43, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3182, line: 7, size: 128, elements: !3183)
!3182 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3183 = !{!3184, !3186}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3181, file: !3182, line: 8, baseType: !3185, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !116, line: 93, baseType: !117)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3181, file: !3182, line: 9, baseType: !117, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3177, file: !51, line: 44, baseType: !3188, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3190, line: 7, size: 64, elements: !3191)
!3190 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3191 = !{!3192, !3194}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3189, file: !3190, line: 8, baseType: !3193, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3190, line: 5, baseType: !756)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3189, file: !3190, line: 9, baseType: !756, size: 32, offset: 32)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3172, file: !51, line: 46, baseType: !419, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3159, file: !51, line: 55, baseType: !3197, size: 256)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !51, line: 49, size: 256, elements: !3198)
!3198 = !{!3199, !3202, !3203, !3204, !3205}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3197, file: !51, line: 50, baseType: !3200, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3197, file: !51, line: 51, baseType: !118, size: 32, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3197, file: !51, line: 52, baseType: !118, size: 32, offset: 96)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3197, file: !51, line: 53, baseType: !94, size: 64, offset: 128)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3197, file: !51, line: 54, baseType: !94, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2848, file: !1678, line: 973, baseType: !3207, size: 32, offset: 10688)
!3207 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !92, line: 27, baseType: !3208)
!3208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !116, line: 28, baseType: !118)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2848, file: !1678, line: 974, baseType: !3207, size: 32, offset: 10720)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2848, file: !1678, line: 978, baseType: !94, size: 64, offset: 10752)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2848, file: !1678, line: 987, baseType: !2847, size: 64, offset: 10816)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2848, file: !1678, line: 990, baseType: !2847, size: 64, offset: 10880)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2848, file: !1678, line: 995, baseType: !347, size: 128, offset: 10944)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2848, file: !1678, line: 996, baseType: !347, size: 128, offset: 11072)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2848, file: !1678, line: 997, baseType: !2847, size: 64, offset: 11200)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2848, file: !1678, line: 1005, baseType: !347, size: 128, offset: 11264)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2848, file: !1678, line: 1006, baseType: !347, size: 128, offset: 11392)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2848, file: !1678, line: 1009, baseType: !674, size: 64, offset: 11520)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2848, file: !1678, line: 1010, baseType: !3220, size: 512, offset: 11584)
!3220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 512, elements: !696)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2848, file: !1678, line: 1011, baseType: !347, size: 128, offset: 12096)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2848, file: !1678, line: 1012, baseType: !347, size: 128, offset: 12224)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2848, file: !1678, line: 1014, baseType: !1757, size: 64, offset: 12352)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2848, file: !1678, line: 1017, baseType: !1904, size: 64, offset: 12416)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2848, file: !1678, line: 1020, baseType: !1904, size: 64, offset: 12480)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2848, file: !1678, line: 1023, baseType: !90, size: 64, offset: 12544)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2848, file: !1678, line: 1025, baseType: !419, size: 64, offset: 12608)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2848, file: !1678, line: 1026, baseType: !419, size: 64, offset: 12672)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2848, file: !1678, line: 1031, baseType: !419, size: 64, offset: 12736)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2848, file: !1678, line: 1032, baseType: !3231, size: 192, offset: 12800)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1678, line: 324, size: 192, elements: !3232)
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3231, file: !1678, line: 326, baseType: !419, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3231, file: !1678, line: 327, baseType: !419, size: 64, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3231, file: !1678, line: 328, baseType: !638, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2848, file: !1678, line: 1041, baseType: !94, size: 64, offset: 12992)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2848, file: !1678, line: 1042, baseType: !94, size: 64, offset: 13056)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2848, file: !1678, line: 1045, baseType: !419, size: 64, offset: 13120)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2848, file: !1678, line: 1048, baseType: !419, size: 64, offset: 13184)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2848, file: !1678, line: 1051, baseType: !94, size: 64, offset: 13248)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2848, file: !1678, line: 1052, baseType: !94, size: 64, offset: 13312)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2848, file: !1678, line: 1055, baseType: !3243, size: 640, offset: 13376)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3244, line: 132, size: 640, elements: !3245)
!3244 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3245 = !{!3246, !3252, !3253}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3243, file: !3244, line: 133, baseType: !3247, size: 576)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3248, size: 576, elements: !670)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3244, line: 117, size: 192, elements: !3249)
!3249 = !{!3250, !3251}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3248, file: !3244, line: 118, baseType: !419, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3248, file: !3244, line: 119, baseType: !3014, size: 128, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3243, file: !3244, line: 134, baseType: !7, size: 32, offset: 576)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3243, file: !3244, line: 135, baseType: !7, size: 32, offset: 608)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2848, file: !1678, line: 1058, baseType: !3255, size: 448, offset: 14016)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3244, line: 144, size: 448, elements: !3256)
!3256 = !{!3257, !3258, !3259}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3255, file: !3244, line: 145, baseType: !575, size: 128, align: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3255, file: !3244, line: 146, baseType: !633, size: 256, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3255, file: !3244, line: 147, baseType: !7, size: 32, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2848, file: !1678, line: 1064, baseType: !722, size: 64, offset: 14464)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2848, file: !1678, line: 1067, baseType: !722, size: 64, offset: 14528)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2848, file: !1678, line: 1070, baseType: !722, size: 64, offset: 14592)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2848, file: !1678, line: 1074, baseType: !748, size: 64, offset: 14656)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2848, file: !1678, line: 1084, baseType: !3265, size: 128, offset: 14720)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, elements: !3266)
!3266 = !{!3267}
!3267 = !DISubrange(count: 16)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2848, file: !1678, line: 1086, baseType: !3269, size: 64, offset: 14848)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1678, line: 55, flags: DIFlagFwdDecl)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2848, file: !1678, line: 1089, baseType: !3272, size: 64, offset: 14912)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3273, line: 12, size: 64, elements: !3274)
!3273 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3274 = !{!3275}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3272, file: !3273, line: 13, baseType: !3276, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3273, line: 8, flags: DIFlagFwdDecl)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2848, file: !1678, line: 1090, baseType: !3279, size: 128, offset: 14976)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3280, line: 13, size: 128, elements: !3281)
!3280 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3281 = !{!3282}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3279, file: !3280, line: 14, baseType: !347, size: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2848, file: !1678, line: 1097, baseType: !3284, size: 64, offset: 15104)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1678, line: 50, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2848, file: !1678, line: 1100, baseType: !3287, size: 64, offset: 15168)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1678, line: 1100, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2848, file: !1678, line: 1103, baseType: !3290, size: 64, offset: 15232)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1678, line: 53, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2848, file: !1678, line: 1107, baseType: !3293, size: 64, offset: 15296)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1678, line: 56, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2848, file: !1678, line: 1110, baseType: !3296, size: 64, offset: 15360)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3298, line: 93, size: 8768, elements: !3299)
!3298 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3299 = !{!3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3347, !3356, !3357, !3359, !3360, !3361, !3364, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3402, !3403, !3410, !3420, !3423, !3424, !3427, !3428, !3429, !3430, !3431, !3432}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3297, file: !3298, line: 94, baseType: !678, size: 32)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3297, file: !3298, line: 95, baseType: !605, size: 32, offset: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3297, file: !3298, line: 96, baseType: !118, size: 32, offset: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3297, file: !3298, line: 97, baseType: !118, size: 32, offset: 96)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3297, file: !3298, line: 98, baseType: !347, size: 128, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3297, file: !3298, line: 100, baseType: !700, size: 192, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3297, file: !3298, line: 103, baseType: !2847, size: 64, offset: 448)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3297, file: !3298, line: 106, baseType: !3308, size: 192, offset: 512)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !911, line: 32, size: 192, elements: !3309)
!3309 = !{!3310, !3311}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3308, file: !911, line: 33, baseType: !347, size: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3308, file: !911, line: 34, baseType: !3312, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3313, line: 25, baseType: !3314)
!3313 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3313, line: 23, size: 64, elements: !3315)
!3315 = !{!3316}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3314, file: !3313, line: 24, baseType: !3078, size: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3297, file: !3298, line: 109, baseType: !687, size: 64, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3297, file: !3298, line: 112, baseType: !118, size: 32, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3297, file: !3298, line: 114, baseType: !118, size: 32, offset: 800)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3297, file: !3298, line: 115, baseType: !2847, size: 64, offset: 832)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3297, file: !3298, line: 118, baseType: !118, size: 32, offset: 896)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3297, file: !3298, line: 119, baseType: !7, size: 32, offset: 928)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3297, file: !3298, line: 121, baseType: !3324, size: 64, offset: 960)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3298, line: 80, size: 448, elements: !3326)
!3326 = !{!3327, !3328, !3334}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3325, file: !3298, line: 81, baseType: !605, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3325, file: !3298, line: 82, baseType: !3329, size: 128, offset: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3298, line: 75, size: 128, elements: !3330)
!3330 = !{!3331, !3332}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3329, file: !3298, line: 76, baseType: !2847, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3329, file: !3298, line: 77, baseType: !3333, size: 64, offset: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3325, file: !3298, line: 83, baseType: !1758, size: 256, offset: 192)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3297, file: !3298, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3297, file: !3298, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3297, file: !3298, line: 138, baseType: !7, size: 32, offset: 1056)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3297, file: !3298, line: 139, baseType: !347, size: 128, offset: 1088)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3297, file: !3298, line: 142, baseType: !2958, size: 512, offset: 1216)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3297, file: !3298, line: 143, baseType: !2966, size: 64, offset: 1728)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3297, file: !3298, line: 150, baseType: !3342, size: 256, offset: 1792)
!3342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3343, size: 256, elements: !1894)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3298, line: 38, size: 128, elements: !3344)
!3344 = !{!3345, !3346}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3343, file: !3298, line: 39, baseType: !419, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3343, file: !3298, line: 40, baseType: !419, size: 64, offset: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3297, file: !3298, line: 156, baseType: !3348, size: 192, offset: 2048)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3298, line: 66, size: 192, elements: !3349)
!3349 = !{!3350}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3348, file: !3298, line: 67, baseType: !3351, size: 192)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3298, line: 47, size: 192, elements: !3352)
!3352 = !{!3353, !3354, !3355}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3351, file: !3298, line: 48, baseType: !627, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3351, file: !3298, line: 49, baseType: !627, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3351, file: !3298, line: 50, baseType: !627, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3297, file: !3298, line: 160, baseType: !3243, size: 640, offset: 2240)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3297, file: !3298, line: 163, baseType: !3358, size: 256, offset: 2880)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 256, elements: !696)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3297, file: !3298, line: 169, baseType: !674, size: 64, offset: 3136)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3297, file: !3298, line: 172, baseType: !118, size: 32, offset: 3200)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3297, file: !3298, line: 174, baseType: !3362, size: 64, offset: 3264)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3298, line: 174, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3297, file: !3298, line: 185, baseType: !3365, size: 64, offset: 3328)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !390, line: 860, baseType: !3366)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !390, line: 853, size: 64, elements: !3367)
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3366, file: !390, line: 858, baseType: !389, size: 32)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3366, file: !390, line: 859, baseType: !585, size: 32, offset: 32)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3297, file: !3298, line: 186, baseType: !419, size: 64, offset: 3392)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3297, file: !3298, line: 186, baseType: !419, size: 64, offset: 3456)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3297, file: !3298, line: 186, baseType: !419, size: 64, offset: 3520)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3297, file: !3298, line: 186, baseType: !419, size: 64, offset: 3584)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3297, file: !3298, line: 187, baseType: !419, size: 64, offset: 3648)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3297, file: !3298, line: 188, baseType: !419, size: 64, offset: 3712)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3297, file: !3298, line: 189, baseType: !3231, size: 192, offset: 3776)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3297, file: !3298, line: 190, baseType: !94, size: 64, offset: 3968)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3297, file: !3298, line: 190, baseType: !94, size: 64, offset: 4032)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3297, file: !3298, line: 190, baseType: !94, size: 64, offset: 4096)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3297, file: !3298, line: 190, baseType: !94, size: 64, offset: 4160)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3297, file: !3298, line: 191, baseType: !94, size: 64, offset: 4224)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3297, file: !3298, line: 191, baseType: !94, size: 64, offset: 4288)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3297, file: !3298, line: 191, baseType: !94, size: 64, offset: 4352)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3297, file: !3298, line: 191, baseType: !94, size: 64, offset: 4416)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3297, file: !3298, line: 192, baseType: !94, size: 64, offset: 4480)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3297, file: !3298, line: 192, baseType: !94, size: 64, offset: 4544)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3297, file: !3298, line: 192, baseType: !94, size: 64, offset: 4608)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3297, file: !3298, line: 192, baseType: !94, size: 64, offset: 4672)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3297, file: !3298, line: 193, baseType: !94, size: 64, offset: 4736)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3297, file: !3298, line: 193, baseType: !94, size: 64, offset: 4800)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3297, file: !3298, line: 194, baseType: !3392, size: 448, offset: 4864)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3393, line: 12, size: 448, elements: !3394)
!3393 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3394 = !{!3395, !3396, !3397, !3398, !3399, !3400, !3401}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3392, file: !3393, line: 15, baseType: !419, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3392, file: !3393, line: 17, baseType: !419, size: 64, offset: 64)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3392, file: !3393, line: 19, baseType: !419, size: 64, offset: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3392, file: !3393, line: 21, baseType: !419, size: 64, offset: 192)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3392, file: !3393, line: 29, baseType: !419, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3392, file: !3393, line: 35, baseType: !419, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3392, file: !3393, line: 44, baseType: !419, size: 64, offset: 384)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3297, file: !3298, line: 202, baseType: !421, size: 64, offset: 5312)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3297, file: !3298, line: 213, baseType: !3404, size: 2048, offset: 5376)
!3404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3405, size: 2048, elements: !3266)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3406, line: 43, size: 128, elements: !3407)
!3406 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3405, file: !3406, line: 44, baseType: !1051, size: 64)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3405, file: !3406, line: 45, baseType: !1051, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3297, file: !3298, line: 216, baseType: !3411, size: 448, offset: 7424)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3298, line: 30, size: 448, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3411, file: !3298, line: 31, baseType: !118, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3411, file: !3298, line: 32, baseType: !125, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3411, file: !3298, line: 33, baseType: !94, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3411, file: !3298, line: 34, baseType: !419, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3411, file: !3298, line: 34, baseType: !419, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3411, file: !3298, line: 35, baseType: !94, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3411, file: !3298, line: 35, baseType: !94, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3297, file: !3298, line: 219, baseType: !3421, size: 64, offset: 7872)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3298, line: 219, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3297, file: !3298, line: 222, baseType: !7, size: 32, offset: 7936)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3297, file: !3298, line: 223, baseType: !3425, size: 64, offset: 8000)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3298, line: 223, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3297, file: !3298, line: 230, baseType: !486, size: 8, offset: 8064)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3297, file: !3298, line: 231, baseType: !797, size: 16, offset: 8080)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3297, file: !3298, line: 232, baseType: !797, size: 16, offset: 8096)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3297, file: !3298, line: 234, baseType: !1378, size: 64, offset: 8128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3297, file: !3298, line: 237, baseType: !633, size: 256, offset: 8192)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3297, file: !3298, line: 243, baseType: !771, size: 320, offset: 8448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2848, file: !1678, line: 1111, baseType: !3434, size: 64, offset: 15424)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3298, line: 20, size: 16640, elements: !3436)
!3436 = !{!3437, !3438, !3439, !3440}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3435, file: !3298, line: 21, baseType: !585, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3435, file: !3298, line: 22, baseType: !678, size: 32, offset: 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3435, file: !3298, line: 23, baseType: !700, size: 192, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3435, file: !3298, line: 24, baseType: !3441, size: 16384, offset: 256)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3442, size: 16384, elements: !1010)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !911, line: 51, size: 256, elements: !3443)
!3443 = !{!3444}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3442, file: !911, line: 52, baseType: !3445, size: 256)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !911, line: 37, size: 256, elements: !3446)
!3446 = !{!3447, !3454, !3455, !3459}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3445, file: !911, line: 39, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3449, line: 83, baseType: !3450)
!3449 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3449, line: 82, baseType: !3452)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{null, !118}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3445, file: !911, line: 40, baseType: !94, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3445, file: !911, line: 46, baseType: !3456, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3449, line: 86, baseType: !3457)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3449, line: 85, baseType: !2108)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3445, file: !911, line: 48, baseType: !3312, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2848, file: !1678, line: 1112, baseType: !3312, size: 64, offset: 15488)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2848, file: !1678, line: 1113, baseType: !3312, size: 64, offset: 15552)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2848, file: !1678, line: 1115, baseType: !3312, size: 64, offset: 15616)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2848, file: !1678, line: 1116, baseType: !3308, size: 192, offset: 15680)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2848, file: !1678, line: 1117, baseType: !94, size: 64, offset: 15872)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2848, file: !1678, line: 1118, baseType: !1049, size: 64, offset: 15936)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2848, file: !1678, line: 1119, baseType: !7, size: 32, offset: 16000)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2848, file: !1678, line: 1121, baseType: !578, size: 64, offset: 16064)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2848, file: !1678, line: 1125, baseType: !3469, size: 64, offset: 16128)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1678, line: 43, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2848, file: !1678, line: 1127, baseType: !433, size: 32, offset: 16192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2848, file: !1678, line: 1128, baseType: !7, size: 32, offset: 16224)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2848, file: !1678, line: 1130, baseType: !3474, size: 128, offset: 16256)
!3474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3475, line: 37, size: 128, elements: !3476)
!3475 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3476 = !{!3477, !3478, !3479}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3474, file: !3475, line: 38, baseType: !118, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3474, file: !3475, line: 39, baseType: !605, size: 32, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3474, file: !3475, line: 40, baseType: !3480, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3481 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3475, line: 24, flags: DIFlagFwdDecl)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2848, file: !1678, line: 1131, baseType: !3483, size: 256, offset: 16384)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3484, line: 12, size: 256, elements: !3485)
!3484 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3485 = !{!3486, !3487, !3488, !3489}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3483, file: !3484, line: 13, baseType: !492, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3483, file: !3484, line: 14, baseType: !94, size: 64, offset: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3483, file: !3484, line: 15, baseType: !94, size: 64, offset: 128)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3483, file: !3484, line: 16, baseType: !486, size: 8, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2848, file: !1678, line: 1134, baseType: !419, size: 64, offset: 16640)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2848, file: !1678, line: 1135, baseType: !419, size: 64, offset: 16704)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2848, file: !1678, line: 1138, baseType: !585, size: 32, offset: 16768)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2848, file: !1678, line: 1141, baseType: !638, size: 32, offset: 16800)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2848, file: !1678, line: 1143, baseType: !3495, size: 64, offset: 16832)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1678, line: 735, size: 64, elements: !3496)
!3496 = !{!3497}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3495, file: !1678, line: 736, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2848, file: !1678, line: 1147, baseType: !1092, size: 128, offset: 16896)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2848, file: !1678, line: 1149, baseType: !2847, size: 64, offset: 17024)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2848, file: !1678, line: 1151, baseType: !3502, size: 64, offset: 17088)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1678, line: 1151, flags: DIFlagFwdDecl)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2848, file: !1678, line: 1188, baseType: !90, size: 64, offset: 17152)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2848, file: !1678, line: 1191, baseType: !3506, size: 64, offset: 17216)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1678, line: 44, flags: DIFlagFwdDecl)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2848, file: !1678, line: 1194, baseType: !3509, size: 64, offset: 17280)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1678, line: 45, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2848, file: !1678, line: 1197, baseType: !3512, size: 64, offset: 17344)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1678, line: 61, flags: DIFlagFwdDecl)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2848, file: !1678, line: 1199, baseType: !3515, size: 64, offset: 17408)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3517, line: 99, size: 128, elements: !3518)
!3517 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3518 = !{!3519, !3520, !3521}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3516, file: !3517, line: 100, baseType: !625, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3516, file: !3517, line: 101, baseType: !605, size: 32, offset: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3516, file: !3517, line: 103, baseType: !111, size: 16, offset: 96)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2848, file: !1678, line: 1202, baseType: !3523, size: 64, offset: 17472)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1678, line: 48, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2848, file: !1678, line: 1205, baseType: !94, size: 64, offset: 17536)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2848, file: !1678, line: 1206, baseType: !3527, size: 64, offset: 17600)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !911, line: 14, baseType: !3529)
!3529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !911, line: 12, size: 384, elements: !3530)
!3530 = !{!3531}
!3531 = !DIDerivedType(tag: DW_TAG_member, scope: !3529, file: !911, line: 13, baseType: !3532, size: 384)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3529, file: !911, line: 13, size: 384, elements: !3533)
!3533 = !{!3534, !3535, !3536, !3537}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3532, file: !911, line: 13, baseType: !118, size: 32)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3532, file: !911, line: 13, baseType: !118, size: 32, offset: 32)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3532, file: !911, line: 13, baseType: !118, size: 32, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3532, file: !911, line: 13, baseType: !3538, size: 256, offset: 128)
!3538 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3539, line: 37, size: 256, elements: !3540)
!3539 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3540 = !{!3541, !3546, !3559, !3565, !3574, !3601, !3606}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3538, file: !3539, line: 42, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3538, file: !3539, line: 39, size: 64, elements: !3543)
!3543 = !{!3544, !3545}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3542, file: !3539, line: 40, baseType: !3208, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3542, file: !3539, line: 41, baseType: !439, size: 32, offset: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3538, file: !3539, line: 50, baseType: !3547, size: 192)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3538, file: !3539, line: 45, size: 192, elements: !3548)
!3548 = !{!3549, !3551, !3552, !3558}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3547, file: !3539, line: 46, baseType: !3550, size: 32)
!3550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !116, line: 95, baseType: !118)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3547, file: !3539, line: 47, baseType: !118, size: 32, offset: 32)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3547, file: !3539, line: 48, baseType: !3553, size: 64, offset: 64)
!3553 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3539, line: 11, baseType: !3554)
!3554 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3539, line: 8, size: 64, elements: !3555)
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3554, file: !3539, line: 9, baseType: !118, size: 32)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3554, file: !3539, line: 10, baseType: !90, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3547, file: !3539, line: 49, baseType: !118, size: 32, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3538, file: !3539, line: 57, baseType: !3560, size: 128)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3538, file: !3539, line: 53, size: 128, elements: !3561)
!3561 = !{!3562, !3563, !3564}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3560, file: !3539, line: 54, baseType: !3208, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3560, file: !3539, line: 55, baseType: !439, size: 32, offset: 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3560, file: !3539, line: 56, baseType: !3553, size: 64, offset: 64)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3538, file: !3539, line: 66, baseType: !3566, size: 256)
!3566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3538, file: !3539, line: 60, size: 256, elements: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3573}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3566, file: !3539, line: 61, baseType: !3208, size: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3566, file: !3539, line: 62, baseType: !439, size: 32, offset: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3566, file: !3539, line: 63, baseType: !118, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3566, file: !3539, line: 64, baseType: !3572, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !116, line: 94, baseType: !1039)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3566, file: !3539, line: 65, baseType: !3572, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3538, file: !3539, line: 105, baseType: !3575, size: 256)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3538, file: !3539, line: 69, size: 256, elements: !3576)
!3576 = !{!3577, !3578}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3575, file: !3539, line: 70, baseType: !90, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !3575, file: !3539, line: 79, baseType: !3579, size: 192, offset: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3575, file: !3539, line: 79, size: 192, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3590, !3595}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3579, file: !3539, line: 81, baseType: !118, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3579, file: !3539, line: 86, baseType: !797, size: 16)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3579, file: !3539, line: 92, baseType: !3584, size: 192)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3579, file: !3539, line: 88, size: 192, elements: !3585)
!3585 = !{!3586, !3588, !3589}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3584, file: !3539, line: 89, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64, elements: !3001)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3584, file: !3539, line: 90, baseType: !90, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3584, file: !3539, line: 91, baseType: !90, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3579, file: !3539, line: 97, baseType: !3591, size: 96)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3579, file: !3539, line: 94, size: 96, elements: !3592)
!3592 = !{!3593, !3594}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3591, file: !3539, line: 95, baseType: !3587, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3591, file: !3539, line: 96, baseType: !100, size: 32, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3579, file: !3539, line: 103, baseType: !3596, size: 128)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3579, file: !3539, line: 99, size: 128, elements: !3597)
!3597 = !{!3598, !3599, !3600}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3596, file: !3539, line: 100, baseType: !94, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3596, file: !3539, line: 101, baseType: !100, size: 32, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3596, file: !3539, line: 102, baseType: !100, size: 32, offset: 96)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3538, file: !3539, line: 111, baseType: !3602, size: 128)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3538, file: !3539, line: 108, size: 128, elements: !3603)
!3603 = !{!3604, !3605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3602, file: !3539, line: 109, baseType: !125, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3602, file: !3539, line: 110, baseType: !118, size: 32, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3538, file: !3539, line: 118, baseType: !3607, size: 128)
!3607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3538, file: !3539, line: 114, size: 128, elements: !3608)
!3608 = !{!3609, !3610, !3611}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3607, file: !3539, line: 115, baseType: !90, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3607, file: !3539, line: 116, baseType: !118, size: 32, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3607, file: !3539, line: 117, baseType: !7, size: 32, offset: 96)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2848, file: !1678, line: 1208, baseType: !3392, size: 448, offset: 17664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2848, file: !1678, line: 1215, baseType: !419, size: 64, offset: 18112)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2848, file: !1678, line: 1217, baseType: !419, size: 64, offset: 18176)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2848, file: !1678, line: 1219, baseType: !419, size: 64, offset: 18240)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2848, file: !1678, line: 1223, baseType: !3617, size: 64, offset: 18304)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3618, line: 99, baseType: !3619)
!3618 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3618, line: 99, size: 64, elements: !3620)
!3620 = !{!3621}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3619, file: !3618, line: 99, baseType: !3078, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2848, file: !1678, line: 1225, baseType: !389, size: 32, offset: 18368)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2848, file: !1678, line: 1226, baseType: !118, size: 32, offset: 18400)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2848, file: !1678, line: 1227, baseType: !118, size: 32, offset: 18432)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2848, file: !1678, line: 1231, baseType: !3626, size: 64, offset: 18496)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1678, line: 1231, flags: DIFlagFwdDecl)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2848, file: !1678, line: 1233, baseType: !347, size: 128, offset: 18560)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2848, file: !1678, line: 1240, baseType: !3630, size: 64, offset: 18688)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1678, line: 62, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2848, file: !1678, line: 1242, baseType: !3633, size: 64, offset: 18752)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1678, line: 1242, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2848, file: !1678, line: 1244, baseType: !347, size: 128, offset: 18816)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2848, file: !1678, line: 1245, baseType: !3637, size: 64, offset: 18944)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1678, line: 51, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2848, file: !1678, line: 1246, baseType: !633, size: 256, offset: 19008)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2848, file: !1678, line: 1247, baseType: !7, size: 32, offset: 19264)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2848, file: !1678, line: 1250, baseType: !3642, size: 64, offset: 19328)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1678, line: 57, flags: DIFlagFwdDecl)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2848, file: !1678, line: 1251, baseType: !633, size: 256, offset: 19392)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2848, file: !1678, line: 1252, baseType: !347, size: 128, offset: 19648)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2848, file: !1678, line: 1259, baseType: !1584, size: 64, offset: 19776)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2848, file: !1678, line: 1260, baseType: !797, size: 16, offset: 19840)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2848, file: !1678, line: 1261, baseType: !797, size: 16, offset: 19856)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2848, file: !1678, line: 1314, baseType: !3650, size: 64, offset: 19904)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3652, line: 62, size: 256, align: 256, elements: !3653)
!3652 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3653 = !{!3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3651, file: !3652, line: 75, baseType: !100, size: 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3651, file: !3652, line: 90, baseType: !100, size: 32, offset: 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3651, file: !3652, line: 112, baseType: !420, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3651, file: !3652, line: 132, baseType: !100, size: 32, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3651, file: !3652, line: 140, baseType: !100, size: 32, offset: 160)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3651, file: !3652, line: 149, baseType: !100, size: 32, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3651, file: !3652, line: 154, baseType: !3661, offset: 224)
!3661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, elements: !715)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2848, file: !1678, line: 1315, baseType: !355, size: 32, offset: 19968)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2848, file: !1678, line: 1316, baseType: !355, size: 32, offset: 20000)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2848, file: !1678, line: 1321, baseType: !94, size: 64, offset: 20032)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2848, file: !1678, line: 1325, baseType: !118, size: 32, offset: 20096)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2848, file: !1678, line: 1326, baseType: !118, size: 32, offset: 20128)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2848, file: !1678, line: 1327, baseType: !118, size: 32, offset: 20160)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2848, file: !1678, line: 1328, baseType: !118, size: 32, offset: 20192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2848, file: !1678, line: 1329, baseType: !575, size: 128, align: 64, offset: 20224)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2848, file: !1678, line: 1332, baseType: !3671, size: 128, offset: 20352)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3672, line: 51, size: 128, elements: !3673)
!3672 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3673 = !{!3674, !3679, !3680}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3671, file: !3672, line: 60, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3676, line: 7, size: 64, elements: !3677)
!3676 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3677 = !{!3678}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3675, file: !3676, line: 12, baseType: !3075, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3671, file: !3672, line: 63, baseType: !486, size: 8, offset: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3671, file: !3672, line: 70, baseType: !486, size: 8, offset: 72)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2848, file: !1678, line: 1335, baseType: !2192, size: 64, offset: 20480)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2848, file: !1678, line: 1337, baseType: !3683, size: 128, offset: 20544)
!3683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3672, line: 39, size: 128, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3683, file: !3672, line: 40, baseType: !1110, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3683, file: !3672, line: 42, baseType: !100, size: 32, offset: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3683, file: !3672, line: 43, baseType: !100, size: 32, offset: 96)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2848, file: !1678, line: 1340, baseType: !3689, size: 64, offset: 20672)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1678, line: 69, flags: DIFlagFwdDecl)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2848, file: !1678, line: 1351, baseType: !118, size: 32, offset: 20736)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2848, file: !1678, line: 1352, baseType: !118, size: 32, offset: 20768)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2848, file: !1678, line: 1354, baseType: !94, size: 64, offset: 20800)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2848, file: !1678, line: 1364, baseType: !419, size: 64, offset: 20864)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2848, file: !1678, line: 1365, baseType: !419, size: 64, offset: 20928)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2848, file: !1678, line: 1412, baseType: !94, size: 64, offset: 20992)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2848, file: !1678, line: 1453, baseType: !3698, size: 64, offset: 21056)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1678, line: 1453, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2848, file: !1678, line: 1457, baseType: !3701, size: 64, offset: 21120)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3703)
!3703 = !{!3704, !3705, !3724, !3727, !3728, !3761, !3771}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3702, file: !57, line: 62, baseType: !56, size: 32)
!3705 = !DIDerivedType(tag: DW_TAG_member, scope: !3702, file: !57, line: 64, baseType: !3706, size: 192, offset: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3702, file: !57, line: 64, size: 192, elements: !3707)
!3707 = !{!3708, !3719}
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !57, line: 65, baseType: !3709, size: 192)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !57, line: 65, size: 192, elements: !3710)
!3710 = !{!3711, !3718}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3709, file: !57, line: 66, baseType: !3712, size: 128)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3713, line: 50, size: 128, elements: !3714)
!3713 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3714 = !{!3715, !3716, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3712, file: !3713, line: 52, baseType: !94, size: 64)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3712, file: !3713, line: 54, baseType: !7, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3712, file: !3713, line: 55, baseType: !7, size: 32, offset: 96)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3709, file: !57, line: 67, baseType: !94, size: 64, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !57, line: 70, baseType: !3720, size: 192)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !57, line: 70, size: 192, elements: !3721)
!3721 = !{!3722, !3723}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3720, file: !57, line: 71, baseType: !575, size: 128, align: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3720, file: !57, line: 72, baseType: !94, size: 64, offset: 128)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3702, file: !57, line: 76, baseType: !3725, size: 64, offset: 256)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3702, file: !57, line: 77, baseType: !94, size: 64, offset: 320)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3702, file: !57, line: 79, baseType: !3729, size: 64, offset: 384)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3713, line: 25, size: 256, elements: !3731)
!3731 = !{!3732, !3738, !3742}
!3732 = !DIDerivedType(tag: DW_TAG_member, scope: !3730, file: !3713, line: 26, baseType: !3733, size: 128)
!3733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3730, file: !3713, line: 26, size: 128, elements: !3734)
!3734 = !{!3735, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3733, file: !3713, line: 27, baseType: !3736, size: 128)
!3736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 128, elements: !3266)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3733, file: !3713, line: 28, baseType: !3736, size: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3730, file: !3713, line: 31, baseType: !3739, size: 64, offset: 128)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3741)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3713, line: 23, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, scope: !3730, file: !3713, line: 33, baseType: !3743, size: 64, offset: 192)
!3743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3730, file: !3713, line: 33, size: 64, elements: !3744)
!3744 = !{!3745, !3751, !3756}
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3743, file: !3713, line: 38, baseType: !3746, size: 64)
!3746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3743, file: !3713, line: 34, size: 64, elements: !3747)
!3747 = !{!3748, !3749, !3750}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3746, file: !3713, line: 35, baseType: !756, size: 32)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3746, file: !3713, line: 36, baseType: !613, size: 8, offset: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3746, file: !3713, line: 37, baseType: !613, size: 8, offset: 40)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3743, file: !3713, line: 42, baseType: !3752, size: 16)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3743, file: !3713, line: 39, size: 16, elements: !3753)
!3753 = !{!3754, !3755}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3752, file: !3713, line: 40, baseType: !613, size: 8)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3752, file: !3713, line: 41, baseType: !613, size: 8, offset: 8)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3743, file: !3713, line: 46, baseType: !3757, size: 16)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3743, file: !3713, line: 43, size: 16, elements: !3758)
!3758 = !{!3759, !3760}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3757, file: !3713, line: 44, baseType: !613, size: 8)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3757, file: !3713, line: 45, baseType: !613, size: 8, offset: 8)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3702, file: !57, line: 81, baseType: !3762, size: 64, offset: 448)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3764)
!3764 = !{!3765, !3766, !3767, !3768, !3769, !3770}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3763, file: !57, line: 86, baseType: !3725, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3763, file: !57, line: 87, baseType: !94, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3763, file: !57, line: 88, baseType: !94, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3763, file: !57, line: 89, baseType: !94, size: 64, offset: 192)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3763, file: !57, line: 90, baseType: !486, size: 8, offset: 256)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3763, file: !57, line: 92, baseType: !3762, size: 64, offset: 320)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3702, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2848, file: !1678, line: 1463, baseType: !3773, offset: 21184)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1678, line: 739, elements: !1399)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2848, file: !1678, line: 1470, baseType: !575, size: 128, align: 64, offset: 21184)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2848, file: !1678, line: 1471, baseType: !678, size: 32, offset: 21312)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2848, file: !1678, line: 1472, baseType: !118, size: 32, offset: 21344)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2848, file: !1678, line: 1474, baseType: !2847, size: 64, offset: 21376)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2848, file: !1678, line: 1475, baseType: !2004, size: 320, offset: 21440)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2848, file: !1678, line: 1478, baseType: !3780, size: 64, offset: 21760)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1678, line: 1478, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2848, file: !1678, line: 1482, baseType: !678, size: 32, offset: 21824)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2848, file: !1678, line: 1489, baseType: !90, size: 64, offset: 21888)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2848, file: !1678, line: 1504, baseType: !90, size: 64, offset: 21952)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2848, file: !1678, line: 1505, baseType: !420, size: 64, offset: 22016)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2848, file: !1678, line: 1506, baseType: !419, size: 64, offset: 22080)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2848, file: !1678, line: 1507, baseType: !420, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2848, file: !1678, line: 1508, baseType: !420, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2848, file: !1678, line: 1509, baseType: !420, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2848, file: !1678, line: 1510, baseType: !575, size: 128, align: 64, offset: 22208)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2848, file: !1678, line: 1511, baseType: !118, size: 32, offset: 22336)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2848, file: !1678, line: 1515, baseType: !3793, size: 64, offset: 22400)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !570, line: 56, size: 64, elements: !3794)
!3794 = !{!3795}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3793, file: !570, line: 57, baseType: !573, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2848, file: !1678, line: 1518, baseType: !3793, size: 64, offset: 22464)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2848, file: !1678, line: 1528, baseType: !575, size: 128, align: 64, offset: 22528)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2848, file: !1678, line: 1552, baseType: !3799, size: 35328, offset: 23040)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3800, line: 430, size: 35328, elements: !3801)
!3800 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3801 = !{!3802, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3831, !3832, !3833, !3834, !3835, !3836, !3839, !3840, !3841, !3842}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3799, file: !3800, line: 432, baseType: !3803, size: 192)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3804, size: 192, elements: !670)
!3804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3805, line: 16, size: 64, elements: !3806)
!3805 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3806 = !{!3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3804, file: !3805, line: 17, baseType: !620, size: 16)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3804, file: !3805, line: 18, baseType: !620, size: 16, offset: 16)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3804, file: !3805, line: 19, baseType: !620, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3804, file: !3805, line: 19, baseType: !620, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3804, file: !3805, line: 19, baseType: !620, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3804, file: !3805, line: 19, baseType: !620, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3804, file: !3805, line: 19, baseType: !620, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3804, file: !3805, line: 20, baseType: !620, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3804, file: !3805, line: 20, baseType: !620, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3804, file: !3805, line: 20, baseType: !620, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3804, file: !3805, line: 20, baseType: !620, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3804, file: !3805, line: 20, baseType: !620, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3804, file: !3805, line: 20, baseType: !620, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3799, file: !3800, line: 436, baseType: !94, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3799, file: !3800, line: 440, baseType: !111, size: 16, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3799, file: !3800, line: 441, baseType: !111, size: 16, offset: 272)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3799, file: !3800, line: 442, baseType: !111, size: 16, offset: 288)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3799, file: !3800, line: 443, baseType: !111, size: 16, offset: 304)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3799, file: !3800, line: 447, baseType: !94, size: 64, offset: 320)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3799, file: !3800, line: 448, baseType: !94, size: 64, offset: 384)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3799, file: !3800, line: 459, baseType: !3828, size: 256, offset: 448)
!3828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3829, size: 256, elements: !696)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3800, line: 428, flags: DIFlagFwdDecl)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3799, file: !3800, line: 461, baseType: !94, size: 64, offset: 704)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3799, file: !3800, line: 463, baseType: !94, size: 64, offset: 768)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3799, file: !3800, line: 465, baseType: !94, size: 64, offset: 832)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3799, file: !3800, line: 466, baseType: !94, size: 64, offset: 896)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3799, file: !3800, line: 467, baseType: !94, size: 64, offset: 960)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3799, file: !3800, line: 473, baseType: !3837, size: 64, offset: 1024)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3800, line: 10, flags: DIFlagFwdDecl)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3799, file: !3800, line: 480, baseType: !94, size: 64, offset: 1088)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3799, file: !3800, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3799, file: !3800, line: 491, baseType: !355, size: 32, offset: 1184)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3799, file: !3800, line: 501, baseType: !3843, size: 33792, offset: 1536)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3844, line: 448, size: 33792, elements: !3845)
!3844 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3845 = !{!3846, !3847, !3848, !4006, !4007, !4013, !4014}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3843, file: !3844, line: 461, baseType: !7, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3843, file: !3844, line: 468, baseType: !94, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3843, file: !3844, line: 476, baseType: !3849, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3844, line: 356, size: 33280, align: 512, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3850, file: !3844, line: 358, baseType: !7, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3850, file: !3844, line: 361, baseType: !7, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3850, file: !3844, line: 364, baseType: !419, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3850, file: !3844, line: 367, baseType: !419, size: 64, offset: 128)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3850, file: !3844, line: 370, baseType: !419, size: 64, offset: 192)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3850, file: !3844, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3850, file: !3844, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3850, file: !3844, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3850, file: !3844, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3850, file: !3844, line: 397, baseType: !3862, size: 32768, offset: 512)
!3862 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3844, line: 348, size: 32768, elements: !3863)
!3863 = !{!3864, !3877, !3912, !3989, !4002}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3862, file: !3844, line: 349, baseType: !3865, size: 896)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3844, line: 12, size: 896, elements: !3866)
!3866 = !{!3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3876}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3865, file: !3844, line: 13, baseType: !355, size: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3865, file: !3844, line: 14, baseType: !355, size: 32, offset: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3865, file: !3844, line: 15, baseType: !355, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3865, file: !3844, line: 16, baseType: !355, size: 32, offset: 96)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3865, file: !3844, line: 17, baseType: !355, size: 32, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3865, file: !3844, line: 18, baseType: !355, size: 32, offset: 160)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3865, file: !3844, line: 19, baseType: !355, size: 32, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3865, file: !3844, line: 22, baseType: !3875, size: 640, offset: 224)
!3875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 640, elements: !159)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3865, file: !3844, line: 25, baseType: !355, size: 32, offset: 864)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3862, file: !3844, line: 350, baseType: !3878, size: 4096, align: 128)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3844, line: 34, size: 4096, align: 128, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884, !3899, !3900, !3901, !3903, !3905, !3907}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3878, file: !3844, line: 35, baseType: !620, size: 16)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3878, file: !3844, line: 36, baseType: !620, size: 16, offset: 16)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3878, file: !3844, line: 37, baseType: !620, size: 16, offset: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3878, file: !3844, line: 38, baseType: !620, size: 16, offset: 48)
!3884 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !3844, line: 39, baseType: !3885, size: 128, offset: 64)
!3885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !3844, line: 39, size: 128, elements: !3886)
!3886 = !{!3887, !3892}
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3885, file: !3844, line: 40, baseType: !3888, size: 128)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3885, file: !3844, line: 40, size: 128, elements: !3889)
!3889 = !{!3890, !3891}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3888, file: !3844, line: 41, baseType: !419, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3888, file: !3844, line: 42, baseType: !419, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !3885, file: !3844, line: 44, baseType: !3893, size: 128)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3885, file: !3844, line: 44, size: 128, elements: !3894)
!3894 = !{!3895, !3896, !3897, !3898}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3893, file: !3844, line: 45, baseType: !355, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3893, file: !3844, line: 46, baseType: !355, size: 32, offset: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3893, file: !3844, line: 47, baseType: !355, size: 32, offset: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3893, file: !3844, line: 48, baseType: !355, size: 32, offset: 96)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3878, file: !3844, line: 51, baseType: !355, size: 32, offset: 192)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3878, file: !3844, line: 52, baseType: !355, size: 32, offset: 224)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3878, file: !3844, line: 55, baseType: !3902, size: 1024, offset: 256)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 1024, elements: !264)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3878, file: !3844, line: 58, baseType: !3904, size: 2048, offset: 1280)
!3904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 2048, elements: !1010)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3878, file: !3844, line: 60, baseType: !3906, size: 384, offset: 3328)
!3906 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 384, elements: !282)
!3907 = !DIDerivedType(tag: DW_TAG_member, scope: !3878, file: !3844, line: 62, baseType: !3908, size: 384, offset: 3712)
!3908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3878, file: !3844, line: 62, size: 384, elements: !3909)
!3909 = !{!3910, !3911}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3908, file: !3844, line: 63, baseType: !3906, size: 384)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3908, file: !3844, line: 64, baseType: !3906, size: 384)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3862, file: !3844, line: 351, baseType: !3913, size: 1088)
!3913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3844, line: 79, size: 1088, elements: !3914)
!3914 = !{!3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3988}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3913, file: !3844, line: 80, baseType: !355, size: 32)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3913, file: !3844, line: 81, baseType: !355, size: 32, offset: 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3913, file: !3844, line: 82, baseType: !355, size: 32, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3913, file: !3844, line: 83, baseType: !355, size: 32, offset: 96)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3913, file: !3844, line: 84, baseType: !355, size: 32, offset: 128)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3913, file: !3844, line: 85, baseType: !355, size: 32, offset: 160)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3913, file: !3844, line: 86, baseType: !355, size: 32, offset: 192)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3913, file: !3844, line: 88, baseType: !3875, size: 640, offset: 224)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3913, file: !3844, line: 89, baseType: !613, size: 8, offset: 864)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3913, file: !3844, line: 90, baseType: !613, size: 8, offset: 872)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3913, file: !3844, line: 91, baseType: !613, size: 8, offset: 880)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3913, file: !3844, line: 92, baseType: !613, size: 8, offset: 888)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3913, file: !3844, line: 93, baseType: !613, size: 8, offset: 896)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3913, file: !3844, line: 94, baseType: !613, size: 8, offset: 904)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3913, file: !3844, line: 95, baseType: !3930, size: 64, offset: 960)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3932, line: 11, size: 128, elements: !3933)
!3932 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3931, file: !3932, line: 12, baseType: !125, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3931, file: !3932, line: 13, baseType: !3936, size: 64, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3938, line: 103, size: 1344, elements: !3939)
!3938 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3968, !3969, !3970}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3937, file: !3938, line: 109, baseType: !94, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3937, file: !3938, line: 110, baseType: !94, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3937, file: !3938, line: 111, baseType: !94, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3937, file: !3938, line: 112, baseType: !94, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3937, file: !3938, line: 113, baseType: !94, size: 64, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3937, file: !3938, line: 114, baseType: !94, size: 64, offset: 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3937, file: !3938, line: 117, baseType: !94, size: 64, offset: 384)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3937, file: !3938, line: 118, baseType: !94, size: 64, offset: 448)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3937, file: !3938, line: 119, baseType: !94, size: 64, offset: 512)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3937, file: !3938, line: 120, baseType: !94, size: 64, offset: 576)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3937, file: !3938, line: 121, baseType: !94, size: 64, offset: 640)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3937, file: !3938, line: 122, baseType: !94, size: 64, offset: 704)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3937, file: !3938, line: 123, baseType: !94, size: 64, offset: 768)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3937, file: !3938, line: 124, baseType: !94, size: 64, offset: 832)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3937, file: !3938, line: 125, baseType: !94, size: 64, offset: 896)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3937, file: !3938, line: 139, baseType: !94, size: 64, offset: 960)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3937, file: !3938, line: 142, baseType: !94, size: 64, offset: 1024)
!3957 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !3938, line: 144, baseType: !3958, size: 64, offset: 1088)
!3958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !3938, line: 144, size: 64, elements: !3959)
!3959 = !{!3960, !3961, !3962}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3958, file: !3938, line: 146, baseType: !620, size: 16)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3958, file: !3938, line: 148, baseType: !419, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3958, file: !3938, line: 150, baseType: !3963, size: 64)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3938, line: 59, size: 64, elements: !3964)
!3964 = !{!3965, !3966, !3967}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3963, file: !3938, line: 61, baseType: !419, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3963, file: !3938, line: 63, baseType: !419, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3963, file: !3938, line: 65, baseType: !419, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3937, file: !3938, line: 153, baseType: !94, size: 64, offset: 1152)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3937, file: !3938, line: 154, baseType: !94, size: 64, offset: 1216)
!3970 = !DIDerivedType(tag: DW_TAG_member, scope: !3937, file: !3938, line: 156, baseType: !3971, size: 64, offset: 1280)
!3971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3937, file: !3938, line: 156, size: 64, elements: !3972)
!3972 = !{!3973, !3974, !3975}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3971, file: !3938, line: 158, baseType: !620, size: 16)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3971, file: !3938, line: 160, baseType: !419, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3971, file: !3938, line: 162, baseType: !3976, size: 64)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3938, line: 69, size: 64, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3976, file: !3938, line: 71, baseType: !419, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3976, file: !3938, line: 73, baseType: !419, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3976, file: !3938, line: 75, baseType: !419, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3976, file: !3938, line: 77, baseType: !419, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3976, file: !3938, line: 80, baseType: !419, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3976, file: !3938, line: 83, baseType: !419, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3976, file: !3938, line: 86, baseType: !419, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3976, file: !3938, line: 88, baseType: !419, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3976, file: !3938, line: 93, baseType: !419, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3976, file: !3938, line: 100, baseType: !419, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3913, file: !3844, line: 96, baseType: !355, size: 32, offset: 1024)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3862, file: !3844, line: 352, baseType: !3990, size: 4608, align: 512)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3844, line: 333, size: 4608, align: 512, elements: !3991)
!3991 = !{!3992, !3993, !4000}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3990, file: !3844, line: 334, baseType: !3878, size: 4096, align: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3990, file: !3844, line: 335, baseType: !3994, size: 512, offset: 4096)
!3994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3844, line: 312, size: 512, elements: !3995)
!3995 = !{!3996, !3997, !3998}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3994, file: !3844, line: 313, baseType: !419, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3994, file: !3844, line: 314, baseType: !419, size: 64, offset: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3994, file: !3844, line: 315, baseType: !3999, size: 384, offset: 128)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !226)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3990, file: !3844, line: 336, baseType: !4001, offset: 4608)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, elements: !715)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3862, file: !3844, line: 353, baseType: !4003, size: 32768)
!4003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, size: 32768, elements: !4004)
!4004 = !{!4005}
!4005 = !DISubrange(count: 4096)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3843, file: !3844, line: 484, baseType: !3849, size: 64, offset: 192)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3843, file: !3844, line: 491, baseType: !4008, size: 128, offset: 256)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3844, line: 404, size: 128, elements: !4009)
!4009 = !{!4010, !4011, !4012}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4008, file: !3844, line: 424, baseType: !419, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4008, file: !3844, line: 432, baseType: !7, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4008, file: !3844, line: 440, baseType: !7, size: 32, offset: 96)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3843, file: !3844, line: 498, baseType: !4008, size: 128, offset: 384)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3843, file: !3844, line: 508, baseType: !3850, size: 33280, align: 512, offset: 512)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2830, file: !2831, line: 16, baseType: !700, size: 192, offset: 512)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2830, file: !2831, line: 17, baseType: !605, size: 32, offset: 704)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !344, file: !35, line: 1240, baseType: !90, size: 64, offset: 6912)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !344, file: !35, line: 1243, baseType: !355, size: 32, offset: 6976)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !344, file: !35, line: 1245, baseType: !556, size: 64, offset: 7040)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !344, file: !35, line: 1246, baseType: !556, size: 64, offset: 7104)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !344, file: !35, line: 1248, baseType: !100, size: 32, offset: 7168)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !344, file: !35, line: 1249, baseType: !2384, size: 64, offset: 7232)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !344, file: !35, line: 1252, baseType: !263, size: 256, offset: 7296)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !344, file: !35, line: 1253, baseType: !4025, size: 128, offset: 7552)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4026, line: 21, baseType: !4027)
!4026 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4026, line: 19, size: 128, elements: !4028)
!4028 = !{!4029}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4027, file: !4026, line: 20, baseType: !4030, size: 128)
!4030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 128, elements: !3266)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !344, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !344, file: !35, line: 1261, baseType: !633, size: 256, offset: 7744)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !344, file: !35, line: 1267, baseType: !366, size: 64, offset: 8000)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !344, file: !35, line: 1269, baseType: !2403, size: 64, offset: 8064)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !344, file: !35, line: 1271, baseType: !4036, size: 448, offset: 8128)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2613, line: 63, size: 448, elements: !4037)
!4037 = !{!4038, !4043, !4044, !4045, !4046, !4047, !4048}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4036, file: !2613, line: 64, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!94, !4042, !2611}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4036, file: !2613, line: 66, baseType: !4039, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4036, file: !2613, line: 69, baseType: !125, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4036, file: !2613, line: 70, baseType: !118, size: 32, offset: 192)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4036, file: !2613, line: 71, baseType: !7, size: 32, offset: 224)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4036, file: !2613, line: 74, baseType: !347, size: 128, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4036, file: !2613, line: 85, baseType: !4049, size: 64, offset: 384)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !344, file: !35, line: 1274, baseType: !625, size: 64, offset: 8576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !344, file: !35, line: 1280, baseType: !625, size: 64, offset: 8640)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !344, file: !35, line: 1283, baseType: !118, size: 32, offset: 8704)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !344, file: !35, line: 1286, baseType: !1351, size: 32, offset: 8736)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !344, file: !35, line: 1289, baseType: !2066, size: 64, offset: 8768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !344, file: !35, line: 1290, baseType: !687, size: 64, offset: 8832)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !344, file: !35, line: 1297, baseType: !906, size: 64, offset: 8896)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !344, file: !35, line: 1304, baseType: !4058, size: 64, offset: 8960)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4059, line: 49, size: 64, elements: !4060)
!4059 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4060 = !{!4061}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4058, file: !4059, line: 50, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4059, line: 41, size: 512, align: 512, elements: !4064)
!4064 = !{!4065, !4066, !4071}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4063, file: !4059, line: 43, baseType: !585, size: 32)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4063, file: !4059, line: 45, baseType: !4067, size: 192, offset: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4059, line: 29, size: 192, elements: !4068)
!4068 = !{!4069, !4070}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4067, file: !4059, line: 30, baseType: !347, size: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4067, file: !4059, line: 32, baseType: !125, size: 64, offset: 128)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4063, file: !4059, line: 46, baseType: !125, size: 64, offset: 256)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !344, file: !35, line: 1305, baseType: !4058, size: 64, offset: 9024)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !344, file: !35, line: 1306, baseType: !575, size: 128, align: 64, offset: 9088)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !344, file: !35, line: 1307, baseType: !1533, size: 256, offset: 9216)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !344, file: !35, line: 1309, baseType: !633, size: 256, offset: 9472)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !344, file: !35, line: 1314, baseType: !118, size: 32, offset: 9728)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !344, file: !35, line: 1317, baseType: !585, size: 32, align: 512, offset: 10240)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !344, file: !35, line: 1318, baseType: !347, size: 128, offset: 10304)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !344, file: !35, line: 1320, baseType: !585, size: 32, offset: 10432)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !344, file: !35, line: 1321, baseType: !347, size: 128, offset: 10496)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_type", scope: !339, file: !340, line: 31, baseType: !118, size: 32, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_blocks", scope: !339, file: !340, line: 32, baseType: !7, size: 32, offset: 96)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_free_blk", scope: !339, file: !340, line: 33, baseType: !7, size: 32, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_free_entry", scope: !339, file: !340, line: 34, baseType: !7, size: 32, offset: 160)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_blocksize_bits", scope: !339, file: !340, line: 35, baseType: !7, size: 32, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_entry_size", scope: !339, file: !340, line: 36, baseType: !7, size: 32, offset: 224)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_usable_bs", scope: !339, file: !340, line: 37, baseType: !7, size: 32, offset: 256)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_qtree_depth", scope: !339, file: !340, line: 38, baseType: !7, size: 32, offset: 288)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_ops", scope: !339, file: !340, line: 39, baseType: !4090, size: 64, offset: 320)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4092)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qtree_fmt_operations", file: !340, line: 22, size: 192, elements: !4093)
!4093 = !{!4094, !4098, !4102}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mem2disk_dqblk", scope: !4092, file: !340, line: 23, baseType: !4095, size: 64)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{null, !90, !2565}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "disk2mem_dqblk", scope: !4092, file: !340, line: 24, baseType: !4099, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DISubroutineType(types: !4101)
!4101 = !{null, !2565, !90}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "is_id", scope: !4092, file: !340, line: 25, baseType: !4103, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!118, !90, !2565}
!4106 = !{!4107, !4108, !4109}
!4107 = !DILocalVariable(name: "info", arg: 1, scope: !335, file: !3, line: 247, type: !338)
!4108 = !DILocalVariable(name: "disk", arg: 2, scope: !335, file: !3, line: 247, type: !492)
!4109 = !DILocalVariable(name: "i", scope: !335, file: !3, line: 249, type: !118)
!4110 = !DILocation(line: 247, column: 49, scope: !335)
!4111 = !DILocation(line: 247, column: 61, scope: !335)
!4112 = !DILocation(line: 249, column: 2, scope: !335)
!4113 = !DILocation(line: 249, column: 6, scope: !335)
!4114 = !DILocation(line: 251, column: 9, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !335, file: !3, line: 251, column: 2)
!4116 = !DILocation(line: 251, column: 7, scope: !4115)
!4117 = !DILocation(line: 251, column: 14, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 251, column: 2)
!4119 = !DILocation(line: 251, column: 18, scope: !4118)
!4120 = !DILocation(line: 251, column: 24, scope: !4118)
!4121 = !DILocation(line: 251, column: 16, scope: !4118)
!4122 = !DILocation(line: 251, column: 2, scope: !4115)
!4123 = !DILocation(line: 252, column: 7, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 252, column: 7)
!4125 = !DILocation(line: 252, column: 12, scope: !4124)
!4126 = !DILocation(line: 252, column: 7, scope: !4118)
!4127 = !DILocation(line: 253, column: 4, scope: !4124)
!4128 = !DILocation(line: 252, column: 13, scope: !4124)
!4129 = !DILocation(line: 251, column: 41, scope: !4118)
!4130 = !DILocation(line: 251, column: 2, scope: !4118)
!4131 = distinct !{!4131, !4122, !4132, !4133, !4134}
!4132 = !DILocation(line: 253, column: 11, scope: !4115)
!4133 = !{!"llvm.loop.mustprogress"}
!4134 = !{!"llvm.loop.unroll.disable"}
!4135 = !DILocation(line: 254, column: 2, scope: !335)
!4136 = !DILocation(line: 255, column: 1, scope: !335)
!4137 = distinct !DISubprogram(name: "qtree_write_dquot", scope: !3, file: !3, line: 439, type: !4138, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!118, !338, !2565}
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4146}
!4141 = !DILocalVariable(name: "info", arg: 1, scope: !4137, file: !3, line: 439, type: !338)
!4142 = !DILocalVariable(name: "dquot", arg: 2, scope: !4137, file: !3, line: 439, type: !2565)
!4143 = !DILocalVariable(name: "type", scope: !4137, file: !3, line: 441, type: !118)
!4144 = !DILocalVariable(name: "sb", scope: !4137, file: !3, line: 442, type: !343)
!4145 = !DILocalVariable(name: "ret", scope: !4137, file: !3, line: 443, type: !1037)
!4146 = !DILocalVariable(name: "ddquot", scope: !4137, file: !3, line: 444, type: !492)
!4147 = !DILocation(line: 439, column: 48, scope: !4137)
!4148 = !DILocation(line: 439, column: 68, scope: !4137)
!4149 = !DILocation(line: 441, column: 2, scope: !4137)
!4150 = !DILocation(line: 441, column: 6, scope: !4137)
!4151 = !DILocation(line: 441, column: 13, scope: !4137)
!4152 = !DILocation(line: 441, column: 20, scope: !4137)
!4153 = !DILocation(line: 441, column: 26, scope: !4137)
!4154 = !DILocation(line: 442, column: 2, scope: !4137)
!4155 = !DILocation(line: 442, column: 22, scope: !4137)
!4156 = !DILocation(line: 442, column: 27, scope: !4137)
!4157 = !DILocation(line: 442, column: 34, scope: !4137)
!4158 = !DILocation(line: 443, column: 2, scope: !4137)
!4159 = !DILocation(line: 443, column: 10, scope: !4137)
!4160 = !DILocation(line: 444, column: 2, scope: !4137)
!4161 = !DILocation(line: 444, column: 8, scope: !4137)
!4162 = !DILocation(line: 444, column: 25, scope: !4137)
!4163 = !DILocation(line: 444, column: 31, scope: !4137)
!4164 = !DILocation(line: 444, column: 17, scope: !4137)
!4165 = !DILocation(line: 446, column: 7, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 446, column: 6)
!4167 = !DILocation(line: 446, column: 6, scope: !4137)
!4168 = !DILocation(line: 447, column: 3, scope: !4166)
!4169 = !DILocation(line: 450, column: 7, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 450, column: 6)
!4171 = !DILocation(line: 450, column: 14, scope: !4170)
!4172 = !DILocation(line: 450, column: 6, scope: !4137)
!4173 = !DILocation(line: 451, column: 24, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4170, file: !3, line: 450, column: 22)
!4175 = !DILocation(line: 451, column: 30, scope: !4174)
!4176 = !DILocation(line: 451, column: 9, scope: !4174)
!4177 = !DILocation(line: 451, column: 7, scope: !4174)
!4178 = !DILocation(line: 452, column: 7, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !4174, file: !3, line: 452, column: 7)
!4180 = !DILocation(line: 452, column: 11, scope: !4179)
!4181 = !DILocation(line: 452, column: 7, scope: !4174)
!4182 = !DILocation(line: 453, column: 4, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4179, file: !3, line: 452, column: 16)
!4184 = !DILocation(line: 455, column: 10, scope: !4183)
!4185 = !DILocation(line: 455, column: 4, scope: !4183)
!4186 = !DILocation(line: 456, column: 11, scope: !4183)
!4187 = !DILocation(line: 456, column: 4, scope: !4183)
!4188 = !DILocation(line: 458, column: 2, scope: !4174)
!4189 = !DILocation(line: 459, column: 13, scope: !4137)
!4190 = !DILocation(line: 459, column: 20, scope: !4137)
!4191 = !DILocation(line: 459, column: 2, scope: !4137)
!4192 = !DILocation(line: 460, column: 2, scope: !4137)
!4193 = !DILocation(line: 460, column: 8, scope: !4137)
!4194 = !DILocation(line: 460, column: 17, scope: !4137)
!4195 = !DILocation(line: 460, column: 32, scope: !4137)
!4196 = !DILocation(line: 460, column: 40, scope: !4137)
!4197 = !DILocation(line: 461, column: 15, scope: !4137)
!4198 = !DILocation(line: 461, column: 22, scope: !4137)
!4199 = !DILocation(line: 461, column: 2, scope: !4137)
!4200 = !DILocation(line: 462, column: 8, scope: !4137)
!4201 = !DILocation(line: 462, column: 12, scope: !4137)
!4202 = !DILocation(line: 462, column: 18, scope: !4137)
!4203 = !DILocation(line: 462, column: 30, scope: !4137)
!4204 = !DILocation(line: 462, column: 34, scope: !4137)
!4205 = !DILocation(line: 462, column: 40, scope: !4137)
!4206 = !DILocation(line: 462, column: 48, scope: !4137)
!4207 = !DILocation(line: 462, column: 54, scope: !4137)
!4208 = !DILocation(line: 463, column: 9, scope: !4137)
!4209 = !DILocation(line: 463, column: 16, scope: !4137)
!4210 = !DILocation(line: 462, column: 6, scope: !4137)
!4211 = !DILocation(line: 464, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 464, column: 6)
!4213 = !DILocation(line: 464, column: 13, scope: !4212)
!4214 = !DILocation(line: 464, column: 19, scope: !4212)
!4215 = !DILocation(line: 464, column: 10, scope: !4212)
!4216 = !DILocation(line: 464, column: 6, scope: !4137)
!4217 = !DILocation(line: 465, column: 3, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 464, column: 35)
!4219 = !DILocation(line: 466, column: 7, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 466, column: 7)
!4221 = !DILocation(line: 466, column: 11, scope: !4220)
!4222 = !DILocation(line: 466, column: 7, scope: !4218)
!4223 = !DILocation(line: 467, column: 8, scope: !4220)
!4224 = !DILocation(line: 467, column: 4, scope: !4220)
!4225 = !DILocation(line: 468, column: 2, scope: !4218)
!4226 = !DILocation(line: 469, column: 7, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4212, file: !3, line: 468, column: 9)
!4228 = !DILocation(line: 471, column: 2, scope: !4137)
!4229 = !DILocation(line: 472, column: 8, scope: !4137)
!4230 = !DILocation(line: 472, column: 2, scope: !4137)
!4231 = !DILocation(line: 474, column: 9, scope: !4137)
!4232 = !DILocation(line: 474, column: 2, scope: !4137)
!4233 = !DILocation(line: 475, column: 1, scope: !4137)
!4234 = distinct !DISubprogram(name: "kmalloc", scope: !80, file: !80, line: 591, type: !4235, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4237)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{!90, !1049, !91}
!4237 = !{!4238, !4239, !4240}
!4238 = !DILocalVariable(name: "size", arg: 1, scope: !4234, file: !80, line: 591, type: !1049)
!4239 = !DILocalVariable(name: "flags", arg: 2, scope: !4234, file: !80, line: 591, type: !91)
!4240 = !DILocalVariable(name: "index", scope: !4241, file: !80, line: 594, type: !7)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !80, line: 593, column: 42)
!4242 = distinct !DILexicalBlock(scope: !4234, file: !80, line: 593, column: 6)
!4243 = !DILocation(line: 591, column: 61, scope: !4234)
!4244 = !DILocation(line: 591, column: 73, scope: !4234)
!4245 = !DILocation(line: 593, column: 27, scope: !4242)
!4246 = !DILocation(line: 593, column: 6, scope: !4242)
!4247 = !DILocation(line: 593, column: 33, scope: !4242)
!4248 = !DILocation(line: 593, column: 36, scope: !4242)
!4249 = !DILocation(line: 593, column: 6, scope: !4234)
!4250 = !DILocation(line: 594, column: 3, scope: !4241)
!4251 = !DILocation(line: 594, column: 16, scope: !4241)
!4252 = !DILocation(line: 596, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4241, file: !80, line: 596, column: 7)
!4254 = !DILocation(line: 596, column: 12, scope: !4253)
!4255 = !DILocation(line: 596, column: 7, scope: !4241)
!4256 = !DILocation(line: 597, column: 25, scope: !4253)
!4257 = !DILocation(line: 597, column: 31, scope: !4253)
!4258 = !DILocation(line: 597, column: 11, scope: !4253)
!4259 = !DILocation(line: 597, column: 4, scope: !4253)
!4260 = !DILocation(line: 599, column: 11, scope: !4241)
!4261 = !DILocation(line: 599, column: 9, scope: !4241)
!4262 = !DILocation(line: 601, column: 33, scope: !4241)
!4263 = !DILocation(line: 601, column: 40, scope: !4241)
!4264 = !DILocation(line: 601, column: 20, scope: !4241)
!4265 = !DILocation(line: 601, column: 5, scope: !4241)
!4266 = !DILocation(line: 601, column: 51, scope: !4241)
!4267 = !DILocation(line: 602, column: 5, scope: !4241)
!4268 = !DILocation(line: 602, column: 12, scope: !4241)
!4269 = !DILocation(line: 600, column: 10, scope: !4241)
!4270 = !DILocation(line: 600, column: 3, scope: !4241)
!4271 = !DILocation(line: 603, column: 2, scope: !4242)
!4272 = !DILocation(line: 604, column: 19, scope: !4234)
!4273 = !DILocation(line: 604, column: 25, scope: !4234)
!4274 = !DILocation(line: 604, column: 9, scope: !4234)
!4275 = !DILocation(line: 604, column: 2, scope: !4234)
!4276 = !DILocation(line: 605, column: 1, scope: !4234)
!4277 = distinct !DISubprogram(name: "dq_insert_tree", scope: !3, file: !3, line: 417, type: !4138, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4278)
!4278 = !{!4279, !4280, !4281}
!4279 = !DILocalVariable(name: "info", arg: 1, scope: !4277, file: !3, line: 417, type: !338)
!4280 = !DILocalVariable(name: "dquot", arg: 2, scope: !4277, file: !3, line: 418, type: !2565)
!4281 = !DILocalVariable(name: "blks", scope: !4277, file: !3, line: 420, type: !4282)
!4282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 192, elements: !226)
!4283 = !DILocation(line: 417, column: 59, scope: !4277)
!4284 = !DILocation(line: 418, column: 20, scope: !4277)
!4285 = !DILocation(line: 420, column: 2, scope: !4277)
!4286 = !DILocation(line: 420, column: 7, scope: !4277)
!4287 = !DILocation(line: 423, column: 6, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 423, column: 6)
!4289 = !DILocation(line: 423, column: 12, scope: !4288)
!4290 = !DILocation(line: 423, column: 23, scope: !4288)
!4291 = !DILocation(line: 423, column: 6, scope: !4277)
!4292 = !DILocation(line: 424, column: 3, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 423, column: 38)
!4294 = !DILocation(line: 425, column: 3, scope: !4293)
!4295 = !DILocation(line: 428, column: 6, scope: !4296)
!4296 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 428, column: 6)
!4297 = !DILocation(line: 428, column: 12, scope: !4296)
!4298 = !DILocation(line: 428, column: 28, scope: !4296)
!4299 = !DILocation(line: 428, column: 6, scope: !4277)
!4300 = !DILocation(line: 429, column: 3, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 428, column: 48)
!4302 = !DILocation(line: 430, column: 3, scope: !4301)
!4303 = !DILocation(line: 432, column: 24, scope: !4277)
!4304 = !DILocation(line: 432, column: 30, scope: !4277)
!4305 = !DILocation(line: 432, column: 37, scope: !4277)
!4306 = !DILocation(line: 432, column: 9, scope: !4277)
!4307 = !DILocation(line: 432, column: 2, scope: !4277)
!4308 = !DILocation(line: 433, column: 1, scope: !4277)
!4309 = !DISubprogram(name: "__quota_error", scope: !4310, file: !4310, line: 37, type: !4311, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4310 = !DIFile(filename: "./include/linux/quotaops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6dc28cea268ecb45653da7e53975c60c")
!4311 = !DISubroutineType(types: !4312)
!4312 = !{null, !343, !366, !366, null}
!4313 = !DISubprogram(name: "kfree", scope: !80, file: !80, line: 227, type: !4314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !1494}
!4316 = distinct !DISubprogram(name: "spin_lock", scope: !4317, file: !4317, line: 349, type: !4318, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4321)
!4317 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!4318 = !DISubroutineType(types: !4319)
!4319 = !{null, !4320}
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!4321 = !{!4322}
!4322 = !DILocalVariable(name: "lock", arg: 1, scope: !4316, file: !4317, line: 349, type: !4320)
!4323 = !DILocation(line: 349, column: 51, scope: !4316)
!4324 = !DILocation(line: 351, column: 2, scope: !4316)
!4325 = !DILocation(line: 352, column: 1, scope: !4316)
!4326 = distinct !DISubprogram(name: "spin_unlock", scope: !4317, file: !4317, line: 389, type: !4318, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4327)
!4327 = !{!4328}
!4328 = !DILocalVariable(name: "lock", arg: 1, scope: !4326, file: !4317, line: 389, type: !4320)
!4329 = !DILocation(line: 389, column: 53, scope: !4326)
!4330 = !DILocation(line: 391, column: 2, scope: !4326)
!4331 = !DILocation(line: 392, column: 1, scope: !4326)
!4332 = distinct !DISubprogram(name: "dqstats_inc", scope: !40, file: !40, line: 272, type: !4333, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4335)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !7}
!4335 = !{!4336}
!4336 = !DILocalVariable(name: "type", arg: 1, scope: !4332, file: !40, line: 272, type: !7)
!4337 = !DILocation(line: 272, column: 45, scope: !4332)
!4338 = !DILocation(line: 274, column: 38, scope: !4332)
!4339 = !DILocation(line: 274, column: 22, scope: !4332)
!4340 = !DILocation(line: 274, column: 2, scope: !4332)
!4341 = !DILocation(line: 275, column: 1, scope: !4332)
!4342 = distinct !DISubprogram(name: "qtree_delete_dquot", scope: !3, file: !3, line: 607, type: !4138, scopeLine: 608, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4343)
!4343 = !{!4344, !4345, !4346}
!4344 = !DILocalVariable(name: "info", arg: 1, scope: !4342, file: !3, line: 607, type: !338)
!4345 = !DILocalVariable(name: "dquot", arg: 2, scope: !4342, file: !3, line: 607, type: !2565)
!4346 = !DILocalVariable(name: "blks", scope: !4342, file: !3, line: 609, type: !4282)
!4347 = !DILocation(line: 607, column: 49, scope: !4342)
!4348 = !DILocation(line: 607, column: 69, scope: !4342)
!4349 = !DILocation(line: 609, column: 2, scope: !4342)
!4350 = !DILocation(line: 609, column: 7, scope: !4342)
!4351 = !DILocation(line: 611, column: 7, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 611, column: 6)
!4353 = !DILocation(line: 611, column: 14, scope: !4352)
!4354 = !DILocation(line: 611, column: 6, scope: !4342)
!4355 = !DILocation(line: 612, column: 3, scope: !4352)
!4356 = !DILocation(line: 613, column: 6, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4342, file: !3, line: 613, column: 6)
!4358 = !DILocation(line: 613, column: 12, scope: !4357)
!4359 = !DILocation(line: 613, column: 28, scope: !4357)
!4360 = !DILocation(line: 613, column: 6, scope: !4342)
!4361 = !DILocation(line: 614, column: 3, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 613, column: 48)
!4363 = !DILocation(line: 615, column: 3, scope: !4362)
!4364 = !DILocation(line: 617, column: 21, scope: !4342)
!4365 = !DILocation(line: 617, column: 27, scope: !4342)
!4366 = !DILocation(line: 617, column: 34, scope: !4342)
!4367 = !DILocation(line: 617, column: 9, scope: !4342)
!4368 = !DILocation(line: 617, column: 2, scope: !4342)
!4369 = !DILocation(line: 618, column: 1, scope: !4342)
!4370 = distinct !DISubprogram(name: "remove_tree", scope: !3, file: !3, line: 544, type: !4371, scopeLine: 546, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4374)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!118, !338, !2565, !4373, !118}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!4374 = !{!4375, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4383, !4384}
!4375 = !DILocalVariable(name: "info", arg: 1, scope: !4370, file: !3, line: 544, type: !338)
!4376 = !DILocalVariable(name: "dquot", arg: 2, scope: !4370, file: !3, line: 544, type: !2565)
!4377 = !DILocalVariable(name: "blks", arg: 3, scope: !4370, file: !3, line: 545, type: !4373)
!4378 = !DILocalVariable(name: "depth", arg: 4, scope: !4370, file: !3, line: 545, type: !118)
!4379 = !DILocalVariable(name: "buf", scope: !4370, file: !3, line: 547, type: !492)
!4380 = !DILocalVariable(name: "ret", scope: !4370, file: !3, line: 548, type: !118)
!4381 = !DILocalVariable(name: "newblk", scope: !4370, file: !3, line: 549, type: !119)
!4382 = !DILocalVariable(name: "ref", scope: !4370, file: !3, line: 550, type: !97)
!4383 = !DILocalVariable(name: "i", scope: !4370, file: !3, line: 551, type: !118)
!4384 = !DILabel(scope: !4370, name: "out_buf", file: !3, line: 601)
!4385 = !DILocation(line: 544, column: 49, scope: !4370)
!4386 = !DILocation(line: 544, column: 69, scope: !4370)
!4387 = !DILocation(line: 545, column: 16, scope: !4370)
!4388 = !DILocation(line: 545, column: 26, scope: !4370)
!4389 = !DILocation(line: 547, column: 2, scope: !4370)
!4390 = !DILocation(line: 547, column: 8, scope: !4370)
!4391 = !DILocation(line: 547, column: 22, scope: !4370)
!4392 = !DILocation(line: 547, column: 28, scope: !4370)
!4393 = !DILocation(line: 547, column: 14, scope: !4370)
!4394 = !DILocation(line: 548, column: 2, scope: !4370)
!4395 = !DILocation(line: 548, column: 6, scope: !4370)
!4396 = !DILocation(line: 549, column: 2, scope: !4370)
!4397 = !DILocation(line: 549, column: 7, scope: !4370)
!4398 = !DILocation(line: 550, column: 2, scope: !4370)
!4399 = !DILocation(line: 550, column: 10, scope: !4370)
!4400 = !DILocation(line: 550, column: 26, scope: !4370)
!4401 = !DILocation(line: 551, column: 2, scope: !4370)
!4402 = !DILocation(line: 551, column: 6, scope: !4370)
!4403 = !DILocation(line: 553, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 553, column: 6)
!4405 = !DILocation(line: 553, column: 6, scope: !4370)
!4406 = !DILocation(line: 554, column: 3, scope: !4404)
!4407 = !DILocation(line: 555, column: 17, scope: !4370)
!4408 = !DILocation(line: 555, column: 23, scope: !4370)
!4409 = !DILocation(line: 555, column: 28, scope: !4370)
!4410 = !DILocation(line: 555, column: 36, scope: !4370)
!4411 = !DILocation(line: 555, column: 8, scope: !4370)
!4412 = !DILocation(line: 555, column: 6, scope: !4370)
!4413 = !DILocation(line: 556, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 556, column: 6)
!4415 = !DILocation(line: 556, column: 10, scope: !4414)
!4416 = !DILocation(line: 556, column: 6, scope: !4370)
!4417 = !DILocation(line: 557, column: 3, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4414, file: !3, line: 556, column: 15)
!4419 = !DILocation(line: 559, column: 3, scope: !4418)
!4420 = !DILocation(line: 561, column: 11, scope: !4370)
!4421 = !DILocation(line: 561, column: 9, scope: !4370)
!4422 = !DILocation(line: 562, column: 23, scope: !4370)
!4423 = !DILocation(line: 562, column: 30, scope: !4370)
!4424 = !DILocation(line: 562, column: 46, scope: !4370)
!4425 = !DILocation(line: 563, column: 9, scope: !4370)
!4426 = !DILocation(line: 563, column: 15, scope: !4370)
!4427 = !DILocation(line: 563, column: 26, scope: !4370)
!4428 = !DILocation(line: 562, column: 8, scope: !4370)
!4429 = !DILocation(line: 562, column: 6, scope: !4370)
!4430 = !DILocation(line: 564, column: 6, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 564, column: 6)
!4432 = !DILocation(line: 564, column: 6, scope: !4370)
!4433 = !DILocation(line: 565, column: 3, scope: !4431)
!4434 = !DILocation(line: 567, column: 9, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 567, column: 2)
!4436 = !DILocation(line: 567, column: 7, scope: !4435)
!4437 = !DILocation(line: 567, column: 14, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4435, file: !3, line: 567, column: 2)
!4439 = !DILocation(line: 567, column: 19, scope: !4438)
!4440 = !DILocation(line: 567, column: 16, scope: !4438)
!4441 = !DILocation(line: 567, column: 2, scope: !4435)
!4442 = !DILocation(line: 568, column: 7, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 568, column: 7)
!4444 = !DILocation(line: 568, column: 17, scope: !4443)
!4445 = !DILocation(line: 568, column: 22, scope: !4443)
!4446 = !DILocation(line: 568, column: 14, scope: !4443)
!4447 = !DILocation(line: 568, column: 7, scope: !4438)
!4448 = !DILocation(line: 569, column: 4, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 568, column: 26)
!4450 = !DILocation(line: 573, column: 8, scope: !4449)
!4451 = !DILocation(line: 574, column: 4, scope: !4449)
!4452 = !DILocation(line: 568, column: 23, scope: !4443)
!4453 = !DILocation(line: 567, column: 27, scope: !4438)
!4454 = !DILocation(line: 567, column: 2, scope: !4438)
!4455 = distinct !{!4455, !4441, !4456, !4133, !4134}
!4456 = !DILocation(line: 575, column: 3, scope: !4435)
!4457 = !DILocation(line: 576, column: 6, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 576, column: 6)
!4459 = !DILocation(line: 576, column: 15, scope: !4458)
!4460 = !DILocation(line: 576, column: 21, scope: !4458)
!4461 = !DILocation(line: 576, column: 37, scope: !4458)
!4462 = !DILocation(line: 576, column: 12, scope: !4458)
!4463 = !DILocation(line: 576, column: 6, scope: !4370)
!4464 = !DILocation(line: 577, column: 22, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 576, column: 42)
!4466 = !DILocation(line: 577, column: 28, scope: !4465)
!4467 = !DILocation(line: 577, column: 35, scope: !4465)
!4468 = !DILocation(line: 577, column: 9, scope: !4465)
!4469 = !DILocation(line: 577, column: 7, scope: !4465)
!4470 = !DILocation(line: 578, column: 3, scope: !4465)
!4471 = !DILocation(line: 578, column: 8, scope: !4465)
!4472 = !DILocation(line: 578, column: 14, scope: !4465)
!4473 = !DILocation(line: 578, column: 19, scope: !4465)
!4474 = !DILocation(line: 579, column: 2, scope: !4465)
!4475 = !DILocation(line: 580, column: 21, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4458, file: !3, line: 579, column: 9)
!4477 = !DILocation(line: 580, column: 3, scope: !4476)
!4478 = !DILocation(line: 580, column: 8, scope: !4476)
!4479 = !DILocation(line: 580, column: 14, scope: !4476)
!4480 = !DILocation(line: 580, column: 19, scope: !4476)
!4481 = !DILocation(line: 581, column: 21, scope: !4476)
!4482 = !DILocation(line: 581, column: 27, scope: !4476)
!4483 = !DILocation(line: 581, column: 34, scope: !4476)
!4484 = !DILocation(line: 581, column: 40, scope: !4476)
!4485 = !DILocation(line: 581, column: 46, scope: !4476)
!4486 = !DILocation(line: 581, column: 9, scope: !4476)
!4487 = !DILocation(line: 581, column: 7, scope: !4476)
!4488 = !DILocation(line: 583, column: 6, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 583, column: 6)
!4490 = !DILocation(line: 583, column: 10, scope: !4489)
!4491 = !DILocation(line: 583, column: 15, scope: !4489)
!4492 = !DILocation(line: 583, column: 19, scope: !4489)
!4493 = !DILocation(line: 583, column: 24, scope: !4489)
!4494 = !DILocation(line: 583, column: 30, scope: !4489)
!4495 = !DILocation(line: 583, column: 6, scope: !4370)
!4496 = !DILocation(line: 584, column: 3, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4489, file: !3, line: 583, column: 36)
!4498 = !DILocation(line: 584, column: 17, scope: !4497)
!4499 = !DILocation(line: 584, column: 23, scope: !4497)
!4500 = !DILocation(line: 584, column: 30, scope: !4497)
!4501 = !DILocation(line: 584, column: 37, scope: !4497)
!4502 = !DILocation(line: 584, column: 7, scope: !4497)
!4503 = !DILocation(line: 584, column: 45, scope: !4497)
!4504 = !DILocation(line: 586, column: 10, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 586, column: 3)
!4506 = !DILocation(line: 586, column: 8, scope: !4505)
!4507 = !DILocation(line: 586, column: 15, scope: !4508)
!4508 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 586, column: 3)
!4509 = !DILocation(line: 586, column: 20, scope: !4508)
!4510 = !DILocation(line: 586, column: 26, scope: !4508)
!4511 = !DILocation(line: 586, column: 40, scope: !4508)
!4512 = !DILocation(line: 586, column: 17, scope: !4508)
!4513 = !DILocation(line: 586, column: 46, scope: !4508)
!4514 = !DILocation(line: 586, column: 50, scope: !4508)
!4515 = !DILocation(line: 586, column: 54, scope: !4508)
!4516 = !DILocation(line: 586, column: 49, scope: !4508)
!4517 = !DILocation(line: 0, scope: !4508)
!4518 = !DILocation(line: 586, column: 3, scope: !4505)
!4519 = !DILocation(line: 586, column: 59, scope: !4508)
!4520 = !DILocation(line: 586, column: 3, scope: !4508)
!4521 = distinct !{!4521, !4518, !4522, !4133, !4134}
!4522 = !DILocation(line: 587, column: 4, scope: !4505)
!4523 = !DILocation(line: 589, column: 7, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 589, column: 7)
!4525 = !DILocation(line: 589, column: 13, scope: !4524)
!4526 = !DILocation(line: 589, column: 19, scope: !4524)
!4527 = !DILocation(line: 589, column: 33, scope: !4524)
!4528 = !DILocation(line: 589, column: 9, scope: !4524)
!4529 = !DILocation(line: 590, column: 7, scope: !4524)
!4530 = !DILocation(line: 590, column: 10, scope: !4524)
!4531 = !DILocation(line: 590, column: 15, scope: !4524)
!4532 = !DILocation(line: 590, column: 22, scope: !4524)
!4533 = !DILocation(line: 589, column: 7, scope: !4497)
!4534 = !DILocation(line: 591, column: 19, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 590, column: 37)
!4536 = !DILocation(line: 591, column: 25, scope: !4535)
!4537 = !DILocation(line: 591, column: 30, scope: !4535)
!4538 = !DILocation(line: 591, column: 35, scope: !4535)
!4539 = !DILocation(line: 591, column: 4, scope: !4535)
!4540 = !DILocation(line: 592, column: 4, scope: !4535)
!4541 = !DILocation(line: 592, column: 9, scope: !4535)
!4542 = !DILocation(line: 592, column: 16, scope: !4535)
!4543 = !DILocation(line: 593, column: 3, scope: !4535)
!4544 = !DILocation(line: 594, column: 20, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 593, column: 10)
!4546 = !DILocation(line: 594, column: 26, scope: !4545)
!4547 = !DILocation(line: 594, column: 31, scope: !4545)
!4548 = !DILocation(line: 594, column: 39, scope: !4545)
!4549 = !DILocation(line: 594, column: 10, scope: !4545)
!4550 = !DILocation(line: 594, column: 8, scope: !4545)
!4551 = !DILocation(line: 595, column: 8, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4545, file: !3, line: 595, column: 8)
!4553 = !DILocation(line: 595, column: 12, scope: !4552)
!4554 = !DILocation(line: 595, column: 8, scope: !4545)
!4555 = !DILocation(line: 596, column: 5, scope: !4552)
!4556 = !DILocation(line: 600, column: 2, scope: !4497)
!4557 = !DILocation(line: 583, column: 33, scope: !4489)
!4558 = !DILocation(line: 601, column: 1, scope: !4370)
!4559 = !DILocation(line: 602, column: 8, scope: !4370)
!4560 = !DILocation(line: 602, column: 2, scope: !4370)
!4561 = !DILocation(line: 603, column: 9, scope: !4370)
!4562 = !DILocation(line: 603, column: 2, scope: !4370)
!4563 = !DILocation(line: 604, column: 1, scope: !4370)
!4564 = distinct !DISubprogram(name: "qtree_read_dquot", scope: !3, file: !3, line: 719, type: !4138, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4565)
!4565 = !{!4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573}
!4566 = !DILocalVariable(name: "info", arg: 1, scope: !4564, file: !3, line: 719, type: !338)
!4567 = !DILocalVariable(name: "dquot", arg: 2, scope: !4564, file: !3, line: 719, type: !2565)
!4568 = !DILocalVariable(name: "type", scope: !4564, file: !3, line: 721, type: !118)
!4569 = !DILocalVariable(name: "sb", scope: !4564, file: !3, line: 722, type: !343)
!4570 = !DILocalVariable(name: "offset", scope: !4564, file: !3, line: 723, type: !114)
!4571 = !DILocalVariable(name: "ddquot", scope: !4564, file: !3, line: 724, type: !492)
!4572 = !DILocalVariable(name: "ret", scope: !4564, file: !3, line: 725, type: !118)
!4573 = !DILabel(scope: !4564, name: "out", file: !3, line: 775)
!4574 = !DILocation(line: 719, column: 47, scope: !4564)
!4575 = !DILocation(line: 719, column: 67, scope: !4564)
!4576 = !DILocation(line: 721, column: 2, scope: !4564)
!4577 = !DILocation(line: 721, column: 6, scope: !4564)
!4578 = !DILocation(line: 721, column: 13, scope: !4564)
!4579 = !DILocation(line: 721, column: 20, scope: !4564)
!4580 = !DILocation(line: 721, column: 26, scope: !4564)
!4581 = !DILocation(line: 722, column: 2, scope: !4564)
!4582 = !DILocation(line: 722, column: 22, scope: !4564)
!4583 = !DILocation(line: 722, column: 27, scope: !4564)
!4584 = !DILocation(line: 722, column: 34, scope: !4564)
!4585 = !DILocation(line: 723, column: 2, scope: !4564)
!4586 = !DILocation(line: 723, column: 9, scope: !4564)
!4587 = !DILocation(line: 724, column: 2, scope: !4564)
!4588 = !DILocation(line: 724, column: 8, scope: !4564)
!4589 = !DILocation(line: 725, column: 2, scope: !4564)
!4590 = !DILocation(line: 725, column: 6, scope: !4564)
!4591 = !DILocation(line: 729, column: 16, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 729, column: 6)
!4593 = !DILocation(line: 729, column: 23, scope: !4592)
!4594 = !DILocation(line: 729, column: 7, scope: !4592)
!4595 = !DILocation(line: 729, column: 31, scope: !4592)
!4596 = !DILocation(line: 729, column: 37, scope: !4592)
!4597 = !DILocation(line: 729, column: 6, scope: !4564)
!4598 = !DILocation(line: 730, column: 3, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 729, column: 44)
!4600 = !DILocation(line: 731, column: 3, scope: !4599)
!4601 = !DILocation(line: 735, column: 7, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 735, column: 6)
!4603 = !DILocation(line: 735, column: 14, scope: !4602)
!4604 = !DILocation(line: 735, column: 6, scope: !4564)
!4605 = !DILocation(line: 736, column: 25, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 735, column: 22)
!4607 = !DILocation(line: 736, column: 31, scope: !4606)
!4608 = !DILocation(line: 736, column: 12, scope: !4606)
!4609 = !DILocation(line: 736, column: 10, scope: !4606)
!4610 = !DILocation(line: 737, column: 7, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4606, file: !3, line: 737, column: 7)
!4612 = !DILocation(line: 737, column: 14, scope: !4611)
!4613 = !DILocation(line: 737, column: 7, scope: !4606)
!4614 = !DILocation(line: 738, column: 8, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4616, file: !3, line: 738, column: 8)
!4616 = distinct !DILexicalBlock(scope: !4611, file: !3, line: 737, column: 20)
!4617 = !DILocation(line: 738, column: 15, scope: !4615)
!4618 = !DILocation(line: 738, column: 8, scope: !4616)
!4619 = !DILocation(line: 739, column: 5, scope: !4615)
!4620 = !DILocation(line: 743, column: 4, scope: !4616)
!4621 = !DILocation(line: 743, column: 11, scope: !4616)
!4622 = !DILocation(line: 743, column: 18, scope: !4616)
!4623 = !DILocation(line: 744, column: 24, scope: !4616)
!4624 = !DILocation(line: 744, column: 31, scope: !4616)
!4625 = !DILocation(line: 744, column: 4, scope: !4616)
!4626 = !DILocation(line: 745, column: 12, scope: !4616)
!4627 = !DILocation(line: 745, column: 19, scope: !4616)
!4628 = !DILocation(line: 745, column: 4, scope: !4616)
!4629 = !DILocation(line: 746, column: 10, scope: !4616)
!4630 = !DILocation(line: 746, column: 8, scope: !4616)
!4631 = !DILocation(line: 747, column: 4, scope: !4616)
!4632 = !DILocation(line: 749, column: 19, scope: !4606)
!4633 = !DILocation(line: 749, column: 3, scope: !4606)
!4634 = !DILocation(line: 749, column: 10, scope: !4606)
!4635 = !DILocation(line: 749, column: 17, scope: !4606)
!4636 = !DILocation(line: 750, column: 2, scope: !4606)
!4637 = !DILocation(line: 751, column: 19, scope: !4564)
!4638 = !DILocation(line: 751, column: 25, scope: !4564)
!4639 = !DILocation(line: 751, column: 11, scope: !4564)
!4640 = !DILocation(line: 751, column: 9, scope: !4564)
!4641 = !DILocation(line: 752, column: 7, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 752, column: 6)
!4643 = !DILocation(line: 752, column: 6, scope: !4564)
!4644 = !DILocation(line: 753, column: 3, scope: !4642)
!4645 = !DILocation(line: 754, column: 8, scope: !4564)
!4646 = !DILocation(line: 754, column: 12, scope: !4564)
!4647 = !DILocation(line: 754, column: 18, scope: !4564)
!4648 = !DILocation(line: 754, column: 29, scope: !4564)
!4649 = !DILocation(line: 754, column: 33, scope: !4564)
!4650 = !DILocation(line: 754, column: 39, scope: !4564)
!4651 = !DILocation(line: 754, column: 47, scope: !4564)
!4652 = !DILocation(line: 754, column: 53, scope: !4564)
!4653 = !DILocation(line: 755, column: 8, scope: !4564)
!4654 = !DILocation(line: 755, column: 15, scope: !4564)
!4655 = !DILocation(line: 754, column: 6, scope: !4564)
!4656 = !DILocation(line: 756, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 756, column: 6)
!4658 = !DILocation(line: 756, column: 13, scope: !4657)
!4659 = !DILocation(line: 756, column: 19, scope: !4657)
!4660 = !DILocation(line: 756, column: 10, scope: !4657)
!4661 = !DILocation(line: 756, column: 6, scope: !4564)
!4662 = !DILocation(line: 757, column: 7, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 757, column: 7)
!4664 = distinct !DILexicalBlock(scope: !4657, file: !3, line: 756, column: 35)
!4665 = !DILocation(line: 757, column: 11, scope: !4663)
!4666 = !DILocation(line: 757, column: 7, scope: !4664)
!4667 = !DILocation(line: 758, column: 8, scope: !4663)
!4668 = !DILocation(line: 758, column: 4, scope: !4663)
!4669 = !DILocation(line: 759, column: 3, scope: !4664)
!4670 = !DILocation(line: 761, column: 23, scope: !4664)
!4671 = !DILocation(line: 761, column: 30, scope: !4664)
!4672 = !DILocation(line: 761, column: 3, scope: !4664)
!4673 = !DILocation(line: 762, column: 11, scope: !4664)
!4674 = !DILocation(line: 762, column: 18, scope: !4664)
!4675 = !DILocation(line: 762, column: 3, scope: !4664)
!4676 = !DILocation(line: 763, column: 9, scope: !4664)
!4677 = !DILocation(line: 763, column: 3, scope: !4664)
!4678 = !DILocation(line: 764, column: 3, scope: !4664)
!4679 = !DILocation(line: 766, column: 13, scope: !4564)
!4680 = !DILocation(line: 766, column: 20, scope: !4564)
!4681 = !DILocation(line: 766, column: 2, scope: !4564)
!4682 = !DILocation(line: 767, column: 2, scope: !4564)
!4683 = !DILocation(line: 767, column: 8, scope: !4564)
!4684 = !DILocation(line: 767, column: 17, scope: !4564)
!4685 = !DILocation(line: 767, column: 32, scope: !4564)
!4686 = !DILocation(line: 767, column: 39, scope: !4564)
!4687 = !DILocation(line: 768, column: 7, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 768, column: 6)
!4689 = !DILocation(line: 768, column: 14, scope: !4688)
!4690 = !DILocation(line: 768, column: 21, scope: !4688)
!4691 = !DILocation(line: 768, column: 36, scope: !4688)
!4692 = !DILocation(line: 769, column: 7, scope: !4688)
!4693 = !DILocation(line: 769, column: 14, scope: !4688)
!4694 = !DILocation(line: 769, column: 21, scope: !4688)
!4695 = !DILocation(line: 769, column: 36, scope: !4688)
!4696 = !DILocation(line: 770, column: 7, scope: !4688)
!4697 = !DILocation(line: 770, column: 14, scope: !4688)
!4698 = !DILocation(line: 770, column: 21, scope: !4688)
!4699 = !DILocation(line: 770, column: 36, scope: !4688)
!4700 = !DILocation(line: 771, column: 7, scope: !4688)
!4701 = !DILocation(line: 771, column: 14, scope: !4688)
!4702 = !DILocation(line: 771, column: 21, scope: !4688)
!4703 = !DILocation(line: 768, column: 6, scope: !4564)
!4704 = !DILocation(line: 772, column: 23, scope: !4688)
!4705 = !DILocation(line: 772, column: 30, scope: !4688)
!4706 = !DILocation(line: 772, column: 3, scope: !4688)
!4707 = !DILocation(line: 773, column: 15, scope: !4564)
!4708 = !DILocation(line: 773, column: 22, scope: !4564)
!4709 = !DILocation(line: 773, column: 2, scope: !4564)
!4710 = !DILocation(line: 774, column: 8, scope: !4564)
!4711 = !DILocation(line: 774, column: 2, scope: !4564)
!4712 = !DILocation(line: 775, column: 1, scope: !4564)
!4713 = !DILocation(line: 776, column: 2, scope: !4564)
!4714 = !DILocation(line: 777, column: 9, scope: !4564)
!4715 = !DILocation(line: 777, column: 2, scope: !4564)
!4716 = !DILocation(line: 778, column: 1, scope: !4564)
!4717 = distinct !DISubprogram(name: "sb_dqopt", scope: !4310, file: !4310, line: 17, type: !4718, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4721)
!4718 = !DISubroutineType(types: !4719)
!4719 = !{!4720, !343}
!4720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!4721 = !{!4722}
!4722 = !DILocalVariable(name: "sb", arg: 1, scope: !4717, file: !4310, line: 17, type: !343)
!4723 = !DILocation(line: 17, column: 63, scope: !4717)
!4724 = !DILocation(line: 19, column: 10, scope: !4717)
!4725 = !DILocation(line: 19, column: 14, scope: !4717)
!4726 = !DILocation(line: 19, column: 2, scope: !4717)
!4727 = distinct !DISubprogram(name: "find_dqentry", scope: !3, file: !3, line: 707, type: !4728, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4730)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!114, !338, !2565}
!4730 = !{!4731, !4732, !4733}
!4731 = !DILocalVariable(name: "info", arg: 1, scope: !4727, file: !3, line: 707, type: !338)
!4732 = !DILocalVariable(name: "dquot", arg: 2, scope: !4727, file: !3, line: 708, type: !2565)
!4733 = !DILocalVariable(name: "blks", scope: !4727, file: !3, line: 710, type: !4282)
!4734 = !DILocation(line: 707, column: 60, scope: !4727)
!4735 = !DILocation(line: 708, column: 21, scope: !4727)
!4736 = !DILocation(line: 710, column: 2, scope: !4727)
!4737 = !DILocation(line: 710, column: 7, scope: !4727)
!4738 = !DILocation(line: 712, column: 6, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4727, file: !3, line: 712, column: 6)
!4740 = !DILocation(line: 712, column: 12, scope: !4739)
!4741 = !DILocation(line: 712, column: 28, scope: !4739)
!4742 = !DILocation(line: 712, column: 6, scope: !4727)
!4743 = !DILocation(line: 713, column: 3, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4739, file: !3, line: 712, column: 48)
!4745 = !DILocation(line: 714, column: 3, scope: !4744)
!4746 = !DILocation(line: 716, column: 27, scope: !4727)
!4747 = !DILocation(line: 716, column: 33, scope: !4727)
!4748 = !DILocation(line: 716, column: 40, scope: !4727)
!4749 = !DILocation(line: 716, column: 9, scope: !4727)
!4750 = !DILocation(line: 716, column: 2, scope: !4727)
!4751 = !DILocation(line: 717, column: 1, scope: !4727)
!4752 = !DISubprogram(name: "from_kqid", scope: !40, file: !40, line: 79, type: !4753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4753 = !DISubroutineType(types: !4754)
!4754 = !{!4755, !906, !2577}
!4755 = !DIDerivedType(tag: DW_TAG_typedef, name: "qid_t", file: !40, line: 65, baseType: !439)
!4756 = distinct !DISubprogram(name: "set_bit", scope: !4757, file: !4757, line: 26, type: !4758, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4762)
!4757 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4758 = !DISubroutineType(types: !4759)
!4759 = !{null, !125, !4760}
!4760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4761, size: 64)
!4761 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!4762 = !{!4763, !4764}
!4763 = !DILocalVariable(name: "nr", arg: 1, scope: !4756, file: !4757, line: 26, type: !125)
!4764 = !DILocalVariable(name: "addr", arg: 2, scope: !4756, file: !4757, line: 26, type: !4760)
!4765 = !DILocation(line: 26, column: 42, scope: !4756)
!4766 = !DILocation(line: 26, column: 70, scope: !4756)
!4767 = !DILocation(line: 28, column: 26, scope: !4756)
!4768 = !DILocation(line: 28, column: 33, scope: !4756)
!4769 = !DILocation(line: 28, column: 31, scope: !4756)
!4770 = !DILocation(line: 28, column: 2, scope: !4756)
!4771 = !DILocation(line: 29, column: 15, scope: !4756)
!4772 = !DILocation(line: 29, column: 19, scope: !4756)
!4773 = !DILocation(line: 29, column: 2, scope: !4756)
!4774 = !DILocation(line: 30, column: 1, scope: !4756)
!4775 = distinct !DISubprogram(name: "qtree_release_dquot", scope: !3, file: !3, line: 783, type: !4138, scopeLine: 784, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4776)
!4776 = !{!4777, !4778}
!4777 = !DILocalVariable(name: "info", arg: 1, scope: !4775, file: !3, line: 783, type: !338)
!4778 = !DILocalVariable(name: "dquot", arg: 2, scope: !4775, file: !3, line: 783, type: !2565)
!4779 = !DILocation(line: 783, column: 50, scope: !4775)
!4780 = !DILocation(line: 783, column: 70, scope: !4775)
!4781 = !DILocation(line: 785, column: 6, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4775, file: !3, line: 785, column: 6)
!4783 = !DILocation(line: 785, column: 44, scope: !4782)
!4784 = !DILocation(line: 786, column: 8, scope: !4782)
!4785 = !DILocation(line: 786, column: 15, scope: !4782)
!4786 = !DILocation(line: 786, column: 22, scope: !4782)
!4787 = !DILocation(line: 786, column: 38, scope: !4782)
!4788 = !DILocation(line: 786, column: 45, scope: !4782)
!4789 = !DILocation(line: 786, column: 52, scope: !4782)
!4790 = !DILocation(line: 786, column: 36, scope: !4782)
!4791 = !DILocation(line: 785, column: 6, scope: !4775)
!4792 = !DILocation(line: 787, column: 29, scope: !4782)
!4793 = !DILocation(line: 787, column: 35, scope: !4782)
!4794 = !DILocation(line: 787, column: 10, scope: !4782)
!4795 = !DILocation(line: 787, column: 3, scope: !4782)
!4796 = !DILocation(line: 788, column: 2, scope: !4775)
!4797 = !DILocation(line: 789, column: 1, scope: !4775)
!4798 = distinct !DISubprogram(name: "const_test_bit", scope: !4799, file: !4799, line: 166, type: !4800, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4804)
!4799 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!486, !94, !4802}
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4761)
!4804 = !{!4805, !4806, !4807, !4808, !4809}
!4805 = !DILocalVariable(name: "nr", arg: 1, scope: !4798, file: !4799, line: 166, type: !94)
!4806 = !DILocalVariable(name: "addr", arg: 2, scope: !4798, file: !4799, line: 166, type: !4802)
!4807 = !DILocalVariable(name: "p", scope: !4798, file: !4799, line: 168, type: !95)
!4808 = !DILocalVariable(name: "mask", scope: !4798, file: !4799, line: 169, type: !94)
!4809 = !DILocalVariable(name: "val", scope: !4798, file: !4799, line: 170, type: !94)
!4810 = !DILocation(line: 166, column: 30, scope: !4798)
!4811 = !DILocation(line: 166, column: 64, scope: !4798)
!4812 = !DILocation(line: 168, column: 2, scope: !4798)
!4813 = !DILocation(line: 168, column: 23, scope: !4798)
!4814 = !DILocation(line: 168, column: 50, scope: !4798)
!4815 = !DILocation(line: 168, column: 57, scope: !4798)
!4816 = !DILocation(line: 168, column: 55, scope: !4798)
!4817 = !DILocation(line: 169, column: 2, scope: !4798)
!4818 = !DILocation(line: 169, column: 16, scope: !4798)
!4819 = !DILocation(line: 169, column: 23, scope: !4798)
!4820 = !DILocation(line: 170, column: 2, scope: !4798)
!4821 = !DILocation(line: 170, column: 16, scope: !4798)
!4822 = !DILocation(line: 170, column: 23, scope: !4798)
!4823 = !DILocation(line: 170, column: 22, scope: !4798)
!4824 = !DILocation(line: 172, column: 12, scope: !4798)
!4825 = !DILocation(line: 172, column: 18, scope: !4798)
!4826 = !DILocation(line: 172, column: 16, scope: !4798)
!4827 = !DILocation(line: 172, column: 10, scope: !4798)
!4828 = !DILocation(line: 172, column: 9, scope: !4798)
!4829 = !DILocation(line: 173, column: 1, scope: !4798)
!4830 = !DILocation(line: 172, column: 2, scope: !4798)
!4831 = distinct !DISubprogram(name: "_test_bit", scope: !4832, file: !4832, line: 139, type: !4800, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4833)
!4832 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4833 = !{!4834, !4835}
!4834 = !DILocalVariable(name: "nr", arg: 1, scope: !4831, file: !4832, line: 139, type: !94)
!4835 = !DILocalVariable(name: "addr", arg: 2, scope: !4831, file: !4832, line: 139, type: !4802)
!4836 = !DILocation(line: 139, column: 25, scope: !4831)
!4837 = !DILocation(line: 139, column: 59, scope: !4831)
!4838 = !DILocation(line: 141, column: 25, scope: !4831)
!4839 = !DILocation(line: 141, column: 32, scope: !4831)
!4840 = !DILocation(line: 141, column: 30, scope: !4831)
!4841 = !DILocation(line: 141, column: 2, scope: !4831)
!4842 = !DILocation(line: 142, column: 23, scope: !4831)
!4843 = !DILocation(line: 142, column: 27, scope: !4831)
!4844 = !DILocation(line: 142, column: 9, scope: !4831)
!4845 = !DILocation(line: 142, column: 2, scope: !4831)
!4846 = distinct !DISubprogram(name: "qtree_get_next_id", scope: !3, file: !3, line: 842, type: !4847, scopeLine: 843, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4849)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!118, !338, !2663}
!4849 = !{!4850, !4851, !4852, !4853}
!4850 = !DILocalVariable(name: "info", arg: 1, scope: !4846, file: !3, line: 842, type: !338)
!4851 = !DILocalVariable(name: "qid", arg: 2, scope: !4846, file: !3, line: 842, type: !2663)
!4852 = !DILocalVariable(name: "id", scope: !4846, file: !3, line: 844, type: !4755)
!4853 = !DILocalVariable(name: "ret", scope: !4846, file: !3, line: 845, type: !118)
!4854 = !DILocation(line: 842, column: 48, scope: !4846)
!4855 = !DILocation(line: 842, column: 67, scope: !4846)
!4856 = !DILocation(line: 844, column: 2, scope: !4846)
!4857 = !DILocation(line: 844, column: 8, scope: !4846)
!4858 = !DILocation(line: 844, column: 39, scope: !4846)
!4859 = !DILocation(line: 844, column: 13, scope: !4846)
!4860 = !DILocation(line: 845, column: 2, scope: !4846)
!4861 = !DILocation(line: 845, column: 6, scope: !4846)
!4862 = !DILocation(line: 847, column: 21, scope: !4846)
!4863 = !DILocation(line: 847, column: 8, scope: !4846)
!4864 = !DILocation(line: 847, column: 6, scope: !4846)
!4865 = !DILocation(line: 848, column: 6, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 848, column: 6)
!4867 = !DILocation(line: 848, column: 10, scope: !4866)
!4868 = !DILocation(line: 848, column: 6, scope: !4846)
!4869 = !DILocation(line: 849, column: 10, scope: !4866)
!4870 = !DILocation(line: 849, column: 3, scope: !4866)
!4871 = !DILocation(line: 850, column: 3, scope: !4846)
!4872 = !DILocation(line: 850, column: 9, scope: !4846)
!4873 = !DILocation(line: 850, column: 34, scope: !4846)
!4874 = !DILocation(line: 850, column: 39, scope: !4846)
!4875 = !DILocation(line: 850, column: 45, scope: !4846)
!4876 = !DILocation(line: 851, column: 2, scope: !4846)
!4877 = !DILocation(line: 852, column: 1, scope: !4846)
!4878 = distinct !DISubprogram(name: "find_next_id", scope: !3, file: !3, line: 792, type: !4879, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4882)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!118, !338, !4881, !7, !118}
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4755, size: 64)
!4882 = !{!4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4891, !4892, !4893, !4897}
!4883 = !DILocalVariable(name: "info", arg: 1, scope: !4878, file: !3, line: 792, type: !338)
!4884 = !DILocalVariable(name: "id", arg: 2, scope: !4878, file: !3, line: 792, type: !4881)
!4885 = !DILocalVariable(name: "blk", arg: 3, scope: !4878, file: !3, line: 793, type: !7)
!4886 = !DILocalVariable(name: "depth", arg: 4, scope: !4878, file: !3, line: 793, type: !118)
!4887 = !DILocalVariable(name: "buf", scope: !4878, file: !3, line: 795, type: !492)
!4888 = !DILocalVariable(name: "ref", scope: !4878, file: !3, line: 796, type: !97)
!4889 = !DILocalVariable(name: "ret", scope: !4878, file: !3, line: 797, type: !1037)
!4890 = !DILocalVariable(name: "epb", scope: !4878, file: !3, line: 798, type: !7)
!4891 = !DILocalVariable(name: "level_inc", scope: !4878, file: !3, line: 799, type: !7)
!4892 = !DILocalVariable(name: "i", scope: !4878, file: !3, line: 800, type: !118)
!4893 = !DILocalVariable(name: "blk_no", scope: !4894, file: !3, line: 815, type: !119)
!4894 = distinct !DILexicalBlock(scope: !4895, file: !3, line: 814, column: 56)
!4895 = distinct !DILexicalBlock(scope: !4896, file: !3, line: 814, column: 2)
!4896 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 814, column: 2)
!4897 = !DILabel(scope: !4878, name: "out_buf", file: !3, line: 837)
!4898 = !DILocation(line: 792, column: 50, scope: !4878)
!4899 = !DILocation(line: 792, column: 63, scope: !4878)
!4900 = !DILocation(line: 793, column: 17, scope: !4878)
!4901 = !DILocation(line: 793, column: 26, scope: !4878)
!4902 = !DILocation(line: 795, column: 2, scope: !4878)
!4903 = !DILocation(line: 795, column: 8, scope: !4878)
!4904 = !DILocation(line: 795, column: 22, scope: !4878)
!4905 = !DILocation(line: 795, column: 28, scope: !4878)
!4906 = !DILocation(line: 795, column: 14, scope: !4878)
!4907 = !DILocation(line: 796, column: 2, scope: !4878)
!4908 = !DILocation(line: 796, column: 10, scope: !4878)
!4909 = !DILocation(line: 796, column: 26, scope: !4878)
!4910 = !DILocation(line: 797, column: 2, scope: !4878)
!4911 = !DILocation(line: 797, column: 10, scope: !4878)
!4912 = !DILocation(line: 798, column: 2, scope: !4878)
!4913 = !DILocation(line: 798, column: 15, scope: !4878)
!4914 = !DILocation(line: 798, column: 21, scope: !4878)
!4915 = !DILocation(line: 798, column: 27, scope: !4878)
!4916 = !DILocation(line: 798, column: 41, scope: !4878)
!4917 = !DILocation(line: 799, column: 2, scope: !4878)
!4918 = !DILocation(line: 799, column: 15, scope: !4878)
!4919 = !DILocation(line: 800, column: 2, scope: !4878)
!4920 = !DILocation(line: 800, column: 6, scope: !4878)
!4921 = !DILocation(line: 802, column: 7, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 802, column: 6)
!4923 = !DILocation(line: 802, column: 6, scope: !4878)
!4924 = !DILocation(line: 803, column: 3, scope: !4922)
!4925 = !DILocation(line: 805, column: 11, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 805, column: 2)
!4927 = !DILocation(line: 805, column: 9, scope: !4926)
!4928 = !DILocation(line: 805, column: 7, scope: !4926)
!4929 = !DILocation(line: 805, column: 18, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4926, file: !3, line: 805, column: 2)
!4931 = !DILocation(line: 805, column: 22, scope: !4930)
!4932 = !DILocation(line: 805, column: 28, scope: !4930)
!4933 = !DILocation(line: 805, column: 44, scope: !4930)
!4934 = !DILocation(line: 805, column: 20, scope: !4930)
!4935 = !DILocation(line: 805, column: 2, scope: !4926)
!4936 = !DILocation(line: 806, column: 16, scope: !4930)
!4937 = !DILocation(line: 806, column: 13, scope: !4930)
!4938 = !DILocation(line: 806, column: 3, scope: !4930)
!4939 = !DILocation(line: 805, column: 50, scope: !4930)
!4940 = !DILocation(line: 805, column: 2, scope: !4930)
!4941 = distinct !{!4941, !4935, !4942, !4133, !4134}
!4942 = !DILocation(line: 806, column: 16, scope: !4926)
!4943 = !DILocation(line: 808, column: 17, scope: !4878)
!4944 = !DILocation(line: 808, column: 23, scope: !4878)
!4945 = !DILocation(line: 808, column: 28, scope: !4878)
!4946 = !DILocation(line: 808, column: 8, scope: !4878)
!4947 = !DILocation(line: 808, column: 6, scope: !4878)
!4948 = !DILocation(line: 809, column: 6, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 809, column: 6)
!4950 = !DILocation(line: 809, column: 10, scope: !4949)
!4951 = !DILocation(line: 809, column: 6, scope: !4878)
!4952 = !DILocation(line: 810, column: 3, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4949, file: !3, line: 809, column: 15)
!4954 = !DILocation(line: 812, column: 3, scope: !4953)
!4955 = !DILocation(line: 814, column: 23, scope: !4896)
!4956 = !DILocation(line: 814, column: 30, scope: !4896)
!4957 = !DILocation(line: 814, column: 29, scope: !4896)
!4958 = !DILocation(line: 814, column: 34, scope: !4896)
!4959 = !DILocation(line: 814, column: 11, scope: !4896)
!4960 = !DILocation(line: 814, column: 9, scope: !4896)
!4961 = !DILocation(line: 814, column: 7, scope: !4896)
!4962 = !DILocation(line: 814, column: 42, scope: !4895)
!4963 = !DILocation(line: 814, column: 46, scope: !4895)
!4964 = !DILocation(line: 814, column: 44, scope: !4895)
!4965 = !DILocation(line: 814, column: 2, scope: !4896)
!4966 = !DILocation(line: 815, column: 3, scope: !4894)
!4967 = !DILocation(line: 815, column: 8, scope: !4894)
!4968 = !DILocation(line: 815, column: 17, scope: !4894)
!4969 = !DILocation(line: 817, column: 7, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 817, column: 7)
!4971 = !DILocation(line: 817, column: 14, scope: !4970)
!4972 = !DILocation(line: 817, column: 7, scope: !4894)
!4973 = !DILocation(line: 818, column: 11, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4970, file: !3, line: 817, column: 20)
!4975 = !DILocation(line: 818, column: 5, scope: !4974)
!4976 = !DILocation(line: 818, column: 8, scope: !4974)
!4977 = !DILocation(line: 819, column: 4, scope: !4974)
!4978 = !DILocation(line: 821, column: 24, scope: !4894)
!4979 = !DILocation(line: 821, column: 30, scope: !4894)
!4980 = !DILocation(line: 821, column: 47, scope: !4894)
!4981 = !DILocation(line: 822, column: 10, scope: !4894)
!4982 = !DILocation(line: 822, column: 16, scope: !4894)
!4983 = !DILocation(line: 822, column: 27, scope: !4894)
!4984 = !DILocation(line: 821, column: 9, scope: !4894)
!4985 = !DILocation(line: 821, column: 7, scope: !4894)
!4986 = !DILocation(line: 823, column: 7, scope: !4987)
!4987 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 823, column: 7)
!4988 = !DILocation(line: 823, column: 7, scope: !4894)
!4989 = !DILocation(line: 824, column: 4, scope: !4987)
!4990 = !DILocation(line: 825, column: 7, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 825, column: 7)
!4992 = !DILocation(line: 825, column: 16, scope: !4991)
!4993 = !DILocation(line: 825, column: 22, scope: !4991)
!4994 = !DILocation(line: 825, column: 38, scope: !4991)
!4995 = !DILocation(line: 825, column: 13, scope: !4991)
!4996 = !DILocation(line: 825, column: 7, scope: !4894)
!4997 = !DILocation(line: 826, column: 8, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4991, file: !3, line: 825, column: 43)
!4999 = !DILocation(line: 827, column: 4, scope: !4998)
!5000 = !DILocation(line: 829, column: 22, scope: !4894)
!5001 = !DILocation(line: 829, column: 28, scope: !4894)
!5002 = !DILocation(line: 829, column: 32, scope: !4894)
!5003 = !DILocation(line: 829, column: 40, scope: !4894)
!5004 = !DILocation(line: 829, column: 46, scope: !4894)
!5005 = !DILocation(line: 829, column: 9, scope: !4894)
!5006 = !DILocation(line: 829, column: 7, scope: !4894)
!5007 = !DILocation(line: 830, column: 7, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4894, file: !3, line: 830, column: 7)
!5009 = !DILocation(line: 830, column: 11, scope: !5008)
!5010 = !DILocation(line: 830, column: 7, scope: !4894)
!5011 = !DILocation(line: 831, column: 4, scope: !5008)
!5012 = !DILocation(line: 832, column: 2, scope: !4895)
!5013 = !DILocation(line: 832, column: 2, scope: !4894)
!5014 = !DILocation(line: 814, column: 52, scope: !4895)
!5015 = !DILocation(line: 814, column: 2, scope: !4895)
!5016 = distinct !{!5016, !4965, !5017, !4133, !4134}
!5017 = !DILocation(line: 832, column: 2, scope: !4896)
!5018 = !DILocation(line: 833, column: 6, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 833, column: 6)
!5020 = !DILocation(line: 833, column: 11, scope: !5019)
!5021 = !DILocation(line: 833, column: 8, scope: !5019)
!5022 = !DILocation(line: 833, column: 6, scope: !4878)
!5023 = !DILocation(line: 834, column: 7, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 833, column: 16)
!5025 = !DILocation(line: 835, column: 3, scope: !5024)
!5026 = !DILocation(line: 837, column: 1, scope: !4878)
!5027 = !DILocation(line: 838, column: 8, scope: !4878)
!5028 = !DILocation(line: 838, column: 2, scope: !4878)
!5029 = !DILocation(line: 839, column: 9, scope: !4878)
!5030 = !DILocation(line: 839, column: 2, scope: !4878)
!5031 = !DILocation(line: 840, column: 1, scope: !4878)
!5032 = distinct !DISubprogram(name: "make_kqid", scope: !40, file: !40, line: 97, type: !5033, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5035)
!5033 = !DISubroutineType(types: !5034)
!5034 = !{!2577, !906, !39, !4755}
!5035 = !{!5036, !5037, !5038, !5039}
!5036 = !DILocalVariable(name: "from", arg: 1, scope: !5032, file: !40, line: 97, type: !906)
!5037 = !DILocalVariable(name: "type", arg: 2, scope: !5032, file: !40, line: 98, type: !39)
!5038 = !DILocalVariable(name: "qid", arg: 3, scope: !5032, file: !40, line: 98, type: !4755)
!5039 = !DILocalVariable(name: "kqid", scope: !5032, file: !40, line: 100, type: !2577)
!5040 = !DILocation(line: 97, column: 60, scope: !5032)
!5041 = !DILocation(line: 98, column: 25, scope: !5032)
!5042 = !DILocation(line: 98, column: 37, scope: !5032)
!5043 = !DILocation(line: 100, column: 14, scope: !5032)
!5044 = !DILocation(line: 102, column: 14, scope: !5032)
!5045 = !DILocation(line: 102, column: 7, scope: !5032)
!5046 = !DILocation(line: 102, column: 12, scope: !5032)
!5047 = !DILocation(line: 103, column: 10, scope: !5032)
!5048 = !DILocation(line: 103, column: 2, scope: !5032)
!5049 = !DILocation(line: 105, column: 8, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5032, file: !40, line: 103, column: 16)
!5051 = !DILocation(line: 105, column: 14, scope: !5050)
!5052 = !DILocation(line: 105, column: 24, scope: !5050)
!5053 = !DILocation(line: 105, column: 30, scope: !5050)
!5054 = !DILocation(line: 106, column: 3, scope: !5050)
!5055 = !DILocation(line: 108, column: 8, scope: !5050)
!5056 = !DILocation(line: 108, column: 14, scope: !5050)
!5057 = !DILocation(line: 108, column: 24, scope: !5050)
!5058 = !DILocation(line: 108, column: 30, scope: !5050)
!5059 = !DILocation(line: 109, column: 3, scope: !5050)
!5060 = !DILocation(line: 111, column: 8, scope: !5050)
!5061 = !DILocation(line: 111, column: 17, scope: !5050)
!5062 = !DILocation(line: 111, column: 30, scope: !5050)
!5063 = !DILocation(line: 111, column: 36, scope: !5050)
!5064 = !DILocation(line: 112, column: 3, scope: !5050)
!5065 = !DILocation(line: 114, column: 3, scope: !5050)
!5066 = !DILocation(line: 114, column: 3, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5050, file: !40, line: 114, column: 3)
!5068 = !DILocation(line: 114, column: 3, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5067, file: !40, line: 114, column: 3)
!5070 = !DILocation(line: 114, column: 3, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5067, file: !40, line: 114, column: 3)
!5072 = !{i64 2153328762, i64 2153328791, i64 2153328837, i64 2153328895, i64 2153328949, i64 2153329003, i64 2153329058, i64 2153329089}
!5073 = !DILocation(line: 115, column: 2, scope: !5050)
!5074 = !DILocation(line: 116, column: 2, scope: !5032)
!5075 = !DISubprogram(name: "kmalloc_large", scope: !80, file: !80, line: 531, type: !4235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5076 = distinct !DISubprogram(name: "__kmalloc_index", scope: !80, file: !80, line: 444, type: !5077, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5079)
!5077 = !DISubroutineType(types: !5078)
!5078 = !{!7, !1049, !486}
!5079 = !{!5080, !5081}
!5080 = !DILocalVariable(name: "size", arg: 1, scope: !5076, file: !80, line: 444, type: !1049)
!5081 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5076, file: !80, line: 445, type: !486)
!5082 = !DILocation(line: 444, column: 60, scope: !5076)
!5083 = !DILocation(line: 445, column: 16, scope: !5076)
!5084 = !DILocation(line: 447, column: 7, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 447, column: 6)
!5086 = !DILocation(line: 447, column: 6, scope: !5076)
!5087 = !DILocation(line: 448, column: 3, scope: !5085)
!5088 = !DILocation(line: 450, column: 6, scope: !5089)
!5089 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 450, column: 6)
!5090 = !DILocation(line: 450, column: 11, scope: !5089)
!5091 = !DILocation(line: 450, column: 6, scope: !5076)
!5092 = !DILocation(line: 451, column: 3, scope: !5089)
!5093 = !DILocation(line: 453, column: 32, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 453, column: 6)
!5095 = !DILocation(line: 453, column: 37, scope: !5094)
!5096 = !DILocation(line: 453, column: 42, scope: !5094)
!5097 = !DILocation(line: 453, column: 45, scope: !5094)
!5098 = !DILocation(line: 453, column: 50, scope: !5094)
!5099 = !DILocation(line: 453, column: 6, scope: !5076)
!5100 = !DILocation(line: 454, column: 3, scope: !5094)
!5101 = !DILocation(line: 455, column: 32, scope: !5102)
!5102 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 455, column: 6)
!5103 = !DILocation(line: 455, column: 37, scope: !5102)
!5104 = !DILocation(line: 455, column: 43, scope: !5102)
!5105 = !DILocation(line: 455, column: 46, scope: !5102)
!5106 = !DILocation(line: 455, column: 51, scope: !5102)
!5107 = !DILocation(line: 455, column: 6, scope: !5076)
!5108 = !DILocation(line: 456, column: 3, scope: !5102)
!5109 = !DILocation(line: 457, column: 6, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 457, column: 6)
!5111 = !DILocation(line: 457, column: 11, scope: !5110)
!5112 = !DILocation(line: 457, column: 6, scope: !5076)
!5113 = !DILocation(line: 457, column: 26, scope: !5110)
!5114 = !DILocation(line: 458, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 458, column: 6)
!5116 = !DILocation(line: 458, column: 11, scope: !5115)
!5117 = !DILocation(line: 458, column: 6, scope: !5076)
!5118 = !DILocation(line: 458, column: 26, scope: !5115)
!5119 = !DILocation(line: 459, column: 6, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 459, column: 6)
!5121 = !DILocation(line: 459, column: 11, scope: !5120)
!5122 = !DILocation(line: 459, column: 6, scope: !5076)
!5123 = !DILocation(line: 459, column: 26, scope: !5120)
!5124 = !DILocation(line: 460, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 460, column: 6)
!5126 = !DILocation(line: 460, column: 11, scope: !5125)
!5127 = !DILocation(line: 460, column: 6, scope: !5076)
!5128 = !DILocation(line: 460, column: 26, scope: !5125)
!5129 = !DILocation(line: 461, column: 6, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 461, column: 6)
!5131 = !DILocation(line: 461, column: 11, scope: !5130)
!5132 = !DILocation(line: 461, column: 6, scope: !5076)
!5133 = !DILocation(line: 461, column: 26, scope: !5130)
!5134 = !DILocation(line: 462, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 462, column: 6)
!5136 = !DILocation(line: 462, column: 11, scope: !5135)
!5137 = !DILocation(line: 462, column: 6, scope: !5076)
!5138 = !DILocation(line: 462, column: 26, scope: !5135)
!5139 = !DILocation(line: 463, column: 6, scope: !5140)
!5140 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 463, column: 6)
!5141 = !DILocation(line: 463, column: 11, scope: !5140)
!5142 = !DILocation(line: 463, column: 6, scope: !5076)
!5143 = !DILocation(line: 463, column: 26, scope: !5140)
!5144 = !DILocation(line: 464, column: 6, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 464, column: 6)
!5146 = !DILocation(line: 464, column: 11, scope: !5145)
!5147 = !DILocation(line: 464, column: 6, scope: !5076)
!5148 = !DILocation(line: 464, column: 26, scope: !5145)
!5149 = !DILocation(line: 465, column: 6, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 465, column: 6)
!5151 = !DILocation(line: 465, column: 11, scope: !5150)
!5152 = !DILocation(line: 465, column: 6, scope: !5076)
!5153 = !DILocation(line: 465, column: 26, scope: !5150)
!5154 = !DILocation(line: 466, column: 6, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 466, column: 6)
!5156 = !DILocation(line: 466, column: 11, scope: !5155)
!5157 = !DILocation(line: 466, column: 6, scope: !5076)
!5158 = !DILocation(line: 466, column: 26, scope: !5155)
!5159 = !DILocation(line: 467, column: 6, scope: !5160)
!5160 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 467, column: 6)
!5161 = !DILocation(line: 467, column: 11, scope: !5160)
!5162 = !DILocation(line: 467, column: 6, scope: !5076)
!5163 = !DILocation(line: 467, column: 26, scope: !5160)
!5164 = !DILocation(line: 468, column: 6, scope: !5165)
!5165 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 468, column: 6)
!5166 = !DILocation(line: 468, column: 11, scope: !5165)
!5167 = !DILocation(line: 468, column: 6, scope: !5076)
!5168 = !DILocation(line: 468, column: 26, scope: !5165)
!5169 = !DILocation(line: 469, column: 6, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 469, column: 6)
!5171 = !DILocation(line: 469, column: 11, scope: !5170)
!5172 = !DILocation(line: 469, column: 6, scope: !5076)
!5173 = !DILocation(line: 469, column: 26, scope: !5170)
!5174 = !DILocation(line: 470, column: 6, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 470, column: 6)
!5176 = !DILocation(line: 470, column: 11, scope: !5175)
!5177 = !DILocation(line: 470, column: 6, scope: !5076)
!5178 = !DILocation(line: 470, column: 26, scope: !5175)
!5179 = !DILocation(line: 471, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 471, column: 6)
!5181 = !DILocation(line: 471, column: 11, scope: !5180)
!5182 = !DILocation(line: 471, column: 6, scope: !5076)
!5183 = !DILocation(line: 471, column: 26, scope: !5180)
!5184 = !DILocation(line: 472, column: 6, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 472, column: 6)
!5186 = !DILocation(line: 472, column: 11, scope: !5185)
!5187 = !DILocation(line: 472, column: 6, scope: !5076)
!5188 = !DILocation(line: 472, column: 26, scope: !5185)
!5189 = !DILocation(line: 473, column: 6, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 473, column: 6)
!5191 = !DILocation(line: 473, column: 11, scope: !5190)
!5192 = !DILocation(line: 473, column: 6, scope: !5076)
!5193 = !DILocation(line: 473, column: 26, scope: !5190)
!5194 = !DILocation(line: 474, column: 6, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 474, column: 6)
!5196 = !DILocation(line: 474, column: 11, scope: !5195)
!5197 = !DILocation(line: 474, column: 6, scope: !5076)
!5198 = !DILocation(line: 474, column: 27, scope: !5195)
!5199 = !DILocation(line: 475, column: 6, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 475, column: 6)
!5201 = !DILocation(line: 475, column: 11, scope: !5200)
!5202 = !DILocation(line: 475, column: 6, scope: !5076)
!5203 = !DILocation(line: 475, column: 32, scope: !5200)
!5204 = !DILocation(line: 477, column: 50, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5076, file: !80, line: 477, column: 6)
!5206 = !{i8 0, i8 2}
!5207 = !DILocation(line: 477, column: 6, scope: !5076)
!5208 = !DILocation(line: 478, column: 3, scope: !5205)
!5209 = !DILocation(line: 478, column: 3, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5211, file: !80, line: 478, column: 3)
!5211 = distinct !DILexicalBlock(scope: !5205, file: !80, line: 478, column: 3)
!5212 = !{i32 -2141703207}
!5213 = !DILocation(line: 478, column: 3, scope: !5211)
!5214 = !DILocation(line: 480, column: 3, scope: !5205)
!5215 = !DILocation(line: 480, column: 3, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5205, file: !80, line: 480, column: 3)
!5217 = !DILocation(line: 480, column: 3, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5216, file: !80, line: 480, column: 3)
!5219 = !DILocation(line: 480, column: 3, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5216, file: !80, line: 480, column: 3)
!5221 = !{i64 2153264292, i64 2153264321, i64 2153264367, i64 2153264425, i64 2153264479, i64 2153264533, i64 2153264588, i64 2153264619}
!5222 = !DILocation(line: 483, column: 2, scope: !5076)
!5223 = !DILocation(line: 484, column: 1, scope: !5076)
!5224 = !DISubprogram(name: "kmalloc_trace", scope: !80, file: !80, line: 525, type: !5225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!90, !5227, !91, !1049}
!5227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5228, size: 64)
!5228 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5229, line: 325, flags: DIFlagFwdDecl)
!5229 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5230 = distinct !DISubprogram(name: "kmalloc_type", scope: !80, file: !80, line: 401, type: !5231, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5233)
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!79, !91, !94}
!5233 = !{!5234, !5235}
!5234 = !DILocalVariable(name: "flags", arg: 1, scope: !5230, file: !80, line: 401, type: !91)
!5235 = !DILocalVariable(name: "caller", arg: 2, scope: !5230, file: !80, line: 401, type: !94)
!5236 = !DILocation(line: 401, column: 67, scope: !5230)
!5237 = !DILocation(line: 401, column: 88, scope: !5230)
!5238 = !DILocation(line: 407, column: 6, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5230, file: !80, line: 407, column: 6)
!5240 = !DILocation(line: 407, column: 6, scope: !5230)
!5241 = !DILocation(line: 413, column: 3, scope: !5239)
!5242 = !DILocation(line: 423, column: 38, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5230, file: !80, line: 423, column: 6)
!5244 = !DILocation(line: 423, column: 44, scope: !5243)
!5245 = !DILocation(line: 423, column: 6, scope: !5230)
!5246 = !DILocation(line: 424, column: 3, scope: !5243)
!5247 = !DILocation(line: 426, column: 3, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5230, file: !80, line: 425, column: 6)
!5249 = !DILocation(line: 429, column: 1, scope: !5230)
!5250 = !DISubprogram(name: "__kmalloc", scope: !80, file: !80, line: 488, type: !4235, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5251 = !DISubprogram(name: "__compiletime_assert_245", scope: !80, file: !80, line: 478, type: !2108, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5252 = distinct !DISubprogram(name: "do_insert_tree", scope: !3, file: !3, line: 335, type: !4371, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5253)
!5253 = !{!5254, !5255, !5256, !5257, !5258, !5259, !5260, !5261, !5262, !5263, !5264, !5265}
!5254 = !DILocalVariable(name: "info", arg: 1, scope: !5252, file: !3, line: 335, type: !338)
!5255 = !DILocalVariable(name: "dquot", arg: 2, scope: !5252, file: !3, line: 335, type: !2565)
!5256 = !DILocalVariable(name: "blks", arg: 3, scope: !5252, file: !3, line: 336, type: !4373)
!5257 = !DILocalVariable(name: "depth", arg: 4, scope: !5252, file: !3, line: 336, type: !118)
!5258 = !DILocalVariable(name: "buf", scope: !5252, file: !3, line: 338, type: !492)
!5259 = !DILocalVariable(name: "ret", scope: !5252, file: !3, line: 339, type: !118)
!5260 = !DILocalVariable(name: "newson", scope: !5252, file: !3, line: 339, type: !118)
!5261 = !DILocalVariable(name: "newact", scope: !5252, file: !3, line: 339, type: !118)
!5262 = !DILocalVariable(name: "ref", scope: !5252, file: !3, line: 340, type: !97)
!5263 = !DILocalVariable(name: "newblk", scope: !5252, file: !3, line: 341, type: !119)
!5264 = !DILocalVariable(name: "i", scope: !5252, file: !3, line: 342, type: !118)
!5265 = !DILabel(scope: !5252, name: "out_buf", file: !3, line: 411)
!5266 = !DILocation(line: 335, column: 52, scope: !5252)
!5267 = !DILocation(line: 335, column: 72, scope: !5252)
!5268 = !DILocation(line: 336, column: 12, scope: !5252)
!5269 = !DILocation(line: 336, column: 22, scope: !5252)
!5270 = !DILocation(line: 338, column: 2, scope: !5252)
!5271 = !DILocation(line: 338, column: 8, scope: !5252)
!5272 = !DILocation(line: 338, column: 22, scope: !5252)
!5273 = !DILocation(line: 338, column: 28, scope: !5252)
!5274 = !DILocation(line: 338, column: 14, scope: !5252)
!5275 = !DILocation(line: 339, column: 2, scope: !5252)
!5276 = !DILocation(line: 339, column: 6, scope: !5252)
!5277 = !DILocation(line: 339, column: 15, scope: !5252)
!5278 = !DILocation(line: 339, column: 27, scope: !5252)
!5279 = !DILocation(line: 340, column: 2, scope: !5252)
!5280 = !DILocation(line: 340, column: 10, scope: !5252)
!5281 = !DILocation(line: 341, column: 2, scope: !5252)
!5282 = !DILocation(line: 341, column: 7, scope: !5252)
!5283 = !DILocation(line: 342, column: 2, scope: !5252)
!5284 = !DILocation(line: 342, column: 6, scope: !5252)
!5285 = !DILocation(line: 344, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 344, column: 6)
!5287 = !DILocation(line: 344, column: 6, scope: !5252)
!5288 = !DILocation(line: 345, column: 3, scope: !5286)
!5289 = !DILocation(line: 346, column: 7, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 346, column: 6)
!5291 = !DILocation(line: 346, column: 12, scope: !5290)
!5292 = !DILocation(line: 346, column: 6, scope: !5252)
!5293 = !DILocation(line: 347, column: 24, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 346, column: 20)
!5295 = !DILocation(line: 347, column: 9, scope: !5294)
!5296 = !DILocation(line: 347, column: 7, scope: !5294)
!5297 = !DILocation(line: 348, column: 7, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 348, column: 7)
!5299 = !DILocation(line: 348, column: 11, scope: !5298)
!5300 = !DILocation(line: 348, column: 7, scope: !5294)
!5301 = !DILocation(line: 349, column: 4, scope: !5298)
!5302 = !DILocation(line: 350, column: 10, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 350, column: 3)
!5304 = !DILocation(line: 350, column: 8, scope: !5303)
!5305 = !DILocation(line: 350, column: 15, scope: !5306)
!5306 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 350, column: 3)
!5307 = !DILocation(line: 350, column: 19, scope: !5306)
!5308 = !DILocation(line: 350, column: 17, scope: !5306)
!5309 = !DILocation(line: 350, column: 3, scope: !5303)
!5310 = !DILocation(line: 351, column: 8, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5306, file: !3, line: 351, column: 8)
!5312 = !DILocation(line: 351, column: 15, scope: !5311)
!5313 = !DILocation(line: 351, column: 20, scope: !5311)
!5314 = !DILocation(line: 351, column: 12, scope: !5311)
!5315 = !DILocation(line: 351, column: 8, scope: !5306)
!5316 = !DILocation(line: 352, column: 5, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 351, column: 24)
!5318 = !DILocation(line: 355, column: 9, scope: !5317)
!5319 = !DILocation(line: 356, column: 5, scope: !5317)
!5320 = !DILocation(line: 351, column: 21, scope: !5311)
!5321 = !DILocation(line: 350, column: 27, scope: !5306)
!5322 = !DILocation(line: 350, column: 3, scope: !5306)
!5323 = distinct !{!5323, !5309, !5324, !4133, !4134}
!5324 = !DILocation(line: 357, column: 4, scope: !5303)
!5325 = !DILocation(line: 358, column: 17, scope: !5294)
!5326 = !DILocation(line: 358, column: 3, scope: !5294)
!5327 = !DILocation(line: 358, column: 8, scope: !5294)
!5328 = !DILocation(line: 358, column: 15, scope: !5294)
!5329 = !DILocation(line: 359, column: 10, scope: !5294)
!5330 = !DILocation(line: 359, column: 18, scope: !5294)
!5331 = !DILocation(line: 359, column: 24, scope: !5294)
!5332 = !DILocation(line: 359, column: 3, scope: !5294)
!5333 = !DILocation(line: 360, column: 10, scope: !5294)
!5334 = !DILocation(line: 361, column: 2, scope: !5294)
!5335 = !DILocation(line: 362, column: 18, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 361, column: 9)
!5337 = !DILocation(line: 362, column: 24, scope: !5336)
!5338 = !DILocation(line: 362, column: 29, scope: !5336)
!5339 = !DILocation(line: 362, column: 37, scope: !5336)
!5340 = !DILocation(line: 362, column: 9, scope: !5336)
!5341 = !DILocation(line: 362, column: 7, scope: !5336)
!5342 = !DILocation(line: 363, column: 7, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 363, column: 7)
!5344 = !DILocation(line: 363, column: 11, scope: !5343)
!5345 = !DILocation(line: 363, column: 7, scope: !5336)
!5346 = !DILocation(line: 364, column: 4, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5343, file: !3, line: 363, column: 16)
!5348 = !DILocation(line: 366, column: 4, scope: !5347)
!5349 = !DILocation(line: 369, column: 18, scope: !5252)
!5350 = !DILocation(line: 369, column: 6, scope: !5252)
!5351 = !DILocation(line: 370, column: 11, scope: !5252)
!5352 = !DILocation(line: 370, column: 9, scope: !5252)
!5353 = !DILocation(line: 371, column: 23, scope: !5252)
!5354 = !DILocation(line: 371, column: 30, scope: !5252)
!5355 = !DILocation(line: 371, column: 46, scope: !5252)
!5356 = !DILocation(line: 372, column: 9, scope: !5252)
!5357 = !DILocation(line: 372, column: 15, scope: !5252)
!5358 = !DILocation(line: 372, column: 26, scope: !5252)
!5359 = !DILocation(line: 371, column: 8, scope: !5252)
!5360 = !DILocation(line: 371, column: 6, scope: !5252)
!5361 = !DILocation(line: 373, column: 6, scope: !5362)
!5362 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 373, column: 6)
!5363 = !DILocation(line: 373, column: 6, scope: !5252)
!5364 = !DILocation(line: 374, column: 3, scope: !5362)
!5365 = !DILocation(line: 375, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 375, column: 6)
!5367 = !DILocation(line: 375, column: 6, scope: !5252)
!5368 = !DILocation(line: 376, column: 10, scope: !5369)
!5369 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 375, column: 15)
!5370 = !DILocation(line: 377, column: 2, scope: !5369)
!5371 = !DILocation(line: 378, column: 10, scope: !5372)
!5372 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 378, column: 3)
!5373 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 377, column: 9)
!5374 = !DILocation(line: 378, column: 8, scope: !5372)
!5375 = !DILocation(line: 378, column: 15, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5372, file: !3, line: 378, column: 3)
!5377 = !DILocation(line: 378, column: 20, scope: !5376)
!5378 = !DILocation(line: 378, column: 17, scope: !5376)
!5379 = !DILocation(line: 378, column: 3, scope: !5372)
!5380 = !DILocation(line: 379, column: 8, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5376, file: !3, line: 379, column: 8)
!5382 = !DILocation(line: 379, column: 18, scope: !5381)
!5383 = !DILocation(line: 379, column: 23, scope: !5381)
!5384 = !DILocation(line: 379, column: 15, scope: !5381)
!5385 = !DILocation(line: 379, column: 8, scope: !5376)
!5386 = !DILocation(line: 380, column: 5, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 379, column: 27)
!5388 = !DILocation(line: 384, column: 9, scope: !5387)
!5389 = !DILocation(line: 385, column: 5, scope: !5387)
!5390 = !DILocation(line: 379, column: 24, scope: !5381)
!5391 = !DILocation(line: 378, column: 28, scope: !5376)
!5392 = !DILocation(line: 378, column: 3, scope: !5376)
!5393 = distinct !{!5393, !5379, !5394, !4133, !4134}
!5394 = !DILocation(line: 386, column: 4, scope: !5372)
!5395 = !DILocation(line: 388, column: 20, scope: !5252)
!5396 = !DILocation(line: 388, column: 2, scope: !5252)
!5397 = !DILocation(line: 388, column: 7, scope: !5252)
!5398 = !DILocation(line: 388, column: 13, scope: !5252)
!5399 = !DILocation(line: 388, column: 18, scope: !5252)
!5400 = !DILocation(line: 389, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 389, column: 6)
!5402 = !DILocation(line: 389, column: 15, scope: !5401)
!5403 = !DILocation(line: 389, column: 21, scope: !5401)
!5404 = !DILocation(line: 389, column: 37, scope: !5401)
!5405 = !DILocation(line: 389, column: 12, scope: !5401)
!5406 = !DILocation(line: 389, column: 6, scope: !5252)
!5407 = !DILocation(line: 391, column: 7, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 391, column: 7)
!5409 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 389, column: 42)
!5410 = !DILocation(line: 391, column: 7, scope: !5409)
!5411 = !DILocation(line: 392, column: 4, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 391, column: 15)
!5413 = !DILocation(line: 396, column: 8, scope: !5412)
!5414 = !DILocation(line: 397, column: 4, scope: !5412)
!5415 = !DILocation(line: 400, column: 39, scope: !5409)
!5416 = !DILocation(line: 400, column: 45, scope: !5409)
!5417 = !DILocation(line: 400, column: 21, scope: !5409)
!5418 = !DILocation(line: 400, column: 3, scope: !5409)
!5419 = !DILocation(line: 400, column: 8, scope: !5409)
!5420 = !DILocation(line: 400, column: 14, scope: !5409)
!5421 = !DILocation(line: 400, column: 19, scope: !5409)
!5422 = !DILocation(line: 401, column: 2, scope: !5409)
!5423 = !DILocation(line: 402, column: 24, scope: !5424)
!5424 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 401, column: 9)
!5425 = !DILocation(line: 402, column: 30, scope: !5424)
!5426 = !DILocation(line: 402, column: 37, scope: !5424)
!5427 = !DILocation(line: 402, column: 43, scope: !5424)
!5428 = !DILocation(line: 402, column: 49, scope: !5424)
!5429 = !DILocation(line: 402, column: 9, scope: !5424)
!5430 = !DILocation(line: 402, column: 7, scope: !5424)
!5431 = !DILocation(line: 404, column: 6, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 404, column: 6)
!5433 = !DILocation(line: 404, column: 13, scope: !5432)
!5434 = !DILocation(line: 404, column: 16, scope: !5432)
!5435 = !DILocation(line: 404, column: 20, scope: !5432)
!5436 = !DILocation(line: 404, column: 6, scope: !5252)
!5437 = !DILocation(line: 406, column: 7, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 404, column: 26)
!5439 = !DILocation(line: 405, column: 3, scope: !5438)
!5440 = !DILocation(line: 405, column: 17, scope: !5438)
!5441 = !DILocation(line: 405, column: 23, scope: !5438)
!5442 = !DILocation(line: 405, column: 30, scope: !5438)
!5443 = !DILocation(line: 405, column: 37, scope: !5438)
!5444 = !DILocation(line: 405, column: 7, scope: !5438)
!5445 = !DILocation(line: 405, column: 45, scope: !5438)
!5446 = !DILocation(line: 407, column: 19, scope: !5438)
!5447 = !DILocation(line: 407, column: 25, scope: !5438)
!5448 = !DILocation(line: 407, column: 30, scope: !5438)
!5449 = !DILocation(line: 407, column: 38, scope: !5438)
!5450 = !DILocation(line: 407, column: 9, scope: !5438)
!5451 = !DILocation(line: 407, column: 7, scope: !5438)
!5452 = !DILocation(line: 408, column: 2, scope: !5438)
!5453 = !DILocation(line: 408, column: 13, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 408, column: 13)
!5455 = !DILocation(line: 408, column: 20, scope: !5454)
!5456 = !DILocation(line: 408, column: 23, scope: !5454)
!5457 = !DILocation(line: 408, column: 27, scope: !5454)
!5458 = !DILocation(line: 408, column: 13, scope: !5432)
!5459 = !DILocation(line: 409, column: 18, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 408, column: 32)
!5461 = !DILocation(line: 409, column: 24, scope: !5460)
!5462 = !DILocation(line: 409, column: 29, scope: !5460)
!5463 = !DILocation(line: 409, column: 34, scope: !5460)
!5464 = !DILocation(line: 409, column: 3, scope: !5460)
!5465 = !DILocation(line: 410, column: 2, scope: !5460)
!5466 = !DILocation(line: 404, column: 23, scope: !5432)
!5467 = !DILocation(line: 411, column: 1, scope: !5252)
!5468 = !DILocation(line: 412, column: 8, scope: !5252)
!5469 = !DILocation(line: 412, column: 2, scope: !5252)
!5470 = !DILocation(line: 413, column: 9, scope: !5252)
!5471 = !DILocation(line: 413, column: 2, scope: !5252)
!5472 = !DILocation(line: 414, column: 1, scope: !5252)
!5473 = distinct !DISubprogram(name: "get_free_dqblk", scope: !3, file: !3, line: 115, type: !5474, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5476)
!5474 = !DISubroutineType(types: !5475)
!5475 = !{!118, !338}
!5476 = !{!5477, !5478, !5479, !5480, !5481, !5482}
!5477 = !DILocalVariable(name: "info", arg: 1, scope: !5473, file: !3, line: 115, type: !338)
!5478 = !DILocalVariable(name: "buf", scope: !5473, file: !3, line: 117, type: !492)
!5479 = !DILocalVariable(name: "dh", scope: !5473, file: !3, line: 118, type: !102)
!5480 = !DILocalVariable(name: "ret", scope: !5473, file: !3, line: 119, type: !118)
!5481 = !DILocalVariable(name: "blk", scope: !5473, file: !3, line: 119, type: !118)
!5482 = !DILabel(scope: !5473, name: "out_buf", file: !3, line: 143)
!5483 = !DILocation(line: 115, column: 52, scope: !5473)
!5484 = !DILocation(line: 117, column: 2, scope: !5473)
!5485 = !DILocation(line: 117, column: 8, scope: !5473)
!5486 = !DILocation(line: 117, column: 22, scope: !5473)
!5487 = !DILocation(line: 117, column: 28, scope: !5473)
!5488 = !DILocation(line: 117, column: 14, scope: !5473)
!5489 = !DILocation(line: 118, column: 2, scope: !5473)
!5490 = !DILocation(line: 118, column: 29, scope: !5473)
!5491 = !DILocation(line: 118, column: 63, scope: !5473)
!5492 = !DILocation(line: 119, column: 2, scope: !5473)
!5493 = !DILocation(line: 119, column: 6, scope: !5473)
!5494 = !DILocation(line: 119, column: 11, scope: !5473)
!5495 = !DILocation(line: 121, column: 7, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 121, column: 6)
!5497 = !DILocation(line: 121, column: 6, scope: !5473)
!5498 = !DILocation(line: 122, column: 3, scope: !5496)
!5499 = !DILocation(line: 123, column: 6, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 123, column: 6)
!5501 = !DILocation(line: 123, column: 12, scope: !5500)
!5502 = !DILocation(line: 123, column: 6, scope: !5473)
!5503 = !DILocation(line: 124, column: 9, scope: !5504)
!5504 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 123, column: 26)
!5505 = !DILocation(line: 124, column: 15, scope: !5504)
!5506 = !DILocation(line: 124, column: 7, scope: !5504)
!5507 = !DILocation(line: 125, column: 18, scope: !5504)
!5508 = !DILocation(line: 125, column: 24, scope: !5504)
!5509 = !DILocation(line: 125, column: 29, scope: !5504)
!5510 = !DILocation(line: 125, column: 9, scope: !5504)
!5511 = !DILocation(line: 125, column: 7, scope: !5504)
!5512 = !DILocation(line: 126, column: 7, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 126, column: 7)
!5514 = !DILocation(line: 126, column: 11, scope: !5513)
!5515 = !DILocation(line: 126, column: 7, scope: !5504)
!5516 = !DILocation(line: 127, column: 4, scope: !5513)
!5517 = !DILocation(line: 128, column: 34, scope: !5504)
!5518 = !DILocation(line: 128, column: 40, scope: !5504)
!5519 = !DILocation(line: 128, column: 9, scope: !5504)
!5520 = !DILocation(line: 128, column: 7, scope: !5504)
!5521 = !DILocation(line: 129, column: 7, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 129, column: 7)
!5523 = !DILocation(line: 129, column: 7, scope: !5504)
!5524 = !DILocation(line: 130, column: 4, scope: !5522)
!5525 = !DILocation(line: 131, column: 24, scope: !5504)
!5526 = !DILocation(line: 131, column: 3, scope: !5504)
!5527 = !DILocation(line: 131, column: 9, scope: !5504)
!5528 = !DILocation(line: 131, column: 22, scope: !5504)
!5529 = !DILocation(line: 132, column: 2, scope: !5504)
!5530 = !DILocation(line: 134, column: 10, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5500, file: !3, line: 133, column: 7)
!5532 = !DILocation(line: 134, column: 18, scope: !5531)
!5533 = !DILocation(line: 134, column: 24, scope: !5531)
!5534 = !DILocation(line: 134, column: 3, scope: !5531)
!5535 = !DILocation(line: 136, column: 19, scope: !5531)
!5536 = !DILocation(line: 136, column: 25, scope: !5531)
!5537 = !DILocation(line: 136, column: 31, scope: !5531)
!5538 = !DILocation(line: 136, column: 43, scope: !5531)
!5539 = !DILocation(line: 136, column: 9, scope: !5531)
!5540 = !DILocation(line: 136, column: 7, scope: !5531)
!5541 = !DILocation(line: 137, column: 7, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5531, file: !3, line: 137, column: 7)
!5543 = !DILocation(line: 137, column: 11, scope: !5542)
!5544 = !DILocation(line: 137, column: 7, scope: !5531)
!5545 = !DILocation(line: 138, column: 4, scope: !5542)
!5546 = !DILocation(line: 139, column: 9, scope: !5531)
!5547 = !DILocation(line: 139, column: 15, scope: !5531)
!5548 = !DILocation(line: 139, column: 25, scope: !5531)
!5549 = !DILocation(line: 139, column: 7, scope: !5531)
!5550 = !DILocation(line: 141, column: 18, scope: !5473)
!5551 = !DILocation(line: 141, column: 24, scope: !5473)
!5552 = !DILocation(line: 141, column: 32, scope: !5473)
!5553 = !DILocation(line: 141, column: 38, scope: !5473)
!5554 = !DILocation(line: 141, column: 2, scope: !5473)
!5555 = !DILocation(line: 142, column: 8, scope: !5473)
!5556 = !DILocation(line: 142, column: 6, scope: !5473)
!5557 = !DILocation(line: 142, column: 2, scope: !5473)
!5558 = !DILocation(line: 143, column: 1, scope: !5473)
!5559 = !DILocation(line: 144, column: 8, scope: !5473)
!5560 = !DILocation(line: 144, column: 2, scope: !5473)
!5561 = !DILocation(line: 145, column: 9, scope: !5473)
!5562 = !DILocation(line: 145, column: 2, scope: !5473)
!5563 = !DILocation(line: 146, column: 1, scope: !5473)
!5564 = distinct !DISubprogram(name: "read_blk", scope: !3, file: !3, line: 56, type: !5565, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5567)
!5565 = !DISubroutineType(types: !5566)
!5566 = !{!1037, !338, !119, !492}
!5567 = !{!5568, !5569, !5570, !5571}
!5568 = !DILocalVariable(name: "info", arg: 1, scope: !5564, file: !3, line: 56, type: !338)
!5569 = !DILocalVariable(name: "blk", arg: 2, scope: !5564, file: !3, line: 56, type: !119)
!5570 = !DILocalVariable(name: "buf", arg: 3, scope: !5564, file: !3, line: 56, type: !492)
!5571 = !DILocalVariable(name: "sb", scope: !5564, file: !3, line: 58, type: !343)
!5572 = !DILocation(line: 56, column: 50, scope: !5564)
!5573 = !DILocation(line: 56, column: 61, scope: !5564)
!5574 = !DILocation(line: 56, column: 72, scope: !5564)
!5575 = !DILocation(line: 58, column: 2, scope: !5564)
!5576 = !DILocation(line: 58, column: 22, scope: !5564)
!5577 = !DILocation(line: 58, column: 27, scope: !5564)
!5578 = !DILocation(line: 58, column: 33, scope: !5564)
!5579 = !DILocation(line: 60, column: 9, scope: !5564)
!5580 = !DILocation(line: 60, column: 17, scope: !5564)
!5581 = !DILocation(line: 60, column: 23, scope: !5564)
!5582 = !DILocation(line: 60, column: 2, scope: !5564)
!5583 = !DILocation(line: 61, column: 9, scope: !5564)
!5584 = !DILocation(line: 61, column: 13, scope: !5564)
!5585 = !DILocation(line: 61, column: 19, scope: !5564)
!5586 = !DILocation(line: 61, column: 30, scope: !5564)
!5587 = !DILocation(line: 61, column: 34, scope: !5564)
!5588 = !DILocation(line: 61, column: 40, scope: !5564)
!5589 = !DILocation(line: 61, column: 50, scope: !5564)
!5590 = !DILocation(line: 62, column: 9, scope: !5564)
!5591 = !DILocation(line: 62, column: 15, scope: !5564)
!5592 = !DILocation(line: 62, column: 38, scope: !5564)
!5593 = !DILocation(line: 62, column: 30, scope: !5564)
!5594 = !DILocation(line: 62, column: 45, scope: !5564)
!5595 = !DILocation(line: 62, column: 51, scope: !5564)
!5596 = !DILocation(line: 62, column: 42, scope: !5564)
!5597 = !DILocation(line: 63, column: 1, scope: !5564)
!5598 = !DILocation(line: 61, column: 2, scope: !5564)
!5599 = distinct !DISubprogram(name: "get_index", scope: !3, file: !3, line: 42, type: !5600, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5602)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!118, !338, !2577, !118}
!5602 = !{!5603, !5604, !5605, !5606}
!5603 = !DILocalVariable(name: "info", arg: 1, scope: !5599, file: !3, line: 42, type: !338)
!5604 = !DILocalVariable(name: "qid", arg: 2, scope: !5599, file: !3, line: 42, type: !2577)
!5605 = !DILocalVariable(name: "depth", arg: 3, scope: !5599, file: !3, line: 42, type: !118)
!5606 = !DILocalVariable(name: "id", scope: !5599, file: !3, line: 44, type: !4755)
!5607 = !DILocation(line: 42, column: 47, scope: !5599)
!5608 = !DILocation(line: 42, column: 65, scope: !5599)
!5609 = !DILocation(line: 42, column: 74, scope: !5599)
!5610 = !DILocation(line: 44, column: 2, scope: !5599)
!5611 = !DILocation(line: 44, column: 8, scope: !5599)
!5612 = !DILocation(line: 44, column: 13, scope: !5599)
!5613 = !DILocation(line: 46, column: 21, scope: !5599)
!5614 = !DILocation(line: 46, column: 27, scope: !5599)
!5615 = !DILocation(line: 46, column: 31, scope: !5599)
!5616 = !DILocation(line: 46, column: 9, scope: !5599)
!5617 = !DILocation(line: 47, column: 1, scope: !5599)
!5618 = !DILocation(line: 46, column: 2, scope: !5599)
!5619 = distinct !DISubprogram(name: "do_check_range", scope: !3, file: !3, line: 80, type: !5620, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5622)
!5620 = !DISubroutineType(types: !5621)
!5621 = !{!118, !343, !366, !119, !119, !119}
!5622 = !{!5623, !5624, !5625, !5626, !5627}
!5623 = !DILocalVariable(name: "sb", arg: 1, scope: !5619, file: !3, line: 80, type: !343)
!5624 = !DILocalVariable(name: "val_name", arg: 2, scope: !5619, file: !3, line: 80, type: !366)
!5625 = !DILocalVariable(name: "val", arg: 3, scope: !5619, file: !3, line: 81, type: !119)
!5626 = !DILocalVariable(name: "min_val", arg: 4, scope: !5619, file: !3, line: 81, type: !119)
!5627 = !DILocalVariable(name: "max_val", arg: 5, scope: !5619, file: !3, line: 81, type: !119)
!5628 = !DILocation(line: 80, column: 54, scope: !5619)
!5629 = !DILocation(line: 80, column: 70, scope: !5619)
!5630 = !DILocation(line: 81, column: 11, scope: !5619)
!5631 = !DILocation(line: 81, column: 21, scope: !5619)
!5632 = !DILocation(line: 81, column: 35, scope: !5619)
!5633 = !DILocation(line: 83, column: 6, scope: !5634)
!5634 = distinct !DILexicalBlock(scope: !5619, file: !3, line: 83, column: 6)
!5635 = !DILocation(line: 83, column: 12, scope: !5634)
!5636 = !DILocation(line: 83, column: 10, scope: !5634)
!5637 = !DILocation(line: 83, column: 20, scope: !5634)
!5638 = !DILocation(line: 83, column: 23, scope: !5634)
!5639 = !DILocation(line: 83, column: 29, scope: !5634)
!5640 = !DILocation(line: 83, column: 27, scope: !5634)
!5641 = !DILocation(line: 83, column: 6, scope: !5619)
!5642 = !DILocation(line: 84, column: 3, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5634, file: !3, line: 83, column: 38)
!5644 = !DILocation(line: 86, column: 3, scope: !5643)
!5645 = !DILocation(line: 89, column: 2, scope: !5619)
!5646 = !DILocation(line: 90, column: 1, scope: !5619)
!5647 = distinct !DISubprogram(name: "find_free_dqentry", scope: !3, file: !3, line: 259, type: !5648, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5650)
!5648 = !DISubroutineType(types: !5649)
!5649 = !{!119, !338, !2565, !1904}
!5650 = !{!5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659}
!5651 = !DILocalVariable(name: "info", arg: 1, scope: !5647, file: !3, line: 259, type: !338)
!5652 = !DILocalVariable(name: "dquot", arg: 2, scope: !5647, file: !3, line: 260, type: !2565)
!5653 = !DILocalVariable(name: "err", arg: 3, scope: !5647, file: !3, line: 260, type: !1904)
!5654 = !DILocalVariable(name: "blk", scope: !5647, file: !3, line: 262, type: !119)
!5655 = !DILocalVariable(name: "i", scope: !5647, file: !3, line: 262, type: !119)
!5656 = !DILocalVariable(name: "dh", scope: !5647, file: !3, line: 263, type: !102)
!5657 = !DILocalVariable(name: "buf", scope: !5647, file: !3, line: 264, type: !492)
!5658 = !DILocalVariable(name: "ddquot", scope: !5647, file: !3, line: 265, type: !492)
!5659 = !DILabel(scope: !5647, name: "out_buf", file: !3, line: 329)
!5660 = !DILocation(line: 259, column: 56, scope: !5647)
!5661 = !DILocation(line: 260, column: 24, scope: !5647)
!5662 = !DILocation(line: 260, column: 36, scope: !5647)
!5663 = !DILocation(line: 262, column: 2, scope: !5647)
!5664 = !DILocation(line: 262, column: 7, scope: !5647)
!5665 = !DILocation(line: 262, column: 12, scope: !5647)
!5666 = !DILocation(line: 263, column: 2, scope: !5647)
!5667 = !DILocation(line: 263, column: 29, scope: !5647)
!5668 = !DILocation(line: 264, column: 2, scope: !5647)
!5669 = !DILocation(line: 264, column: 8, scope: !5647)
!5670 = !DILocation(line: 264, column: 22, scope: !5647)
!5671 = !DILocation(line: 264, column: 28, scope: !5647)
!5672 = !DILocation(line: 264, column: 14, scope: !5647)
!5673 = !DILocation(line: 265, column: 2, scope: !5647)
!5674 = !DILocation(line: 265, column: 8, scope: !5647)
!5675 = !DILocation(line: 267, column: 3, scope: !5647)
!5676 = !DILocation(line: 267, column: 7, scope: !5647)
!5677 = !DILocation(line: 268, column: 7, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 268, column: 6)
!5679 = !DILocation(line: 268, column: 6, scope: !5647)
!5680 = !DILocation(line: 269, column: 4, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 268, column: 12)
!5682 = !DILocation(line: 269, column: 8, scope: !5681)
!5683 = !DILocation(line: 270, column: 3, scope: !5681)
!5684 = !DILocation(line: 272, column: 36, scope: !5647)
!5685 = !DILocation(line: 272, column: 5, scope: !5647)
!5686 = !DILocation(line: 273, column: 6, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 273, column: 6)
!5688 = !DILocation(line: 273, column: 12, scope: !5687)
!5689 = !DILocation(line: 273, column: 6, scope: !5647)
!5690 = !DILocation(line: 274, column: 9, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 273, column: 28)
!5692 = !DILocation(line: 274, column: 15, scope: !5691)
!5693 = !DILocation(line: 274, column: 7, scope: !5691)
!5694 = !DILocation(line: 275, column: 19, scope: !5691)
!5695 = !DILocation(line: 275, column: 25, scope: !5691)
!5696 = !DILocation(line: 275, column: 30, scope: !5691)
!5697 = !DILocation(line: 275, column: 10, scope: !5691)
!5698 = !DILocation(line: 275, column: 4, scope: !5691)
!5699 = !DILocation(line: 275, column: 8, scope: !5691)
!5700 = !DILocation(line: 276, column: 8, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 276, column: 7)
!5702 = !DILocation(line: 276, column: 7, scope: !5701)
!5703 = !DILocation(line: 276, column: 12, scope: !5701)
!5704 = !DILocation(line: 276, column: 7, scope: !5691)
!5705 = !DILocation(line: 277, column: 4, scope: !5701)
!5706 = !DILocation(line: 278, column: 35, scope: !5691)
!5707 = !DILocation(line: 278, column: 41, scope: !5691)
!5708 = !DILocation(line: 278, column: 10, scope: !5691)
!5709 = !DILocation(line: 278, column: 4, scope: !5691)
!5710 = !DILocation(line: 278, column: 8, scope: !5691)
!5711 = !DILocation(line: 279, column: 8, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 279, column: 7)
!5713 = !DILocation(line: 279, column: 7, scope: !5712)
!5714 = !DILocation(line: 279, column: 7, scope: !5691)
!5715 = !DILocation(line: 280, column: 4, scope: !5712)
!5716 = !DILocation(line: 281, column: 2, scope: !5691)
!5717 = !DILocation(line: 282, column: 24, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 281, column: 9)
!5719 = !DILocation(line: 282, column: 9, scope: !5718)
!5720 = !DILocation(line: 282, column: 7, scope: !5718)
!5721 = !DILocation(line: 283, column: 12, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 283, column: 7)
!5723 = !DILocation(line: 283, column: 16, scope: !5722)
!5724 = !DILocation(line: 283, column: 7, scope: !5718)
!5725 = !DILocation(line: 284, column: 11, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 283, column: 21)
!5727 = !DILocation(line: 284, column: 5, scope: !5726)
!5728 = !DILocation(line: 284, column: 9, scope: !5726)
!5729 = !DILocation(line: 285, column: 10, scope: !5726)
!5730 = !DILocation(line: 285, column: 4, scope: !5726)
!5731 = !DILocation(line: 286, column: 4, scope: !5726)
!5732 = !DILocation(line: 288, column: 10, scope: !5718)
!5733 = !DILocation(line: 288, column: 18, scope: !5718)
!5734 = !DILocation(line: 288, column: 24, scope: !5718)
!5735 = !DILocation(line: 288, column: 3, scope: !5718)
!5736 = !DILocation(line: 291, column: 26, scope: !5718)
!5737 = !DILocation(line: 291, column: 3, scope: !5718)
!5738 = !DILocation(line: 291, column: 9, scope: !5718)
!5739 = !DILocation(line: 291, column: 24, scope: !5718)
!5740 = !DILocation(line: 292, column: 19, scope: !5718)
!5741 = !DILocation(line: 292, column: 26, scope: !5718)
!5742 = !DILocation(line: 292, column: 33, scope: !5718)
!5743 = !DILocation(line: 292, column: 40, scope: !5718)
!5744 = !DILocation(line: 292, column: 46, scope: !5718)
!5745 = !DILocation(line: 292, column: 3, scope: !5718)
!5746 = !DILocation(line: 295, column: 6, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 295, column: 6)
!5748 = !DILocation(line: 295, column: 36, scope: !5747)
!5749 = !DILocation(line: 295, column: 62, scope: !5747)
!5750 = !DILocation(line: 295, column: 43, scope: !5747)
!5751 = !DILocation(line: 295, column: 40, scope: !5747)
!5752 = !DILocation(line: 295, column: 6, scope: !5647)
!5753 = !DILocation(line: 296, column: 30, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 295, column: 69)
!5755 = !DILocation(line: 296, column: 36, scope: !5754)
!5756 = !DILocation(line: 296, column: 41, scope: !5754)
!5757 = !DILocation(line: 296, column: 10, scope: !5754)
!5758 = !DILocation(line: 296, column: 4, scope: !5754)
!5759 = !DILocation(line: 296, column: 8, scope: !5754)
!5760 = !DILocation(line: 297, column: 8, scope: !5761)
!5761 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 297, column: 7)
!5762 = !DILocation(line: 297, column: 7, scope: !5761)
!5763 = !DILocation(line: 297, column: 12, scope: !5761)
!5764 = !DILocation(line: 297, column: 7, scope: !5754)
!5765 = !DILocation(line: 298, column: 4, scope: !5766)
!5766 = distinct !DILexicalBlock(scope: !5761, file: !3, line: 297, column: 17)
!5767 = !DILocation(line: 300, column: 4, scope: !5766)
!5768 = !DILocation(line: 302, column: 2, scope: !5754)
!5769 = !DILocation(line: 303, column: 16, scope: !5647)
!5770 = !DILocation(line: 303, column: 20, scope: !5647)
!5771 = !DILocation(line: 303, column: 2, scope: !5647)
!5772 = !DILocation(line: 305, column: 11, scope: !5647)
!5773 = !DILocation(line: 305, column: 15, scope: !5647)
!5774 = !DILocation(line: 305, column: 9, scope: !5647)
!5775 = !DILocation(line: 306, column: 9, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 306, column: 2)
!5777 = !DILocation(line: 306, column: 7, scope: !5776)
!5778 = !DILocation(line: 306, column: 14, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 306, column: 2)
!5780 = !DILocation(line: 306, column: 37, scope: !5779)
!5781 = !DILocation(line: 306, column: 18, scope: !5779)
!5782 = !DILocation(line: 306, column: 16, scope: !5779)
!5783 = !DILocation(line: 306, column: 2, scope: !5776)
!5784 = !DILocation(line: 307, column: 26, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 307, column: 7)
!5786 = distinct !DILexicalBlock(scope: !5779, file: !3, line: 306, column: 49)
!5787 = !DILocation(line: 307, column: 32, scope: !5785)
!5788 = !DILocation(line: 307, column: 7, scope: !5785)
!5789 = !DILocation(line: 307, column: 7, scope: !5786)
!5790 = !DILocation(line: 308, column: 4, scope: !5785)
!5791 = !DILocation(line: 309, column: 13, scope: !5786)
!5792 = !DILocation(line: 309, column: 19, scope: !5786)
!5793 = !DILocation(line: 309, column: 10, scope: !5786)
!5794 = !DILocation(line: 310, column: 2, scope: !5786)
!5795 = !DILocation(line: 306, column: 45, scope: !5779)
!5796 = !DILocation(line: 306, column: 2, scope: !5779)
!5797 = distinct !{!5797, !5783, !5798, !4133, !4134}
!5798 = !DILocation(line: 310, column: 2, scope: !5776)
!5799 = !DILocation(line: 312, column: 6, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 312, column: 6)
!5801 = !DILocation(line: 312, column: 30, scope: !5800)
!5802 = !DILocation(line: 312, column: 11, scope: !5800)
!5803 = !DILocation(line: 312, column: 8, scope: !5800)
!5804 = !DILocation(line: 312, column: 6, scope: !5647)
!5805 = !DILocation(line: 313, column: 3, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 312, column: 37)
!5807 = !DILocation(line: 314, column: 4, scope: !5806)
!5808 = !DILocation(line: 314, column: 8, scope: !5806)
!5809 = !DILocation(line: 315, column: 3, scope: !5806)
!5810 = !DILocation(line: 318, column: 19, scope: !5647)
!5811 = !DILocation(line: 318, column: 25, scope: !5647)
!5812 = !DILocation(line: 318, column: 30, scope: !5647)
!5813 = !DILocation(line: 318, column: 9, scope: !5647)
!5814 = !DILocation(line: 318, column: 3, scope: !5647)
!5815 = !DILocation(line: 318, column: 7, scope: !5647)
!5816 = !DILocation(line: 319, column: 7, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5647, file: !3, line: 319, column: 6)
!5818 = !DILocation(line: 319, column: 6, scope: !5817)
!5819 = !DILocation(line: 319, column: 11, scope: !5817)
!5820 = !DILocation(line: 319, column: 6, scope: !5647)
!5821 = !DILocation(line: 320, column: 3, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 319, column: 16)
!5823 = !DILocation(line: 322, column: 3, scope: !5822)
!5824 = !DILocation(line: 324, column: 27, scope: !5647)
!5825 = !DILocation(line: 324, column: 19, scope: !5647)
!5826 = !DILocation(line: 324, column: 34, scope: !5647)
!5827 = !DILocation(line: 324, column: 40, scope: !5647)
!5828 = !DILocation(line: 324, column: 31, scope: !5647)
!5829 = !DILocation(line: 324, column: 60, scope: !5647)
!5830 = !DILocation(line: 326, column: 4, scope: !5647)
!5831 = !DILocation(line: 326, column: 8, scope: !5647)
!5832 = !DILocation(line: 326, column: 14, scope: !5647)
!5833 = !DILocation(line: 326, column: 6, scope: !5647)
!5834 = !DILocation(line: 325, column: 38, scope: !5647)
!5835 = !DILocation(line: 324, column: 2, scope: !5647)
!5836 = !DILocation(line: 324, column: 9, scope: !5647)
!5837 = !DILocation(line: 324, column: 16, scope: !5647)
!5838 = !DILocation(line: 327, column: 8, scope: !5647)
!5839 = !DILocation(line: 327, column: 2, scope: !5647)
!5840 = !DILocation(line: 328, column: 9, scope: !5647)
!5841 = !DILocation(line: 328, column: 2, scope: !5647)
!5842 = !DILocation(line: 329, column: 1, scope: !5647)
!5843 = !DILocation(line: 330, column: 8, scope: !5647)
!5844 = !DILocation(line: 330, column: 2, scope: !5647)
!5845 = !DILocation(line: 331, column: 2, scope: !5647)
!5846 = !DILocation(line: 332, column: 1, scope: !5647)
!5847 = distinct !DISubprogram(name: "write_blk", scope: !3, file: !3, line: 65, type: !5565, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5848)
!5848 = !{!5849, !5850, !5851, !5852, !5853}
!5849 = !DILocalVariable(name: "info", arg: 1, scope: !5847, file: !3, line: 65, type: !338)
!5850 = !DILocalVariable(name: "blk", arg: 2, scope: !5847, file: !3, line: 65, type: !119)
!5851 = !DILocalVariable(name: "buf", arg: 3, scope: !5847, file: !3, line: 65, type: !492)
!5852 = !DILocalVariable(name: "sb", scope: !5847, file: !3, line: 67, type: !343)
!5853 = !DILocalVariable(name: "ret", scope: !5847, file: !3, line: 68, type: !1037)
!5854 = !DILocation(line: 65, column: 51, scope: !5847)
!5855 = !DILocation(line: 65, column: 62, scope: !5847)
!5856 = !DILocation(line: 65, column: 73, scope: !5847)
!5857 = !DILocation(line: 67, column: 2, scope: !5847)
!5858 = !DILocation(line: 67, column: 22, scope: !5847)
!5859 = !DILocation(line: 67, column: 27, scope: !5847)
!5860 = !DILocation(line: 67, column: 33, scope: !5847)
!5861 = !DILocation(line: 68, column: 2, scope: !5847)
!5862 = !DILocation(line: 68, column: 10, scope: !5847)
!5863 = !DILocation(line: 70, column: 8, scope: !5847)
!5864 = !DILocation(line: 70, column: 12, scope: !5847)
!5865 = !DILocation(line: 70, column: 18, scope: !5847)
!5866 = !DILocation(line: 70, column: 30, scope: !5847)
!5867 = !DILocation(line: 70, column: 34, scope: !5847)
!5868 = !DILocation(line: 70, column: 40, scope: !5847)
!5869 = !DILocation(line: 70, column: 50, scope: !5847)
!5870 = !DILocation(line: 71, column: 9, scope: !5847)
!5871 = !DILocation(line: 71, column: 15, scope: !5847)
!5872 = !DILocation(line: 71, column: 38, scope: !5847)
!5873 = !DILocation(line: 71, column: 30, scope: !5847)
!5874 = !DILocation(line: 71, column: 45, scope: !5847)
!5875 = !DILocation(line: 71, column: 51, scope: !5847)
!5876 = !DILocation(line: 71, column: 42, scope: !5847)
!5877 = !DILocation(line: 70, column: 6, scope: !5847)
!5878 = !DILocation(line: 72, column: 6, scope: !5879)
!5879 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 72, column: 6)
!5880 = !DILocation(line: 72, column: 13, scope: !5879)
!5881 = !DILocation(line: 72, column: 19, scope: !5879)
!5882 = !DILocation(line: 72, column: 10, scope: !5879)
!5883 = !DILocation(line: 72, column: 6, scope: !5847)
!5884 = !DILocation(line: 73, column: 3, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5879, file: !3, line: 72, column: 34)
!5886 = !DILocation(line: 74, column: 7, scope: !5887)
!5887 = distinct !DILexicalBlock(scope: !5885, file: !3, line: 74, column: 7)
!5888 = !DILocation(line: 74, column: 11, scope: !5887)
!5889 = !DILocation(line: 74, column: 7, scope: !5885)
!5890 = !DILocation(line: 75, column: 8, scope: !5887)
!5891 = !DILocation(line: 75, column: 4, scope: !5887)
!5892 = !DILocation(line: 76, column: 2, scope: !5885)
!5893 = !DILocation(line: 77, column: 9, scope: !5847)
!5894 = !DILocation(line: 78, column: 1, scope: !5847)
!5895 = !DILocation(line: 77, column: 2, scope: !5847)
!5896 = distinct !DISubprogram(name: "put_free_dqblk", scope: !3, file: !3, line: 149, type: !5897, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5899)
!5897 = !DISubroutineType(types: !5898)
!5898 = !{!118, !338, !492, !119}
!5899 = !{!5900, !5901, !5902, !5903, !5904}
!5900 = !DILocalVariable(name: "info", arg: 1, scope: !5896, file: !3, line: 149, type: !338)
!5901 = !DILocalVariable(name: "buf", arg: 2, scope: !5896, file: !3, line: 149, type: !492)
!5902 = !DILocalVariable(name: "blk", arg: 3, scope: !5896, file: !3, line: 149, type: !119)
!5903 = !DILocalVariable(name: "dh", scope: !5896, file: !3, line: 151, type: !102)
!5904 = !DILocalVariable(name: "err", scope: !5896, file: !3, line: 152, type: !118)
!5905 = !DILocation(line: 149, column: 52, scope: !5896)
!5906 = !DILocation(line: 149, column: 64, scope: !5896)
!5907 = !DILocation(line: 149, column: 74, scope: !5896)
!5908 = !DILocation(line: 151, column: 2, scope: !5896)
!5909 = !DILocation(line: 151, column: 29, scope: !5896)
!5910 = !DILocation(line: 151, column: 63, scope: !5896)
!5911 = !DILocation(line: 152, column: 2, scope: !5896)
!5912 = !DILocation(line: 152, column: 6, scope: !5896)
!5913 = !DILocation(line: 154, column: 23, scope: !5896)
!5914 = !DILocation(line: 154, column: 2, scope: !5896)
!5915 = !DILocation(line: 154, column: 6, scope: !5896)
!5916 = !DILocation(line: 154, column: 21, scope: !5896)
!5917 = !DILocation(line: 155, column: 2, scope: !5896)
!5918 = !DILocation(line: 155, column: 6, scope: !5896)
!5919 = !DILocation(line: 155, column: 21, scope: !5896)
!5920 = !DILocation(line: 156, column: 2, scope: !5896)
!5921 = !DILocation(line: 156, column: 6, scope: !5896)
!5922 = !DILocation(line: 156, column: 19, scope: !5896)
!5923 = !DILocation(line: 157, column: 18, scope: !5896)
!5924 = !DILocation(line: 157, column: 24, scope: !5896)
!5925 = !DILocation(line: 157, column: 29, scope: !5896)
!5926 = !DILocation(line: 157, column: 8, scope: !5896)
!5927 = !DILocation(line: 157, column: 6, scope: !5896)
!5928 = !DILocation(line: 158, column: 6, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5896, file: !3, line: 158, column: 6)
!5930 = !DILocation(line: 158, column: 10, scope: !5929)
!5931 = !DILocation(line: 158, column: 6, scope: !5896)
!5932 = !DILocation(line: 159, column: 10, scope: !5929)
!5933 = !DILocation(line: 159, column: 3, scope: !5929)
!5934 = !DILocation(line: 160, column: 23, scope: !5896)
!5935 = !DILocation(line: 160, column: 2, scope: !5896)
!5936 = !DILocation(line: 160, column: 8, scope: !5896)
!5937 = !DILocation(line: 160, column: 21, scope: !5896)
!5938 = !DILocation(line: 161, column: 18, scope: !5896)
!5939 = !DILocation(line: 161, column: 24, scope: !5896)
!5940 = !DILocation(line: 161, column: 32, scope: !5896)
!5941 = !DILocation(line: 161, column: 38, scope: !5896)
!5942 = !DILocation(line: 161, column: 2, scope: !5896)
!5943 = !DILocation(line: 162, column: 2, scope: !5896)
!5944 = !DILocation(line: 163, column: 1, scope: !5896)
!5945 = distinct !DISubprogram(name: "check_dquot_block_header", scope: !3, file: !3, line: 92, type: !5946, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5948)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!118, !338, !102}
!5948 = !{!5949, !5950, !5951}
!5949 = !DILocalVariable(name: "info", arg: 1, scope: !5945, file: !3, line: 92, type: !338)
!5950 = !DILocalVariable(name: "dh", arg: 2, scope: !5945, file: !3, line: 93, type: !102)
!5951 = !DILocalVariable(name: "err", scope: !5945, file: !3, line: 95, type: !118)
!5952 = !DILocation(line: 92, column: 62, scope: !5945)
!5953 = !DILocation(line: 93, column: 36, scope: !5945)
!5954 = !DILocation(line: 95, column: 2, scope: !5945)
!5955 = !DILocation(line: 95, column: 6, scope: !5945)
!5956 = !DILocation(line: 97, column: 23, scope: !5945)
!5957 = !DILocation(line: 97, column: 29, scope: !5945)
!5958 = !DILocation(line: 98, column: 9, scope: !5945)
!5959 = !DILocation(line: 99, column: 9, scope: !5945)
!5960 = !DILocation(line: 99, column: 15, scope: !5945)
!5961 = !DILocation(line: 99, column: 26, scope: !5945)
!5962 = !DILocation(line: 97, column: 8, scope: !5945)
!5963 = !DILocation(line: 97, column: 6, scope: !5945)
!5964 = !DILocation(line: 100, column: 6, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 100, column: 6)
!5966 = !DILocation(line: 100, column: 6, scope: !5945)
!5967 = !DILocation(line: 101, column: 10, scope: !5965)
!5968 = !DILocation(line: 101, column: 3, scope: !5965)
!5969 = !DILocation(line: 102, column: 23, scope: !5945)
!5970 = !DILocation(line: 102, column: 29, scope: !5945)
!5971 = !DILocation(line: 103, column: 9, scope: !5945)
!5972 = !DILocation(line: 104, column: 9, scope: !5945)
!5973 = !DILocation(line: 104, column: 15, scope: !5945)
!5974 = !DILocation(line: 104, column: 26, scope: !5945)
!5975 = !DILocation(line: 102, column: 8, scope: !5945)
!5976 = !DILocation(line: 102, column: 6, scope: !5945)
!5977 = !DILocation(line: 105, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5945, file: !3, line: 105, column: 6)
!5979 = !DILocation(line: 105, column: 6, scope: !5945)
!5980 = !DILocation(line: 106, column: 10, scope: !5978)
!5981 = !DILocation(line: 106, column: 3, scope: !5978)
!5982 = !DILocation(line: 107, column: 23, scope: !5945)
!5983 = !DILocation(line: 107, column: 29, scope: !5945)
!5984 = !DILocation(line: 108, column: 9, scope: !5945)
!5985 = !DILocation(line: 109, column: 28, scope: !5945)
!5986 = !DILocation(line: 109, column: 9, scope: !5945)
!5987 = !DILocation(line: 107, column: 8, scope: !5945)
!5988 = !DILocation(line: 107, column: 6, scope: !5945)
!5989 = !DILocation(line: 111, column: 9, scope: !5945)
!5990 = !DILocation(line: 111, column: 2, scope: !5945)
!5991 = !DILocation(line: 112, column: 1, scope: !5945)
!5992 = !DISubprogram(name: "mark_info_dirty", scope: !40, file: !40, line: 247, type: !5993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{null, !343, !118}
!5995 = distinct !DISubprogram(name: "qtree_dqstr_in_blk", scope: !3, file: !3, line: 50, type: !5474, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5996)
!5996 = !{!5997}
!5997 = !DILocalVariable(name: "info", arg: 1, scope: !5995, file: !3, line: 50, type: !338)
!5998 = !DILocation(line: 50, column: 56, scope: !5995)
!5999 = !DILocation(line: 52, column: 10, scope: !5995)
!6000 = !DILocation(line: 52, column: 16, scope: !5995)
!6001 = !DILocation(line: 52, column: 30, scope: !5995)
!6002 = !DILocation(line: 53, column: 11, scope: !5995)
!6003 = !DILocation(line: 53, column: 17, scope: !5995)
!6004 = !DILocation(line: 53, column: 9, scope: !5995)
!6005 = !DILocation(line: 52, column: 9, scope: !5995)
!6006 = !DILocation(line: 52, column: 2, scope: !5995)
!6007 = distinct !DISubprogram(name: "__get_index", scope: !3, file: !3, line: 32, type: !6008, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6010)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{!118, !338, !4755, !118}
!6010 = !{!6011, !6012, !6013, !6014}
!6011 = !DILocalVariable(name: "info", arg: 1, scope: !6007, file: !3, line: 32, type: !338)
!6012 = !DILocalVariable(name: "id", arg: 2, scope: !6007, file: !3, line: 32, type: !4755)
!6013 = !DILocalVariable(name: "depth", arg: 3, scope: !6007, file: !3, line: 32, type: !118)
!6014 = !DILocalVariable(name: "epb", scope: !6007, file: !3, line: 34, type: !7)
!6015 = !DILocation(line: 32, column: 49, scope: !6007)
!6016 = !DILocation(line: 32, column: 61, scope: !6007)
!6017 = !DILocation(line: 32, column: 69, scope: !6007)
!6018 = !DILocation(line: 34, column: 2, scope: !6007)
!6019 = !DILocation(line: 34, column: 15, scope: !6007)
!6020 = !DILocation(line: 34, column: 21, scope: !6007)
!6021 = !DILocation(line: 34, column: 27, scope: !6007)
!6022 = !DILocation(line: 34, column: 41, scope: !6007)
!6023 = !DILocation(line: 36, column: 10, scope: !6007)
!6024 = !DILocation(line: 36, column: 16, scope: !6007)
!6025 = !DILocation(line: 36, column: 34, scope: !6007)
!6026 = !DILocation(line: 36, column: 32, scope: !6007)
!6027 = !DILocation(line: 36, column: 40, scope: !6007)
!6028 = !DILocation(line: 36, column: 8, scope: !6007)
!6029 = !DILocation(line: 37, column: 2, scope: !6007)
!6030 = !DILocation(line: 37, column: 14, scope: !6007)
!6031 = !DILocation(line: 38, column: 9, scope: !6007)
!6032 = !DILocation(line: 38, column: 6, scope: !6007)
!6033 = distinct !{!6033, !6029, !6031, !4133, !4134}
!6034 = !DILocation(line: 39, column: 9, scope: !6007)
!6035 = !DILocation(line: 39, column: 14, scope: !6007)
!6036 = !DILocation(line: 39, column: 12, scope: !6007)
!6037 = !DILocation(line: 40, column: 1, scope: !6007)
!6038 = !DILocation(line: 39, column: 2, scope: !6007)
!6039 = distinct !DISubprogram(name: "remove_free_dqentry", scope: !3, file: !3, line: 166, type: !5897, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6040)
!6040 = !{!6041, !6042, !6043, !6044, !6045, !6046, !6047, !6048, !6049}
!6041 = !DILocalVariable(name: "info", arg: 1, scope: !6039, file: !3, line: 166, type: !338)
!6042 = !DILocalVariable(name: "buf", arg: 2, scope: !6039, file: !3, line: 166, type: !492)
!6043 = !DILocalVariable(name: "blk", arg: 3, scope: !6039, file: !3, line: 167, type: !119)
!6044 = !DILocalVariable(name: "tmpbuf", scope: !6039, file: !3, line: 169, type: !492)
!6045 = !DILocalVariable(name: "dh", scope: !6039, file: !3, line: 170, type: !102)
!6046 = !DILocalVariable(name: "nextblk", scope: !6039, file: !3, line: 171, type: !119)
!6047 = !DILocalVariable(name: "prevblk", scope: !6039, file: !3, line: 172, type: !119)
!6048 = !DILocalVariable(name: "err", scope: !6039, file: !3, line: 173, type: !118)
!6049 = !DILabel(scope: !6039, name: "out_buf", file: !3, line: 207)
!6050 = !DILocation(line: 166, column: 57, scope: !6039)
!6051 = !DILocation(line: 166, column: 69, scope: !6039)
!6052 = !DILocation(line: 167, column: 16, scope: !6039)
!6053 = !DILocation(line: 169, column: 2, scope: !6039)
!6054 = !DILocation(line: 169, column: 8, scope: !6039)
!6055 = !DILocation(line: 169, column: 25, scope: !6039)
!6056 = !DILocation(line: 169, column: 31, scope: !6039)
!6057 = !DILocation(line: 169, column: 17, scope: !6039)
!6058 = !DILocation(line: 170, column: 2, scope: !6039)
!6059 = !DILocation(line: 170, column: 29, scope: !6039)
!6060 = !DILocation(line: 170, column: 63, scope: !6039)
!6061 = !DILocation(line: 171, column: 2, scope: !6039)
!6062 = !DILocation(line: 171, column: 7, scope: !6039)
!6063 = !DILocation(line: 171, column: 17, scope: !6039)
!6064 = !DILocation(line: 172, column: 2, scope: !6039)
!6065 = !DILocation(line: 172, column: 7, scope: !6039)
!6066 = !DILocation(line: 172, column: 17, scope: !6039)
!6067 = !DILocation(line: 173, column: 2, scope: !6039)
!6068 = !DILocation(line: 173, column: 6, scope: !6039)
!6069 = !DILocation(line: 175, column: 7, scope: !6070)
!6070 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 175, column: 6)
!6071 = !DILocation(line: 175, column: 6, scope: !6039)
!6072 = !DILocation(line: 176, column: 3, scope: !6070)
!6073 = !DILocation(line: 177, column: 6, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 177, column: 6)
!6075 = !DILocation(line: 177, column: 6, scope: !6039)
!6076 = !DILocation(line: 178, column: 18, scope: !6077)
!6077 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 177, column: 15)
!6078 = !DILocation(line: 178, column: 24, scope: !6077)
!6079 = !DILocation(line: 178, column: 33, scope: !6077)
!6080 = !DILocation(line: 178, column: 9, scope: !6077)
!6081 = !DILocation(line: 178, column: 7, scope: !6077)
!6082 = !DILocation(line: 179, column: 7, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 179, column: 7)
!6084 = !DILocation(line: 179, column: 11, scope: !6083)
!6085 = !DILocation(line: 179, column: 7, scope: !6077)
!6086 = !DILocation(line: 180, column: 4, scope: !6083)
!6087 = !DILocation(line: 182, column: 8, scope: !6077)
!6088 = !DILocation(line: 182, column: 12, scope: !6077)
!6089 = !DILocation(line: 181, column: 33, scope: !6077)
!6090 = !DILocation(line: 181, column: 42, scope: !6077)
!6091 = !DILocation(line: 181, column: 57, scope: !6077)
!6092 = !DILocation(line: 183, column: 19, scope: !6077)
!6093 = !DILocation(line: 183, column: 25, scope: !6077)
!6094 = !DILocation(line: 183, column: 34, scope: !6077)
!6095 = !DILocation(line: 183, column: 9, scope: !6077)
!6096 = !DILocation(line: 183, column: 7, scope: !6077)
!6097 = !DILocation(line: 184, column: 7, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6077, file: !3, line: 184, column: 7)
!6099 = !DILocation(line: 184, column: 11, scope: !6098)
!6100 = !DILocation(line: 184, column: 7, scope: !6077)
!6101 = !DILocation(line: 185, column: 4, scope: !6098)
!6102 = !DILocation(line: 186, column: 2, scope: !6077)
!6103 = !DILocation(line: 187, column: 6, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 187, column: 6)
!6105 = !DILocation(line: 187, column: 6, scope: !6039)
!6106 = !DILocation(line: 188, column: 18, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 187, column: 15)
!6108 = !DILocation(line: 188, column: 24, scope: !6107)
!6109 = !DILocation(line: 188, column: 33, scope: !6107)
!6110 = !DILocation(line: 188, column: 9, scope: !6107)
!6111 = !DILocation(line: 188, column: 7, scope: !6107)
!6112 = !DILocation(line: 189, column: 7, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 189, column: 7)
!6114 = !DILocation(line: 189, column: 11, scope: !6113)
!6115 = !DILocation(line: 189, column: 7, scope: !6107)
!6116 = !DILocation(line: 190, column: 4, scope: !6113)
!6117 = !DILocation(line: 192, column: 8, scope: !6107)
!6118 = !DILocation(line: 192, column: 12, scope: !6107)
!6119 = !DILocation(line: 191, column: 33, scope: !6107)
!6120 = !DILocation(line: 191, column: 42, scope: !6107)
!6121 = !DILocation(line: 191, column: 57, scope: !6107)
!6122 = !DILocation(line: 193, column: 19, scope: !6107)
!6123 = !DILocation(line: 193, column: 25, scope: !6107)
!6124 = !DILocation(line: 193, column: 34, scope: !6107)
!6125 = !DILocation(line: 193, column: 9, scope: !6107)
!6126 = !DILocation(line: 193, column: 7, scope: !6107)
!6127 = !DILocation(line: 194, column: 7, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6107, file: !3, line: 194, column: 7)
!6129 = !DILocation(line: 194, column: 11, scope: !6128)
!6130 = !DILocation(line: 194, column: 7, scope: !6107)
!6131 = !DILocation(line: 195, column: 4, scope: !6128)
!6132 = !DILocation(line: 196, column: 2, scope: !6107)
!6133 = !DILocation(line: 197, column: 26, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 196, column: 9)
!6135 = !DILocation(line: 197, column: 3, scope: !6134)
!6136 = !DILocation(line: 197, column: 9, scope: !6134)
!6137 = !DILocation(line: 197, column: 24, scope: !6134)
!6138 = !DILocation(line: 198, column: 19, scope: !6134)
!6139 = !DILocation(line: 198, column: 25, scope: !6134)
!6140 = !DILocation(line: 198, column: 33, scope: !6134)
!6141 = !DILocation(line: 198, column: 39, scope: !6134)
!6142 = !DILocation(line: 198, column: 3, scope: !6134)
!6143 = !DILocation(line: 200, column: 8, scope: !6039)
!6144 = !DILocation(line: 200, column: 2, scope: !6039)
!6145 = !DILocation(line: 201, column: 23, scope: !6039)
!6146 = !DILocation(line: 201, column: 27, scope: !6039)
!6147 = !DILocation(line: 201, column: 42, scope: !6039)
!6148 = !DILocation(line: 201, column: 2, scope: !6039)
!6149 = !DILocation(line: 201, column: 6, scope: !6039)
!6150 = !DILocation(line: 201, column: 21, scope: !6039)
!6151 = !DILocation(line: 203, column: 16, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 203, column: 6)
!6153 = !DILocation(line: 203, column: 22, scope: !6152)
!6154 = !DILocation(line: 203, column: 27, scope: !6152)
!6155 = !DILocation(line: 203, column: 6, scope: !6152)
!6156 = !DILocation(line: 203, column: 32, scope: !6152)
!6157 = !DILocation(line: 203, column: 6, scope: !6039)
!6158 = !DILocation(line: 204, column: 3, scope: !6152)
!6159 = !DILocation(line: 206, column: 2, scope: !6039)
!6160 = !DILocation(line: 207, column: 1, scope: !6039)
!6161 = !DILocation(line: 208, column: 8, scope: !6039)
!6162 = !DILocation(line: 208, column: 2, scope: !6039)
!6163 = !DILocation(line: 209, column: 9, scope: !6039)
!6164 = !DILocation(line: 209, column: 2, scope: !6039)
!6165 = !DILocation(line: 210, column: 1, scope: !6039)
!6166 = distinct !DISubprogram(name: "le16_add_cpu", scope: !6167, file: !6167, line: 144, type: !6168, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6171)
!6167 = !DIFile(filename: "./include/linux/byteorder/generic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8abdd24f6391da1376ccb2dfa1187698")
!6168 = !DISubroutineType(types: !6169)
!6169 = !{null, !6170, !620}
!6170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!6171 = !{!6172, !6173}
!6172 = !DILocalVariable(name: "var", arg: 1, scope: !6166, file: !6167, line: 144, type: !6170)
!6173 = !DILocalVariable(name: "val", arg: 2, scope: !6166, file: !6167, line: 144, type: !620)
!6174 = !DILocation(line: 144, column: 41, scope: !6166)
!6175 = !DILocation(line: 144, column: 50, scope: !6166)
!6176 = !DILocation(line: 146, column: 9, scope: !6166)
!6177 = !DILocation(line: 146, column: 3, scope: !6166)
!6178 = !DILocation(line: 146, column: 7, scope: !6166)
!6179 = !DILocation(line: 147, column: 1, scope: !6166)
!6180 = !DISubprogram(name: "_raw_spin_lock", scope: !6181, file: !6181, line: 22, type: !6182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6181 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6182 = !DISubroutineType(types: !6183)
!6183 = !{null, !6184}
!6184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!6185 = !DISubprogram(name: "_raw_spin_unlock", scope: !6181, file: !6181, line: 39, type: !6182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6186 = distinct !DISubprogram(name: "percpu_counter_inc", scope: !882, file: !882, line: 235, type: !6187, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6190)
!6187 = !DISubroutineType(types: !6188)
!6188 = !{null, !6189}
!6189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!6190 = !{!6191}
!6191 = !DILocalVariable(name: "fbc", arg: 1, scope: !6186, file: !882, line: 235, type: !6189)
!6192 = !DILocation(line: 235, column: 62, scope: !6186)
!6193 = !DILocation(line: 237, column: 21, scope: !6186)
!6194 = !DILocation(line: 237, column: 2, scope: !6186)
!6195 = !DILocation(line: 238, column: 1, scope: !6186)
!6196 = distinct !DISubprogram(name: "percpu_counter_add", scope: !882, file: !882, line: 67, type: !6197, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6199)
!6197 = !DISubroutineType(types: !6198)
!6198 = !{null, !6189, !631}
!6199 = !{!6200, !6201}
!6200 = !DILocalVariable(name: "fbc", arg: 1, scope: !6196, file: !882, line: 67, type: !6189)
!6201 = !DILocalVariable(name: "amount", arg: 2, scope: !6196, file: !882, line: 67, type: !631)
!6202 = !DILocation(line: 67, column: 62, scope: !6196)
!6203 = !DILocation(line: 67, column: 71, scope: !6196)
!6204 = !DILocation(line: 69, column: 27, scope: !6196)
!6205 = !DILocation(line: 69, column: 32, scope: !6196)
!6206 = !DILocation(line: 69, column: 40, scope: !6196)
!6207 = !DILocation(line: 69, column: 2, scope: !6196)
!6208 = !DILocation(line: 70, column: 1, scope: !6196)
!6209 = !DISubprogram(name: "percpu_counter_add_batch", scope: !882, file: !882, line: 56, type: !6210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{null, !6189, !631, !756}
!6212 = distinct !DISubprogram(name: "free_dqentry", scope: !3, file: !3, line: 479, type: !6213, scopeLine: 481, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6215)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{!118, !338, !2565, !119}
!6215 = !{!6216, !6217, !6218, !6219, !6220, !6221, !6222}
!6216 = !DILocalVariable(name: "info", arg: 1, scope: !6212, file: !3, line: 479, type: !338)
!6217 = !DILocalVariable(name: "dquot", arg: 2, scope: !6212, file: !3, line: 479, type: !2565)
!6218 = !DILocalVariable(name: "blk", arg: 3, scope: !6212, file: !3, line: 480, type: !119)
!6219 = !DILocalVariable(name: "dh", scope: !6212, file: !3, line: 482, type: !102)
!6220 = !DILocalVariable(name: "buf", scope: !6212, file: !3, line: 483, type: !492)
!6221 = !DILocalVariable(name: "ret", scope: !6212, file: !3, line: 484, type: !118)
!6222 = !DILabel(scope: !6212, name: "out_buf", file: !3, line: 538)
!6223 = !DILocation(line: 479, column: 50, scope: !6212)
!6224 = !DILocation(line: 479, column: 70, scope: !6212)
!6225 = !DILocation(line: 480, column: 9, scope: !6212)
!6226 = !DILocation(line: 482, column: 2, scope: !6212)
!6227 = !DILocation(line: 482, column: 29, scope: !6212)
!6228 = !DILocation(line: 483, column: 2, scope: !6212)
!6229 = !DILocation(line: 483, column: 8, scope: !6212)
!6230 = !DILocation(line: 483, column: 22, scope: !6212)
!6231 = !DILocation(line: 483, column: 28, scope: !6212)
!6232 = !DILocation(line: 483, column: 14, scope: !6212)
!6233 = !DILocation(line: 484, column: 2, scope: !6212)
!6234 = !DILocation(line: 484, column: 6, scope: !6212)
!6235 = !DILocation(line: 486, column: 7, scope: !6236)
!6236 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 486, column: 6)
!6237 = !DILocation(line: 486, column: 6, scope: !6212)
!6238 = !DILocation(line: 487, column: 3, scope: !6236)
!6239 = !DILocation(line: 488, column: 6, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 488, column: 6)
!6241 = !DILocation(line: 488, column: 13, scope: !6240)
!6242 = !DILocation(line: 488, column: 23, scope: !6240)
!6243 = !DILocation(line: 488, column: 29, scope: !6240)
!6244 = !DILocation(line: 488, column: 20, scope: !6240)
!6245 = !DILocation(line: 488, column: 51, scope: !6240)
!6246 = !DILocation(line: 488, column: 48, scope: !6240)
!6247 = !DILocation(line: 488, column: 6, scope: !6212)
!6248 = !DILocation(line: 489, column: 3, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6240, file: !3, line: 488, column: 56)
!6250 = !DILocation(line: 492, column: 7, scope: !6249)
!6251 = !DILocation(line: 493, column: 3, scope: !6249)
!6252 = !DILocation(line: 495, column: 17, scope: !6212)
!6253 = !DILocation(line: 495, column: 23, scope: !6212)
!6254 = !DILocation(line: 495, column: 28, scope: !6212)
!6255 = !DILocation(line: 495, column: 8, scope: !6212)
!6256 = !DILocation(line: 495, column: 6, scope: !6212)
!6257 = !DILocation(line: 496, column: 6, scope: !6258)
!6258 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 496, column: 6)
!6259 = !DILocation(line: 496, column: 10, scope: !6258)
!6260 = !DILocation(line: 496, column: 6, scope: !6212)
!6261 = !DILocation(line: 497, column: 3, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 496, column: 15)
!6263 = !DILocation(line: 499, column: 3, scope: !6262)
!6264 = !DILocation(line: 501, column: 36, scope: !6212)
!6265 = !DILocation(line: 501, column: 5, scope: !6212)
!6266 = !DILocation(line: 502, column: 33, scope: !6212)
!6267 = !DILocation(line: 502, column: 39, scope: !6212)
!6268 = !DILocation(line: 502, column: 8, scope: !6212)
!6269 = !DILocation(line: 502, column: 6, scope: !6212)
!6270 = !DILocation(line: 503, column: 6, scope: !6271)
!6271 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 503, column: 6)
!6272 = !DILocation(line: 503, column: 6, scope: !6212)
!6273 = !DILocation(line: 504, column: 3, scope: !6271)
!6274 = !DILocation(line: 505, column: 16, scope: !6212)
!6275 = !DILocation(line: 505, column: 20, scope: !6212)
!6276 = !DILocation(line: 505, column: 2, scope: !6212)
!6277 = !DILocation(line: 506, column: 7, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6212, file: !3, line: 506, column: 6)
!6279 = !DILocation(line: 506, column: 6, scope: !6212)
!6280 = !DILocation(line: 507, column: 29, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 506, column: 38)
!6282 = !DILocation(line: 507, column: 35, scope: !6281)
!6283 = !DILocation(line: 507, column: 40, scope: !6281)
!6284 = !DILocation(line: 507, column: 9, scope: !6281)
!6285 = !DILocation(line: 507, column: 7, scope: !6281)
!6286 = !DILocation(line: 508, column: 7, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 508, column: 7)
!6288 = !DILocation(line: 508, column: 11, scope: !6287)
!6289 = !DILocation(line: 508, column: 7, scope: !6281)
!6290 = !DILocation(line: 509, column: 25, scope: !6287)
!6291 = !DILocation(line: 509, column: 31, scope: !6287)
!6292 = !DILocation(line: 509, column: 36, scope: !6287)
!6293 = !DILocation(line: 509, column: 10, scope: !6287)
!6294 = !DILocation(line: 509, column: 8, scope: !6287)
!6295 = !DILocation(line: 509, column: 4, scope: !6287)
!6296 = !DILocation(line: 510, column: 7, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6281, file: !3, line: 510, column: 7)
!6298 = !DILocation(line: 510, column: 11, scope: !6297)
!6299 = !DILocation(line: 510, column: 7, scope: !6281)
!6300 = !DILocation(line: 511, column: 4, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 510, column: 16)
!6302 = !DILocation(line: 513, column: 4, scope: !6301)
!6303 = !DILocation(line: 515, column: 2, scope: !6281)
!6304 = !DILocation(line: 516, column: 10, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 515, column: 9)
!6306 = !DILocation(line: 517, column: 11, scope: !6305)
!6307 = !DILocation(line: 517, column: 18, scope: !6305)
!6308 = !DILocation(line: 517, column: 34, scope: !6305)
!6309 = !DILocation(line: 517, column: 40, scope: !6305)
!6310 = !DILocation(line: 517, column: 31, scope: !6305)
!6311 = !DILocation(line: 517, column: 60, scope: !6305)
!6312 = !DILocation(line: 517, column: 27, scope: !6305)
!6313 = !DILocation(line: 517, column: 25, scope: !6305)
!6314 = !DILocation(line: 516, column: 14, scope: !6305)
!6315 = !DILocation(line: 518, column: 13, scope: !6305)
!6316 = !DILocation(line: 518, column: 19, scope: !6305)
!6317 = !DILocation(line: 516, column: 3, scope: !6305)
!6318 = !DILocation(line: 519, column: 7, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6305, file: !3, line: 519, column: 7)
!6320 = !DILocation(line: 520, column: 26, scope: !6319)
!6321 = !DILocation(line: 520, column: 7, scope: !6319)
!6322 = !DILocation(line: 520, column: 32, scope: !6319)
!6323 = !DILocation(line: 519, column: 37, scope: !6319)
!6324 = !DILocation(line: 519, column: 7, scope: !6305)
!6325 = !DILocation(line: 522, column: 30, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 520, column: 37)
!6327 = !DILocation(line: 522, column: 36, scope: !6326)
!6328 = !DILocation(line: 522, column: 41, scope: !6326)
!6329 = !DILocation(line: 522, column: 10, scope: !6326)
!6330 = !DILocation(line: 522, column: 8, scope: !6326)
!6331 = !DILocation(line: 523, column: 8, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6326, file: !3, line: 523, column: 8)
!6333 = !DILocation(line: 523, column: 12, scope: !6332)
!6334 = !DILocation(line: 523, column: 8, scope: !6326)
!6335 = !DILocation(line: 524, column: 5, scope: !6336)
!6336 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 523, column: 17)
!6337 = !DILocation(line: 526, column: 5, scope: !6336)
!6338 = !DILocation(line: 528, column: 3, scope: !6326)
!6339 = !DILocation(line: 529, column: 20, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6319, file: !3, line: 528, column: 10)
!6341 = !DILocation(line: 529, column: 26, scope: !6340)
!6342 = !DILocation(line: 529, column: 31, scope: !6340)
!6343 = !DILocation(line: 529, column: 10, scope: !6340)
!6344 = !DILocation(line: 529, column: 8, scope: !6340)
!6345 = !DILocation(line: 530, column: 8, scope: !6346)
!6346 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 530, column: 8)
!6347 = !DILocation(line: 530, column: 12, scope: !6346)
!6348 = !DILocation(line: 530, column: 8, scope: !6340)
!6349 = !DILocation(line: 531, column: 5, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 530, column: 17)
!6351 = !DILocation(line: 533, column: 5, scope: !6350)
!6352 = !DILocation(line: 537, column: 2, scope: !6212)
!6353 = !DILocation(line: 537, column: 9, scope: !6212)
!6354 = !DILocation(line: 537, column: 16, scope: !6212)
!6355 = !DILocation(line: 538, column: 1, scope: !6212)
!6356 = !DILocation(line: 539, column: 8, scope: !6212)
!6357 = !DILocation(line: 539, column: 2, scope: !6212)
!6358 = !DILocation(line: 540, column: 9, scope: !6212)
!6359 = !DILocation(line: 540, column: 2, scope: !6212)
!6360 = !DILocation(line: 541, column: 1, scope: !6212)
!6361 = distinct !DISubprogram(name: "insert_free_dqentry", scope: !3, file: !3, line: 213, type: !5897, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6362)
!6362 = !{!6363, !6364, !6365, !6366, !6367, !6368, !6369}
!6363 = !DILocalVariable(name: "info", arg: 1, scope: !6361, file: !3, line: 213, type: !338)
!6364 = !DILocalVariable(name: "buf", arg: 2, scope: !6361, file: !3, line: 213, type: !492)
!6365 = !DILocalVariable(name: "blk", arg: 3, scope: !6361, file: !3, line: 214, type: !119)
!6366 = !DILocalVariable(name: "tmpbuf", scope: !6361, file: !3, line: 216, type: !492)
!6367 = !DILocalVariable(name: "dh", scope: !6361, file: !3, line: 217, type: !102)
!6368 = !DILocalVariable(name: "err", scope: !6361, file: !3, line: 218, type: !118)
!6369 = !DILabel(scope: !6361, name: "out_buf", file: !3, line: 241)
!6370 = !DILocation(line: 213, column: 57, scope: !6361)
!6371 = !DILocation(line: 213, column: 69, scope: !6361)
!6372 = !DILocation(line: 214, column: 16, scope: !6361)
!6373 = !DILocation(line: 216, column: 2, scope: !6361)
!6374 = !DILocation(line: 216, column: 8, scope: !6361)
!6375 = !DILocation(line: 216, column: 25, scope: !6361)
!6376 = !DILocation(line: 216, column: 31, scope: !6361)
!6377 = !DILocation(line: 216, column: 17, scope: !6361)
!6378 = !DILocation(line: 217, column: 2, scope: !6361)
!6379 = !DILocation(line: 217, column: 29, scope: !6361)
!6380 = !DILocation(line: 217, column: 63, scope: !6361)
!6381 = !DILocation(line: 218, column: 2, scope: !6361)
!6382 = !DILocation(line: 218, column: 6, scope: !6361)
!6383 = !DILocation(line: 220, column: 7, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 220, column: 6)
!6385 = !DILocation(line: 220, column: 6, scope: !6361)
!6386 = !DILocation(line: 221, column: 3, scope: !6384)
!6387 = !DILocation(line: 222, column: 23, scope: !6361)
!6388 = !DILocation(line: 222, column: 2, scope: !6361)
!6389 = !DILocation(line: 222, column: 6, scope: !6361)
!6390 = !DILocation(line: 222, column: 21, scope: !6361)
!6391 = !DILocation(line: 223, column: 2, scope: !6361)
!6392 = !DILocation(line: 223, column: 6, scope: !6361)
!6393 = !DILocation(line: 223, column: 21, scope: !6361)
!6394 = !DILocation(line: 224, column: 18, scope: !6361)
!6395 = !DILocation(line: 224, column: 24, scope: !6361)
!6396 = !DILocation(line: 224, column: 29, scope: !6361)
!6397 = !DILocation(line: 224, column: 8, scope: !6361)
!6398 = !DILocation(line: 224, column: 6, scope: !6361)
!6399 = !DILocation(line: 225, column: 6, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 225, column: 6)
!6401 = !DILocation(line: 225, column: 10, scope: !6400)
!6402 = !DILocation(line: 225, column: 6, scope: !6361)
!6403 = !DILocation(line: 226, column: 3, scope: !6400)
!6404 = !DILocation(line: 227, column: 6, scope: !6405)
!6405 = distinct !DILexicalBlock(scope: !6361, file: !3, line: 227, column: 6)
!6406 = !DILocation(line: 227, column: 12, scope: !6405)
!6407 = !DILocation(line: 227, column: 6, scope: !6361)
!6408 = !DILocation(line: 228, column: 18, scope: !6409)
!6409 = distinct !DILexicalBlock(scope: !6405, file: !3, line: 227, column: 28)
!6410 = !DILocation(line: 228, column: 24, scope: !6409)
!6411 = !DILocation(line: 228, column: 30, scope: !6409)
!6412 = !DILocation(line: 228, column: 46, scope: !6409)
!6413 = !DILocation(line: 228, column: 9, scope: !6409)
!6414 = !DILocation(line: 228, column: 7, scope: !6409)
!6415 = !DILocation(line: 229, column: 7, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 229, column: 7)
!6417 = !DILocation(line: 229, column: 11, scope: !6416)
!6418 = !DILocation(line: 229, column: 7, scope: !6409)
!6419 = !DILocation(line: 230, column: 4, scope: !6416)
!6420 = !DILocation(line: 232, column: 8, scope: !6409)
!6421 = !DILocation(line: 231, column: 33, scope: !6409)
!6422 = !DILocation(line: 231, column: 42, scope: !6409)
!6423 = !DILocation(line: 231, column: 57, scope: !6409)
!6424 = !DILocation(line: 233, column: 19, scope: !6409)
!6425 = !DILocation(line: 233, column: 25, scope: !6409)
!6426 = !DILocation(line: 233, column: 31, scope: !6409)
!6427 = !DILocation(line: 233, column: 47, scope: !6409)
!6428 = !DILocation(line: 233, column: 9, scope: !6409)
!6429 = !DILocation(line: 233, column: 7, scope: !6409)
!6430 = !DILocation(line: 234, column: 7, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6409, file: !3, line: 234, column: 7)
!6432 = !DILocation(line: 234, column: 11, scope: !6431)
!6433 = !DILocation(line: 234, column: 7, scope: !6409)
!6434 = !DILocation(line: 235, column: 4, scope: !6431)
!6435 = !DILocation(line: 236, column: 2, scope: !6409)
!6436 = !DILocation(line: 237, column: 8, scope: !6361)
!6437 = !DILocation(line: 237, column: 2, scope: !6361)
!6438 = !DILocation(line: 238, column: 25, scope: !6361)
!6439 = !DILocation(line: 238, column: 2, scope: !6361)
!6440 = !DILocation(line: 238, column: 8, scope: !6361)
!6441 = !DILocation(line: 238, column: 23, scope: !6361)
!6442 = !DILocation(line: 239, column: 18, scope: !6361)
!6443 = !DILocation(line: 239, column: 24, scope: !6361)
!6444 = !DILocation(line: 239, column: 32, scope: !6361)
!6445 = !DILocation(line: 239, column: 38, scope: !6361)
!6446 = !DILocation(line: 239, column: 2, scope: !6361)
!6447 = !DILocation(line: 240, column: 2, scope: !6361)
!6448 = !DILocation(line: 241, column: 1, scope: !6361)
!6449 = !DILocation(line: 242, column: 8, scope: !6361)
!6450 = !DILocation(line: 242, column: 2, scope: !6361)
!6451 = !DILocation(line: 243, column: 9, scope: !6361)
!6452 = !DILocation(line: 243, column: 2, scope: !6361)
!6453 = !DILocation(line: 244, column: 1, scope: !6361)
!6454 = distinct !DISubprogram(name: "find_tree_dqentry", scope: !3, file: !3, line: 660, type: !6455, scopeLine: 662, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6457)
!6455 = !DISubroutineType(types: !6456)
!6456 = !{!114, !338, !2565, !4373, !118}
!6457 = !{!6458, !6459, !6460, !6461, !6462, !6463, !6464, !6465, !6466, !6467}
!6458 = !DILocalVariable(name: "info", arg: 1, scope: !6454, file: !3, line: 660, type: !338)
!6459 = !DILocalVariable(name: "dquot", arg: 2, scope: !6454, file: !3, line: 661, type: !2565)
!6460 = !DILocalVariable(name: "blks", arg: 3, scope: !6454, file: !3, line: 661, type: !4373)
!6461 = !DILocalVariable(name: "depth", arg: 4, scope: !6454, file: !3, line: 661, type: !118)
!6462 = !DILocalVariable(name: "buf", scope: !6454, file: !3, line: 663, type: !492)
!6463 = !DILocalVariable(name: "ret", scope: !6454, file: !3, line: 664, type: !114)
!6464 = !DILocalVariable(name: "ref", scope: !6454, file: !3, line: 665, type: !97)
!6465 = !DILocalVariable(name: "blk", scope: !6454, file: !3, line: 666, type: !119)
!6466 = !DILocalVariable(name: "i", scope: !6454, file: !3, line: 667, type: !118)
!6467 = !DILabel(scope: !6454, name: "out_buf", file: !3, line: 701)
!6468 = !DILocation(line: 660, column: 58, scope: !6454)
!6469 = !DILocation(line: 661, column: 19, scope: !6454)
!6470 = !DILocation(line: 661, column: 32, scope: !6454)
!6471 = !DILocation(line: 661, column: 42, scope: !6454)
!6472 = !DILocation(line: 663, column: 2, scope: !6454)
!6473 = !DILocation(line: 663, column: 8, scope: !6454)
!6474 = !DILocation(line: 663, column: 22, scope: !6454)
!6475 = !DILocation(line: 663, column: 28, scope: !6454)
!6476 = !DILocation(line: 663, column: 14, scope: !6454)
!6477 = !DILocation(line: 664, column: 2, scope: !6454)
!6478 = !DILocation(line: 664, column: 9, scope: !6454)
!6479 = !DILocation(line: 665, column: 2, scope: !6454)
!6480 = !DILocation(line: 665, column: 10, scope: !6454)
!6481 = !DILocation(line: 665, column: 26, scope: !6454)
!6482 = !DILocation(line: 666, column: 2, scope: !6454)
!6483 = !DILocation(line: 666, column: 7, scope: !6454)
!6484 = !DILocation(line: 667, column: 2, scope: !6454)
!6485 = !DILocation(line: 667, column: 6, scope: !6454)
!6486 = !DILocation(line: 669, column: 7, scope: !6487)
!6487 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 669, column: 6)
!6488 = !DILocation(line: 669, column: 6, scope: !6454)
!6489 = !DILocation(line: 670, column: 3, scope: !6487)
!6490 = !DILocation(line: 671, column: 17, scope: !6454)
!6491 = !DILocation(line: 671, column: 23, scope: !6454)
!6492 = !DILocation(line: 671, column: 28, scope: !6454)
!6493 = !DILocation(line: 671, column: 36, scope: !6454)
!6494 = !DILocation(line: 671, column: 8, scope: !6454)
!6495 = !DILocation(line: 671, column: 6, scope: !6454)
!6496 = !DILocation(line: 672, column: 6, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 672, column: 6)
!6498 = !DILocation(line: 672, column: 10, scope: !6497)
!6499 = !DILocation(line: 672, column: 6, scope: !6454)
!6500 = !DILocation(line: 673, column: 3, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !6497, file: !3, line: 672, column: 15)
!6502 = !DILocation(line: 675, column: 3, scope: !6501)
!6503 = !DILocation(line: 677, column: 6, scope: !6454)
!6504 = !DILocation(line: 678, column: 8, scope: !6454)
!6505 = !DILocation(line: 678, column: 6, scope: !6454)
!6506 = !DILocation(line: 679, column: 7, scope: !6507)
!6507 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 679, column: 6)
!6508 = !DILocation(line: 679, column: 6, scope: !6454)
!6509 = !DILocation(line: 680, column: 3, scope: !6507)
!6510 = !DILocation(line: 681, column: 23, scope: !6454)
!6511 = !DILocation(line: 681, column: 30, scope: !6454)
!6512 = !DILocation(line: 681, column: 46, scope: !6454)
!6513 = !DILocation(line: 682, column: 9, scope: !6454)
!6514 = !DILocation(line: 682, column: 15, scope: !6454)
!6515 = !DILocation(line: 682, column: 26, scope: !6454)
!6516 = !DILocation(line: 681, column: 8, scope: !6454)
!6517 = !DILocation(line: 681, column: 6, scope: !6454)
!6518 = !DILocation(line: 683, column: 6, scope: !6519)
!6519 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 683, column: 6)
!6520 = !DILocation(line: 683, column: 6, scope: !6454)
!6521 = !DILocation(line: 684, column: 3, scope: !6519)
!6522 = !DILocation(line: 687, column: 9, scope: !6523)
!6523 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 687, column: 2)
!6524 = !DILocation(line: 687, column: 7, scope: !6523)
!6525 = !DILocation(line: 687, column: 14, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6523, file: !3, line: 687, column: 2)
!6527 = !DILocation(line: 687, column: 19, scope: !6526)
!6528 = !DILocation(line: 687, column: 16, scope: !6526)
!6529 = !DILocation(line: 687, column: 2, scope: !6523)
!6530 = !DILocation(line: 688, column: 7, scope: !6531)
!6531 = distinct !DILexicalBlock(scope: !6526, file: !3, line: 688, column: 7)
!6532 = !DILocation(line: 688, column: 14, scope: !6531)
!6533 = !DILocation(line: 688, column: 19, scope: !6531)
!6534 = !DILocation(line: 688, column: 11, scope: !6531)
!6535 = !DILocation(line: 688, column: 7, scope: !6526)
!6536 = !DILocation(line: 689, column: 4, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6531, file: !3, line: 688, column: 23)
!6538 = !DILocation(line: 693, column: 8, scope: !6537)
!6539 = !DILocation(line: 694, column: 4, scope: !6537)
!6540 = !DILocation(line: 688, column: 20, scope: !6531)
!6541 = !DILocation(line: 687, column: 27, scope: !6526)
!6542 = !DILocation(line: 687, column: 2, scope: !6526)
!6543 = distinct !{!6543, !6529, !6544, !4133, !4134}
!6544 = !DILocation(line: 695, column: 3, scope: !6523)
!6545 = !DILocation(line: 696, column: 20, scope: !6454)
!6546 = !DILocation(line: 696, column: 2, scope: !6454)
!6547 = !DILocation(line: 696, column: 7, scope: !6454)
!6548 = !DILocation(line: 696, column: 13, scope: !6454)
!6549 = !DILocation(line: 696, column: 18, scope: !6454)
!6550 = !DILocation(line: 697, column: 6, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 697, column: 6)
!6552 = !DILocation(line: 697, column: 14, scope: !6551)
!6553 = !DILocation(line: 697, column: 20, scope: !6551)
!6554 = !DILocation(line: 697, column: 36, scope: !6551)
!6555 = !DILocation(line: 697, column: 12, scope: !6551)
!6556 = !DILocation(line: 697, column: 6, scope: !6454)
!6557 = !DILocation(line: 698, column: 27, scope: !6551)
!6558 = !DILocation(line: 698, column: 33, scope: !6551)
!6559 = !DILocation(line: 698, column: 40, scope: !6551)
!6560 = !DILocation(line: 698, column: 46, scope: !6551)
!6561 = !DILocation(line: 698, column: 52, scope: !6551)
!6562 = !DILocation(line: 698, column: 9, scope: !6551)
!6563 = !DILocation(line: 698, column: 7, scope: !6551)
!6564 = !DILocation(line: 698, column: 3, scope: !6551)
!6565 = !DILocation(line: 700, column: 28, scope: !6551)
!6566 = !DILocation(line: 700, column: 34, scope: !6551)
!6567 = !DILocation(line: 700, column: 41, scope: !6551)
!6568 = !DILocation(line: 700, column: 9, scope: !6551)
!6569 = !DILocation(line: 700, column: 7, scope: !6551)
!6570 = !DILocation(line: 697, column: 38, scope: !6551)
!6571 = !DILocation(line: 701, column: 1, scope: !6454)
!6572 = !DILocation(line: 702, column: 8, scope: !6454)
!6573 = !DILocation(line: 702, column: 2, scope: !6454)
!6574 = !DILocation(line: 703, column: 9, scope: !6454)
!6575 = !DILocation(line: 703, column: 2, scope: !6454)
!6576 = !DILocation(line: 704, column: 1, scope: !6454)
!6577 = distinct !DISubprogram(name: "find_block_dqentry", scope: !3, file: !3, line: 622, type: !6578, scopeLine: 624, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6580)
!6578 = !DISubroutineType(types: !6579)
!6579 = !{!114, !338, !2565, !119}
!6580 = !{!6581, !6582, !6583, !6584, !6585, !6586, !6587, !6588}
!6581 = !DILocalVariable(name: "info", arg: 1, scope: !6577, file: !3, line: 622, type: !338)
!6582 = !DILocalVariable(name: "dquot", arg: 2, scope: !6577, file: !3, line: 623, type: !2565)
!6583 = !DILocalVariable(name: "blk", arg: 3, scope: !6577, file: !3, line: 623, type: !119)
!6584 = !DILocalVariable(name: "buf", scope: !6577, file: !3, line: 625, type: !492)
!6585 = !DILocalVariable(name: "ret", scope: !6577, file: !3, line: 626, type: !114)
!6586 = !DILocalVariable(name: "i", scope: !6577, file: !3, line: 627, type: !118)
!6587 = !DILocalVariable(name: "ddquot", scope: !6577, file: !3, line: 628, type: !492)
!6588 = !DILabel(scope: !6577, name: "out_buf", file: !3, line: 654)
!6589 = !DILocation(line: 622, column: 59, scope: !6577)
!6590 = !DILocation(line: 623, column: 20, scope: !6577)
!6591 = !DILocation(line: 623, column: 32, scope: !6577)
!6592 = !DILocation(line: 625, column: 2, scope: !6577)
!6593 = !DILocation(line: 625, column: 8, scope: !6577)
!6594 = !DILocation(line: 625, column: 22, scope: !6577)
!6595 = !DILocation(line: 625, column: 28, scope: !6577)
!6596 = !DILocation(line: 625, column: 14, scope: !6577)
!6597 = !DILocation(line: 626, column: 2, scope: !6577)
!6598 = !DILocation(line: 626, column: 9, scope: !6577)
!6599 = !DILocation(line: 627, column: 2, scope: !6577)
!6600 = !DILocation(line: 627, column: 6, scope: !6577)
!6601 = !DILocation(line: 628, column: 2, scope: !6577)
!6602 = !DILocation(line: 628, column: 8, scope: !6577)
!6603 = !DILocation(line: 630, column: 7, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 630, column: 6)
!6605 = !DILocation(line: 630, column: 6, scope: !6577)
!6606 = !DILocation(line: 631, column: 3, scope: !6604)
!6607 = !DILocation(line: 632, column: 17, scope: !6577)
!6608 = !DILocation(line: 632, column: 23, scope: !6577)
!6609 = !DILocation(line: 632, column: 28, scope: !6577)
!6610 = !DILocation(line: 632, column: 8, scope: !6577)
!6611 = !DILocation(line: 632, column: 6, scope: !6577)
!6612 = !DILocation(line: 633, column: 6, scope: !6613)
!6613 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 633, column: 6)
!6614 = !DILocation(line: 633, column: 10, scope: !6613)
!6615 = !DILocation(line: 633, column: 6, scope: !6577)
!6616 = !DILocation(line: 634, column: 3, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 633, column: 15)
!6618 = !DILocation(line: 636, column: 3, scope: !6617)
!6619 = !DILocation(line: 638, column: 11, scope: !6577)
!6620 = !DILocation(line: 638, column: 15, scope: !6577)
!6621 = !DILocation(line: 638, column: 9, scope: !6577)
!6622 = !DILocation(line: 639, column: 9, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 639, column: 2)
!6624 = !DILocation(line: 639, column: 7, scope: !6623)
!6625 = !DILocation(line: 639, column: 14, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 639, column: 2)
!6627 = !DILocation(line: 639, column: 37, scope: !6626)
!6628 = !DILocation(line: 639, column: 18, scope: !6626)
!6629 = !DILocation(line: 639, column: 16, scope: !6626)
!6630 = !DILocation(line: 639, column: 2, scope: !6623)
!6631 = !DILocation(line: 640, column: 7, scope: !6632)
!6632 = distinct !DILexicalBlock(scope: !6633, file: !3, line: 640, column: 7)
!6633 = distinct !DILexicalBlock(scope: !6626, file: !3, line: 639, column: 49)
!6634 = !DILocation(line: 640, column: 13, scope: !6632)
!6635 = !DILocation(line: 640, column: 22, scope: !6632)
!6636 = !DILocation(line: 640, column: 28, scope: !6632)
!6637 = !DILocation(line: 640, column: 36, scope: !6632)
!6638 = !DILocation(line: 640, column: 7, scope: !6633)
!6639 = !DILocation(line: 641, column: 4, scope: !6632)
!6640 = !DILocation(line: 642, column: 13, scope: !6633)
!6641 = !DILocation(line: 642, column: 19, scope: !6633)
!6642 = !DILocation(line: 642, column: 10, scope: !6633)
!6643 = !DILocation(line: 643, column: 2, scope: !6633)
!6644 = !DILocation(line: 639, column: 45, scope: !6626)
!6645 = !DILocation(line: 639, column: 2, scope: !6626)
!6646 = distinct !{!6646, !6630, !6647, !4133, !4134}
!6647 = !DILocation(line: 643, column: 2, scope: !6623)
!6648 = !DILocation(line: 644, column: 6, scope: !6649)
!6649 = distinct !DILexicalBlock(scope: !6577, file: !3, line: 644, column: 6)
!6650 = !DILocation(line: 644, column: 30, scope: !6649)
!6651 = !DILocation(line: 644, column: 11, scope: !6649)
!6652 = !DILocation(line: 644, column: 8, scope: !6649)
!6653 = !DILocation(line: 644, column: 6, scope: !6577)
!6654 = !DILocation(line: 645, column: 3, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 644, column: 37)
!6656 = !DILocation(line: 648, column: 7, scope: !6655)
!6657 = !DILocation(line: 649, column: 3, scope: !6655)
!6658 = !DILocation(line: 651, column: 18, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6649, file: !3, line: 650, column: 9)
!6660 = !DILocation(line: 651, column: 10, scope: !6659)
!6661 = !DILocation(line: 651, column: 25, scope: !6659)
!6662 = !DILocation(line: 651, column: 31, scope: !6659)
!6663 = !DILocation(line: 651, column: 22, scope: !6659)
!6664 = !DILocation(line: 651, column: 51, scope: !6659)
!6665 = !DILocation(line: 652, column: 27, scope: !6659)
!6666 = !DILocation(line: 652, column: 31, scope: !6659)
!6667 = !DILocation(line: 652, column: 37, scope: !6659)
!6668 = !DILocation(line: 652, column: 29, scope: !6659)
!6669 = !DILocation(line: 652, column: 25, scope: !6659)
!6670 = !DILocation(line: 651, column: 7, scope: !6659)
!6671 = !DILocation(line: 644, column: 34, scope: !6649)
!6672 = !DILocation(line: 654, column: 1, scope: !6577)
!6673 = !DILocation(line: 655, column: 8, scope: !6577)
!6674 = !DILocation(line: 655, column: 2, scope: !6577)
!6675 = !DILocation(line: 656, column: 9, scope: !6577)
!6676 = !DILocation(line: 656, column: 2, scope: !6577)
!6677 = !DILocation(line: 657, column: 1, scope: !6577)
!6678 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6679, file: !6679, line: 80, type: !6680, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6685)
!6679 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6680 = !DISubroutineType(types: !6681)
!6681 = !{null, !6682, !1049}
!6682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6683, size: 64)
!6683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6684)
!6684 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6685 = !{!6686, !6687}
!6686 = !DILocalVariable(name: "v", arg: 1, scope: !6678, file: !6679, line: 80, type: !6682)
!6687 = !DILocalVariable(name: "size", arg: 2, scope: !6678, file: !6679, line: 80, type: !1049)
!6688 = !DILocation(line: 80, column: 74, scope: !6678)
!6689 = !DILocation(line: 80, column: 84, scope: !6678)
!6690 = !DILocation(line: 82, column: 20, scope: !6678)
!6691 = !DILocation(line: 82, column: 23, scope: !6678)
!6692 = !DILocation(line: 82, column: 2, scope: !6678)
!6693 = !DILocation(line: 83, column: 2, scope: !6678)
!6694 = !DILocation(line: 84, column: 1, scope: !6678)
!6695 = distinct !DISubprogram(name: "arch_set_bit", scope: !6696, file: !6696, line: 52, type: !4758, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6697)
!6696 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6697 = !{!6698, !6699}
!6698 = !DILocalVariable(name: "nr", arg: 1, scope: !6695, file: !6696, line: 52, type: !125)
!6699 = !DILocalVariable(name: "addr", arg: 2, scope: !6695, file: !6696, line: 52, type: !4760)
!6700 = !DILocation(line: 52, column: 19, scope: !6695)
!6701 = !DILocation(line: 52, column: 47, scope: !6695)
!6702 = !DILocation(line: 54, column: 27, scope: !6703)
!6703 = distinct !DILexicalBlock(scope: !6695, file: !6696, line: 54, column: 6)
!6704 = !DILocation(line: 54, column: 6, scope: !6703)
!6705 = !DILocation(line: 54, column: 6, scope: !6695)
!6706 = !DILocation(line: 56, column: 6, scope: !6707)
!6707 = distinct !DILexicalBlock(scope: !6703, file: !6696, line: 54, column: 32)
!6708 = !DILocation(line: 57, column: 12, scope: !6707)
!6709 = !DILocation(line: 55, column: 3, scope: !6707)
!6710 = !{i64 2148153548, i64 2148153587, i64 2148153608, i64 2148153645, i64 2148153668, i64 2148153538}
!6711 = !DILocation(line: 59, column: 2, scope: !6707)
!6712 = !DILocation(line: 61, column: 8, scope: !6713)
!6713 = distinct !DILexicalBlock(scope: !6703, file: !6696, line: 59, column: 9)
!6714 = !DILocation(line: 61, column: 32, scope: !6713)
!6715 = !DILocation(line: 60, column: 3, scope: !6713)
!6716 = !{i64 2148153833, i64 2148153872, i64 2148153893, i64 2148153930, i64 2148153953, i64 2148153823}
!6717 = !DILocation(line: 63, column: 1, scope: !6695)
!6718 = distinct !DISubprogram(name: "kasan_check_write", scope: !6719, file: !6719, line: 44, type: !6720, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6722)
!6719 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6720 = !DISubroutineType(types: !6721)
!6721 = !{!486, !6682, !7}
!6722 = !{!6723, !6724}
!6723 = !DILocalVariable(name: "p", arg: 1, scope: !6718, file: !6719, line: 44, type: !6682)
!6724 = !DILocalVariable(name: "size", arg: 2, scope: !6718, file: !6719, line: 44, type: !7)
!6725 = !DILocation(line: 44, column: 59, scope: !6718)
!6726 = !DILocation(line: 44, column: 75, scope: !6718)
!6727 = !DILocation(line: 46, column: 2, scope: !6718)
!6728 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6729, file: !6729, line: 229, type: !6730, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6732)
!6729 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6730 = !DISubroutineType(types: !6731)
!6731 = !{null, !6682, !1049, !118}
!6732 = !{!6733, !6734, !6735}
!6733 = !DILocalVariable(name: "ptr", arg: 1, scope: !6728, file: !6729, line: 229, type: !6682)
!6734 = !DILocalVariable(name: "size", arg: 2, scope: !6728, file: !6729, line: 229, type: !1049)
!6735 = !DILocalVariable(name: "type", arg: 3, scope: !6728, file: !6729, line: 230, type: !118)
!6736 = !DILocation(line: 229, column: 60, scope: !6728)
!6737 = !DILocation(line: 229, column: 72, scope: !6728)
!6738 = !DILocation(line: 230, column: 15, scope: !6728)
!6739 = !DILocation(line: 230, column: 23, scope: !6728)
!6740 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !6679, file: !6679, line: 66, type: !6680, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6741)
!6741 = !{!6742, !6743}
!6742 = !DILocalVariable(name: "v", arg: 1, scope: !6740, file: !6679, line: 66, type: !6682)
!6743 = !DILocalVariable(name: "size", arg: 2, scope: !6740, file: !6679, line: 66, type: !1049)
!6744 = !DILocation(line: 66, column: 73, scope: !6740)
!6745 = !DILocation(line: 66, column: 83, scope: !6740)
!6746 = !DILocation(line: 68, column: 19, scope: !6740)
!6747 = !DILocation(line: 68, column: 22, scope: !6740)
!6748 = !DILocation(line: 68, column: 2, scope: !6740)
!6749 = !DILocation(line: 69, column: 2, scope: !6740)
!6750 = !DILocation(line: 70, column: 1, scope: !6740)
!6751 = distinct !DISubprogram(name: "arch_test_bit", scope: !6696, file: !6696, line: 237, type: !4800, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6752)
!6752 = !{!6753, !6754}
!6753 = !DILocalVariable(name: "nr", arg: 1, scope: !6751, file: !6696, line: 237, type: !94)
!6754 = !DILocalVariable(name: "addr", arg: 2, scope: !6751, file: !6696, line: 237, type: !4802)
!6755 = !DILocation(line: 237, column: 29, scope: !6751)
!6756 = !DILocation(line: 237, column: 63, scope: !6751)
!6757 = !DILocation(line: 239, column: 30, scope: !6751)
!6758 = !DILocation(line: 239, column: 9, scope: !6751)
!6759 = !DILocation(line: 239, column: 54, scope: !6751)
!6760 = !DILocation(line: 239, column: 58, scope: !6751)
!6761 = !DILocation(line: 239, column: 36, scope: !6751)
!6762 = !DILocation(line: 240, column: 26, scope: !6751)
!6763 = !DILocation(line: 240, column: 30, scope: !6751)
!6764 = !DILocation(line: 240, column: 8, scope: !6751)
!6765 = !DILocation(line: 239, column: 2, scope: !6751)
!6766 = distinct !DISubprogram(name: "kasan_check_read", scope: !6719, file: !6719, line: 40, type: !6720, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6767)
!6767 = !{!6768, !6769}
!6768 = !DILocalVariable(name: "p", arg: 1, scope: !6766, file: !6719, line: 40, type: !6682)
!6769 = !DILocalVariable(name: "size", arg: 2, scope: !6766, file: !6719, line: 40, type: !7)
!6770 = !DILocation(line: 40, column: 58, scope: !6766)
!6771 = !DILocation(line: 40, column: 74, scope: !6766)
!6772 = !DILocation(line: 42, column: 2, scope: !6766)
!6773 = distinct !DISubprogram(name: "constant_test_bit", scope: !6696, file: !6696, line: 204, type: !6774, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6776)
!6774 = !DISubroutineType(types: !6775)
!6775 = !{!486, !125, !4802}
!6776 = !{!6777, !6778}
!6777 = !DILocalVariable(name: "nr", arg: 1, scope: !6773, file: !6696, line: 204, type: !125)
!6778 = !DILocalVariable(name: "addr", arg: 2, scope: !6773, file: !6696, line: 204, type: !4802)
!6779 = !DILocation(line: 204, column: 52, scope: !6773)
!6780 = !DILocation(line: 204, column: 86, scope: !6773)
!6781 = !DILocation(line: 206, column: 19, scope: !6773)
!6782 = !DILocation(line: 206, column: 22, scope: !6773)
!6783 = !DILocation(line: 206, column: 15, scope: !6773)
!6784 = !DILocation(line: 207, column: 4, scope: !6773)
!6785 = !DILocation(line: 207, column: 9, scope: !6773)
!6786 = !DILocation(line: 207, column: 12, scope: !6773)
!6787 = !DILocation(line: 206, column: 44, scope: !6773)
!6788 = !DILocation(line: 207, column: 37, scope: !6773)
!6789 = !DILocation(line: 206, column: 2, scope: !6773)
!6790 = distinct !DISubprogram(name: "variable_test_bit", scope: !6696, file: !6696, line: 224, type: !6774, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6791)
!6791 = !{!6792, !6793, !6794}
!6792 = !DILocalVariable(name: "nr", arg: 1, scope: !6790, file: !6696, line: 224, type: !125)
!6793 = !DILocalVariable(name: "addr", arg: 2, scope: !6790, file: !6696, line: 224, type: !4802)
!6794 = !DILocalVariable(name: "oldbit", scope: !6790, file: !6696, line: 226, type: !486)
!6795 = !DILocation(line: 224, column: 52, scope: !6790)
!6796 = !DILocation(line: 224, column: 86, scope: !6790)
!6797 = !DILocation(line: 226, column: 2, scope: !6790)
!6798 = !DILocation(line: 226, column: 7, scope: !6790)
!6799 = !DILocation(line: 231, column: 33, scope: !6790)
!6800 = !DILocation(line: 231, column: 46, scope: !6790)
!6801 = !DILocation(line: 228, column: 2, scope: !6790)
!6802 = !{i64 2148167160, i64 2148167234}
!6803 = !DILocation(line: 233, column: 9, scope: !6790)
!6804 = !DILocation(line: 234, column: 1, scope: !6790)
!6805 = !DILocation(line: 233, column: 2, scope: !6790)
!6806 = distinct !DISubprogram(name: "make_kuid", scope: !434, file: !434, line: 143, type: !6807, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6809)
!6807 = !DISubroutineType(types: !6808)
!6808 = !{!433, !906, !438}
!6809 = !{!6810, !6811}
!6810 = !DILocalVariable(name: "from", arg: 1, scope: !6806, file: !434, line: 143, type: !906)
!6811 = !DILocalVariable(name: "uid", arg: 2, scope: !6806, file: !434, line: 143, type: !438)
!6812 = !DILocation(line: 143, column: 55, scope: !6806)
!6813 = !DILocation(line: 143, column: 67, scope: !6806)
!6814 = !DILocation(line: 145, column: 9, scope: !6806)
!6815 = !DILocation(line: 145, column: 2, scope: !6806)
!6816 = distinct !DISubprogram(name: "make_kgid", scope: !434, file: !434, line: 148, type: !6817, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6819)
!6817 = !DISubroutineType(types: !6818)
!6818 = !{!442, !906, !446}
!6819 = !{!6820, !6821}
!6820 = !DILocalVariable(name: "from", arg: 1, scope: !6816, file: !434, line: 148, type: !906)
!6821 = !DILocalVariable(name: "gid", arg: 2, scope: !6816, file: !434, line: 148, type: !446)
!6822 = !DILocation(line: 148, column: 55, scope: !6816)
!6823 = !DILocation(line: 148, column: 67, scope: !6816)
!6824 = !DILocation(line: 150, column: 9, scope: !6816)
!6825 = !DILocation(line: 150, column: 2, scope: !6816)
!6826 = distinct !DISubprogram(name: "make_kprojid", scope: !2586, file: !2586, line: 65, type: !6827, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6829)
!6827 = !DISubroutineType(types: !6828)
!6828 = !{!2585, !906, !2590}
!6829 = !{!6830, !6831}
!6830 = !DILocalVariable(name: "from", arg: 1, scope: !6826, file: !2586, line: 65, type: !906)
!6831 = !DILocalVariable(name: "projid", arg: 2, scope: !6826, file: !2586, line: 65, type: !2590)
!6832 = !DILocation(line: 65, column: 61, scope: !6826)
!6833 = !DILocation(line: 65, column: 76, scope: !6826)
!6834 = !DILocation(line: 67, column: 9, scope: !6826)
!6835 = !DILocation(line: 67, column: 2, scope: !6826)
