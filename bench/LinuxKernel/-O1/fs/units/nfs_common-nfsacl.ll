; ModuleID = 'fs/nfs_common/nfsacl.c'
source_filename = "fs/nfs_common/nfsacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nfsacl_encode: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nfsacl_encode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nfs_stream_encode_acl: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nfs_stream_encode_acl ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nfsacl_decode: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nfsacl_decode ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_nfs_stream_decode_acl: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad nfs_stream_decode_acl ; .previous"

%struct.user_namespace = type opaque
%struct.nfsacl_encode_desc = type { %struct.xdr_array2_desc, i32, ptr, i32, %struct.kuid_t, %struct.kgid_t }
%struct.xdr_array2_desc = type { i32, i32, i32, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.nfsacl_simple_acl = type { %struct.posix_acl, [4 x %struct.posix_acl_entry] }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon.13 }
%union.anon.13 = type { %struct.kuid_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.14, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.15, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.16, ptr, %struct.address_space, %struct.list_head, %union.anon.17, i32, i32, ptr, ptr }
%union.anon.14 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.15 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.16 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.17 = type { ptr }
%struct.xdr_stream = type { ptr, ptr, ptr, ptr, %struct.kvec, ptr, ptr, i32, ptr }
%struct.kvec = type { ptr, i64 }
%struct.nfsacl_decode_desc = type { %struct.xdr_array2_desc, i32, ptr }

@__UNIQUE_ID_file292 = internal constant [35 x i8] c"nfs_acl.file=fs/nfs_common/nfs_acl\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"nfs_acl.license=GPL\00", section ".modinfo", align 1, !dbg !190
@__UNIQUE_ID___addressable_nfsacl_encode296 = internal global ptr @nfsacl_encode, section ".discard.addressable", align 8, !dbg !197
@__UNIQUE_ID___addressable_nfs_stream_encode_acl299 = internal global ptr @nfs_stream_encode_acl, section ".discard.addressable", align 8, !dbg !199
@__UNIQUE_ID___addressable_nfsacl_decode300 = internal global ptr @nfsacl_decode, section ".discard.addressable", align 8, !dbg !201
@__UNIQUE_ID___addressable_nfs_stream_decode_acl301 = internal global ptr @nfs_stream_decode_acl, section ".discard.addressable", align 8, !dbg !203
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__UNIQUE_ID___addressable_nfsacl_encode296, ptr @__UNIQUE_ID___addressable_nfs_stream_encode_acl299, ptr @__UNIQUE_ID___addressable_nfsacl_decode300, ptr @__UNIQUE_ID___addressable_nfs_stream_decode_acl301], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nfsacl_encode(ptr noundef %buf, i32 noundef %base, ptr noundef %inode, ptr noundef %acl, i32 noundef %encode_entries, i32 noundef %typeflag) #0 align 16 !dbg !217 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %acl.addr = alloca ptr, align 8
  %encode_entries.addr = alloca i32, align 4
  %typeflag.addr = alloca i32, align 4
  %entries = alloca i32, align 4
  %__UNIQUE_ID___x294 = alloca i32, align 4
  %__UNIQUE_ID___y295 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %nfsacl_desc = alloca %struct.nfsacl_encode_desc, align 8
  %aclbuf = alloca %struct.nfsacl_simple_acl, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %acl2 = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4185, metadata !DIExpression()), !dbg !4206
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4186, metadata !DIExpression()), !dbg !4207
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4187, metadata !DIExpression()), !dbg !4208
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !4188, metadata !DIExpression()), !dbg !4209
  store i32 %encode_entries, ptr %encode_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %encode_entries.addr, metadata !4189, metadata !DIExpression()), !dbg !4210
  store i32 %typeflag, ptr %typeflag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %typeflag.addr, metadata !4190, metadata !DIExpression()), !dbg !4211
  call void @llvm.lifetime.start.p0(i64 4, ptr %entries) #8, !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !4191, metadata !DIExpression()), !dbg !4213
  %0 = load ptr, ptr %acl.addr, align 8, !dbg !4214
  %tobool = icmp ne ptr %0, null, !dbg !4214
  br i1 %tobool, label %land.lhs.true, label %cond.false4, !dbg !4215

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %acl.addr, align 8, !dbg !4216
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2, !dbg !4217
  %2 = load i32, ptr %a_count, align 8, !dbg !4217
  %tobool1 = icmp ne i32 %2, 0, !dbg !4216
  br i1 %tobool1, label %cond.true, label %cond.false4, !dbg !4218

cond.true:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x294) #8, !dbg !4219
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x294, metadata !4192, metadata !DIExpression()), !dbg !4219
  %3 = load ptr, ptr %acl.addr, align 8, !dbg !4219
  %a_count2 = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 2, !dbg !4219
  %4 = load i32, ptr %a_count2, align 8, !dbg !4219
  store i32 %4, ptr %__UNIQUE_ID___x294, align 4, !dbg !4219
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y295) #8, !dbg !4219
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y295, metadata !4194, metadata !DIExpression()), !dbg !4219
  store i32 4, ptr %__UNIQUE_ID___y295, align 4, !dbg !4219
  %5 = load i32, ptr %__UNIQUE_ID___x294, align 4, !dbg !4219
  %6 = load i32, ptr %__UNIQUE_ID___y295, align 4, !dbg !4219
  %cmp = icmp sgt i32 %5, %6, !dbg !4219
  br i1 %cmp, label %cond.true3, label %cond.false, !dbg !4219

cond.true3:                                       ; preds = %cond.true
  %7 = load i32, ptr %__UNIQUE_ID___x294, align 4, !dbg !4219
  br label %cond.end, !dbg !4219

cond.false:                                       ; preds = %cond.true
  %8 = load i32, ptr %__UNIQUE_ID___y295, align 4, !dbg !4219
  br label %cond.end, !dbg !4219

cond.end:                                         ; preds = %cond.false, %cond.true3
  %cond = phi i32 [ %7, %cond.true3 ], [ %8, %cond.false ], !dbg !4219
  store i32 %cond, ptr %tmp, align 4, !dbg !4219
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y295) #8, !dbg !4220
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x294) #8, !dbg !4220
  %9 = load i32, ptr %tmp, align 4, !dbg !4219
  br label %cond.end5, !dbg !4218

cond.false4:                                      ; preds = %land.lhs.true, %entry
  br label %cond.end5, !dbg !4218

cond.end5:                                        ; preds = %cond.false4, %cond.end
  %cond6 = phi i32 [ %9, %cond.end ], [ 0, %cond.false4 ], !dbg !4218
  store i32 %cond6, ptr %entries, align 4, !dbg !4213
  call void @llvm.lifetime.start.p0(i64 56, ptr %nfsacl_desc) #8, !dbg !4221
  call void @llvm.dbg.declare(metadata ptr %nfsacl_desc, metadata !4195, metadata !DIExpression()), !dbg !4222
  %desc = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4223
  %elem_size = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 0, !dbg !4224
  store i32 12, ptr %elem_size, align 8, !dbg !4224
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 1, !dbg !4224
  %10 = load i32, ptr %encode_entries.addr, align 4, !dbg !4225
  %tobool7 = icmp ne i32 %10, 0, !dbg !4225
  br i1 %tobool7, label %cond.true8, label %cond.false9, !dbg !4225

cond.true8:                                       ; preds = %cond.end5
  %11 = load i32, ptr %entries, align 4, !dbg !4226
  br label %cond.end10, !dbg !4225

cond.false9:                                      ; preds = %cond.end5
  br label %cond.end10, !dbg !4225

cond.end10:                                       ; preds = %cond.false9, %cond.true8
  %cond11 = phi i32 [ %11, %cond.true8 ], [ 0, %cond.false9 ], !dbg !4225
  store i32 %cond11, ptr %array_len, align 4, !dbg !4224
  %array_maxlen = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 2, !dbg !4224
  store i32 0, ptr %array_maxlen, align 8, !dbg !4224
  %xcode = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 3, !dbg !4224
  store ptr @xdr_nfsace_encode, ptr %xcode, align 8, !dbg !4224
  %count = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 1, !dbg !4223
  store i32 0, ptr %count, align 8, !dbg !4223
  %acl12 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4223
  %12 = load ptr, ptr %acl.addr, align 8, !dbg !4227
  store ptr %12, ptr %acl12, align 8, !dbg !4223
  %typeflag13 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 3, !dbg !4223
  %13 = load i32, ptr %typeflag.addr, align 4, !dbg !4228
  store i32 %13, ptr %typeflag13, align 8, !dbg !4223
  %uid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 4, !dbg !4223
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !4229
  %i_uid = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 2, !dbg !4230
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %i_uid, i64 4, i1 false), !dbg !4230
  %gid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 5, !dbg !4223
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !4231
  %i_gid = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4, !dbg !4232
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid, ptr align 8 %i_gid, i64 4, i1 false), !dbg !4232
  call void @llvm.lifetime.start.p0(i64 64, ptr %aclbuf) #8, !dbg !4233
  call void @llvm.dbg.declare(metadata ptr %aclbuf, metadata !4196, metadata !DIExpression()), !dbg !4234
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !4235
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4202, metadata !DIExpression()), !dbg !4236
  %16 = load i32, ptr %entries, align 4, !dbg !4237
  %cmp14 = icmp sgt i32 %16, 1024, !dbg !4239
  br i1 %cmp14, label %if.then, label %lor.lhs.false, !dbg !4240

lor.lhs.false:                                    ; preds = %cond.end10
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !4241
  %18 = load i32, ptr %base.addr, align 4, !dbg !4242
  %19 = load i32, ptr %entries, align 4, !dbg !4243
  %call = call i32 @xdr_encode_word(ptr noundef %17, i32 noundef %18, i32 noundef %19) #9, !dbg !4244
  %tobool15 = icmp ne i32 %call, 0, !dbg !4244
  br i1 %tobool15, label %if.then, label %if.end, !dbg !4245

if.then:                                          ; preds = %lor.lhs.false, %cond.end10
  store i32 -22, ptr %retval, align 4, !dbg !4246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4246

if.end:                                           ; preds = %lor.lhs.false
  %20 = load i32, ptr %encode_entries.addr, align 4, !dbg !4247
  %tobool16 = icmp ne i32 %20, 0, !dbg !4247
  br i1 %tobool16, label %land.lhs.true17, label %if.end41, !dbg !4248

land.lhs.true17:                                  ; preds = %if.end
  %21 = load ptr, ptr %acl.addr, align 8, !dbg !4249
  %tobool18 = icmp ne ptr %21, null, !dbg !4249
  br i1 %tobool18, label %land.lhs.true19, label %if.end41, !dbg !4250

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %22 = load ptr, ptr %acl.addr, align 8, !dbg !4251
  %a_count20 = getelementptr inbounds %struct.posix_acl, ptr %22, i32 0, i32 2, !dbg !4252
  %23 = load i32, ptr %a_count20, align 8, !dbg !4252
  %cmp21 = icmp eq i32 %23, 3, !dbg !4253
  br i1 %cmp21, label %if.then22, label %if.end41, !dbg !4254

if.then22:                                        ; preds = %land.lhs.true19
  call void @llvm.lifetime.start.p0(i64 8, ptr %acl2) #8, !dbg !4255
  call void @llvm.dbg.declare(metadata ptr %acl2, metadata !4203, metadata !DIExpression()), !dbg !4256
  %acl23 = getelementptr inbounds %struct.nfsacl_simple_acl, ptr %aclbuf, i32 0, i32 0, !dbg !4257
  store ptr %acl23, ptr %acl2, align 8, !dbg !4256
  %24 = load ptr, ptr %acl2, align 8, !dbg !4258
  call void @posix_acl_init(ptr noundef %24, i32 noundef 4) #9, !dbg !4259
  %25 = load ptr, ptr %acl2, align 8, !dbg !4260
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %25, i32 0, i32 3, !dbg !4261
  %arrayidx = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries, i64 0, i64 0, !dbg !4260
  %26 = load ptr, ptr %acl.addr, align 8, !dbg !4262
  %a_entries24 = getelementptr inbounds %struct.posix_acl, ptr %26, i32 0, i32 3, !dbg !4263
  %arrayidx25 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries24, i64 0, i64 0, !dbg !4262
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %arrayidx25, i64 8, i1 false), !dbg !4262
  %27 = load ptr, ptr %acl2, align 8, !dbg !4264
  %a_entries26 = getelementptr inbounds %struct.posix_acl, ptr %27, i32 0, i32 3, !dbg !4265
  %arrayidx27 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries26, i64 0, i64 1, !dbg !4264
  %28 = load ptr, ptr %acl.addr, align 8, !dbg !4266
  %a_entries28 = getelementptr inbounds %struct.posix_acl, ptr %28, i32 0, i32 3, !dbg !4267
  %arrayidx29 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries28, i64 0, i64 1, !dbg !4266
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx27, ptr align 4 %arrayidx29, i64 8, i1 false), !dbg !4266
  %29 = load ptr, ptr %acl2, align 8, !dbg !4268
  %a_entries30 = getelementptr inbounds %struct.posix_acl, ptr %29, i32 0, i32 3, !dbg !4269
  %arrayidx31 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries30, i64 0, i64 2, !dbg !4268
  %30 = load ptr, ptr %acl.addr, align 8, !dbg !4270
  %a_entries32 = getelementptr inbounds %struct.posix_acl, ptr %30, i32 0, i32 3, !dbg !4271
  %arrayidx33 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries32, i64 0, i64 1, !dbg !4270
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx31, ptr align 4 %arrayidx33, i64 8, i1 false), !dbg !4270
  %31 = load ptr, ptr %acl2, align 8, !dbg !4272
  %a_entries34 = getelementptr inbounds %struct.posix_acl, ptr %31, i32 0, i32 3, !dbg !4273
  %arrayidx35 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries34, i64 0, i64 2, !dbg !4272
  %e_tag = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx35, i32 0, i32 0, !dbg !4274
  store i16 16, ptr %e_tag, align 4, !dbg !4275
  %32 = load ptr, ptr %acl2, align 8, !dbg !4276
  %a_entries36 = getelementptr inbounds %struct.posix_acl, ptr %32, i32 0, i32 3, !dbg !4277
  %arrayidx37 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries36, i64 0, i64 3, !dbg !4276
  %33 = load ptr, ptr %acl.addr, align 8, !dbg !4278
  %a_entries38 = getelementptr inbounds %struct.posix_acl, ptr %33, i32 0, i32 3, !dbg !4279
  %arrayidx39 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries38, i64 0, i64 2, !dbg !4278
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx37, ptr align 4 %arrayidx39, i64 8, i1 false), !dbg !4278
  %34 = load ptr, ptr %acl2, align 8, !dbg !4280
  %acl40 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4281
  store ptr %34, ptr %acl40, align 8, !dbg !4282
  call void @llvm.lifetime.end.p0(i64 8, ptr %acl2) #8, !dbg !4283
  br label %if.end41, !dbg !4284

if.end41:                                         ; preds = %if.then22, %land.lhs.true19, %land.lhs.true17, %if.end
  %35 = load ptr, ptr %buf.addr, align 8, !dbg !4285
  %36 = load i32, ptr %base.addr, align 4, !dbg !4286
  %add = add i32 %36, 4, !dbg !4287
  %desc42 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4288
  %call43 = call i32 @xdr_encode_array2(ptr noundef %35, i32 noundef %add, ptr noundef %desc42) #9, !dbg !4289
  store i32 %call43, ptr %err, align 4, !dbg !4290
  %37 = load i32, ptr %err, align 4, !dbg !4291
  %tobool44 = icmp ne i32 %37, 0, !dbg !4291
  br i1 %tobool44, label %if.end51, label %if.then45, !dbg !4293

if.then45:                                        ; preds = %if.end41
  %desc46 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4294
  %elem_size47 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc46, i32 0, i32 0, !dbg !4295
  %38 = load i32, ptr %elem_size47, align 8, !dbg !4295
  %desc48 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4296
  %array_len49 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc48, i32 0, i32 1, !dbg !4297
  %39 = load i32, ptr %array_len49, align 4, !dbg !4297
  %mul = mul i32 %38, %39, !dbg !4298
  %add50 = add i32 8, %mul, !dbg !4299
  store i32 %add50, ptr %err, align 4, !dbg !4300
  br label %if.end51, !dbg !4301

if.end51:                                         ; preds = %if.then45, %if.end41
  %40 = load i32, ptr %err, align 4, !dbg !4302
  store i32 %40, ptr %retval, align 4, !dbg !4303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4303

cleanup:                                          ; preds = %if.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !4304
  call void @llvm.lifetime.end.p0(i64 64, ptr %aclbuf) #8, !dbg !4304
  call void @llvm.lifetime.end.p0(i64 56, ptr %nfsacl_desc) #8, !dbg !4304
  call void @llvm.lifetime.end.p0(i64 4, ptr %entries) #8, !dbg !4304
  %41 = load i32, ptr %retval, align 4, !dbg !4304
  ret i32 %41, !dbg !4304
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xdr_nfsace_encode(ptr noundef %desc, ptr noundef %elem) #0 align 16 !dbg !4305 {
entry:
  %desc.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  %nfsacl_desc = alloca ptr, align 8
  %p = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4307, metadata !DIExpression()), !dbg !4314
  store ptr %elem, ptr %elem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !4308, metadata !DIExpression()), !dbg !4315
  call void @llvm.lifetime.start.p0(i64 8, ptr %nfsacl_desc) #8, !dbg !4316
  call void @llvm.dbg.declare(metadata ptr %nfsacl_desc, metadata !4309, metadata !DIExpression()), !dbg !4317
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4318
  store ptr %0, ptr %nfsacl_desc, align 8, !dbg !4317
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4319
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4310, metadata !DIExpression()), !dbg !4320
  %1 = load ptr, ptr %elem.addr, align 8, !dbg !4321
  store ptr %1, ptr %p, align 8, !dbg !4320
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !4322
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4312, metadata !DIExpression()), !dbg !4323
  %2 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4324
  %acl = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %2, i32 0, i32 2, !dbg !4325
  %3 = load ptr, ptr %acl, align 8, !dbg !4325
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 3, !dbg !4326
  %4 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4327
  %count = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %4, i32 0, i32 1, !dbg !4328
  %5 = load i32, ptr %count, align 8, !dbg !4329
  %inc = add i32 %5, 1, !dbg !4329
  store i32 %inc, ptr %count, align 8, !dbg !4329
  %idxprom = zext i32 %5 to i64, !dbg !4324
  %arrayidx = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries, i64 0, i64 %idxprom, !dbg !4324
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !4323
  %6 = load ptr, ptr %entry1, align 8, !dbg !4330
  %e_tag = getelementptr inbounds %struct.posix_acl_entry, ptr %6, i32 0, i32 0, !dbg !4330
  %7 = load i16, ptr %e_tag, align 4, !dbg !4330
  %conv = sext i16 %7 to i32, !dbg !4330
  %8 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4330
  %typeflag = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %8, i32 0, i32 3, !dbg !4330
  %9 = load i32, ptr %typeflag, align 8, !dbg !4330
  %or = or i32 %conv, %9, !dbg !4330
  %10 = call i32 @llvm.bswap.i32(i32 %or), !dbg !4330
  %11 = load ptr, ptr %p, align 8, !dbg !4331
  %incdec.ptr = getelementptr i32, ptr %11, i32 1, !dbg !4331
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !4331
  store i32 %10, ptr %11, align 4, !dbg !4332
  %12 = load ptr, ptr %entry1, align 8, !dbg !4333
  %e_tag2 = getelementptr inbounds %struct.posix_acl_entry, ptr %12, i32 0, i32 0, !dbg !4334
  %13 = load i16, ptr %e_tag2, align 4, !dbg !4334
  %conv3 = sext i16 %13 to i32, !dbg !4333
  switch i32 %conv3, label %sw.default [
    i32 1, label %sw.bb
    i32 4, label %sw.bb5
    i32 2, label %sw.bb9
    i32 8, label %sw.bb13
  ], !dbg !4335

sw.bb:                                            ; preds = %entry
  %14 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4336
  %uid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %14, i32 0, i32 4, !dbg !4336
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4336
  %15 = load i32, ptr %coerce.dive, align 4, !dbg !4336
  %call = call i32 @from_kuid(ptr noundef @init_user_ns, i32 %15) #9, !dbg !4336
  %16 = call i32 @llvm.bswap.i32(i32 %call), !dbg !4336
  %17 = load ptr, ptr %p, align 8, !dbg !4338
  %incdec.ptr4 = getelementptr i32, ptr %17, i32 1, !dbg !4338
  store ptr %incdec.ptr4, ptr %p, align 8, !dbg !4338
  store i32 %16, ptr %17, align 4, !dbg !4339
  br label %sw.epilog, !dbg !4340

sw.bb5:                                           ; preds = %entry
  %18 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4341
  %gid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %18, i32 0, i32 5, !dbg !4341
  %coerce.dive6 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4341
  %19 = load i32, ptr %coerce.dive6, align 8, !dbg !4341
  %call7 = call i32 @from_kgid(ptr noundef @init_user_ns, i32 %19) #9, !dbg !4341
  %20 = call i32 @llvm.bswap.i32(i32 %call7), !dbg !4341
  %21 = load ptr, ptr %p, align 8, !dbg !4342
  %incdec.ptr8 = getelementptr i32, ptr %21, i32 1, !dbg !4342
  store ptr %incdec.ptr8, ptr %p, align 8, !dbg !4342
  store i32 %20, ptr %21, align 4, !dbg !4343
  br label %sw.epilog, !dbg !4344

sw.bb9:                                           ; preds = %entry
  %22 = load ptr, ptr %entry1, align 8, !dbg !4345
  %23 = getelementptr inbounds %struct.posix_acl_entry, ptr %22, i32 0, i32 2, !dbg !4345
  %coerce.dive10 = getelementptr inbounds %struct.kuid_t, ptr %23, i32 0, i32 0, !dbg !4345
  %24 = load i32, ptr %coerce.dive10, align 4, !dbg !4345
  %call11 = call i32 @from_kuid(ptr noundef @init_user_ns, i32 %24) #9, !dbg !4345
  %25 = call i32 @llvm.bswap.i32(i32 %call11), !dbg !4345
  %26 = load ptr, ptr %p, align 8, !dbg !4346
  %incdec.ptr12 = getelementptr i32, ptr %26, i32 1, !dbg !4346
  store ptr %incdec.ptr12, ptr %p, align 8, !dbg !4346
  store i32 %25, ptr %26, align 4, !dbg !4347
  br label %sw.epilog, !dbg !4348

sw.bb13:                                          ; preds = %entry
  %27 = load ptr, ptr %entry1, align 8, !dbg !4349
  %28 = getelementptr inbounds %struct.posix_acl_entry, ptr %27, i32 0, i32 2, !dbg !4349
  %coerce.dive14 = getelementptr inbounds %struct.kgid_t, ptr %28, i32 0, i32 0, !dbg !4349
  %29 = load i32, ptr %coerce.dive14, align 4, !dbg !4349
  %call15 = call i32 @from_kgid(ptr noundef @init_user_ns, i32 %29) #9, !dbg !4349
  %30 = call i32 @llvm.bswap.i32(i32 %call15), !dbg !4349
  %31 = load ptr, ptr %p, align 8, !dbg !4350
  %incdec.ptr16 = getelementptr i32, ptr %31, i32 1, !dbg !4350
  store ptr %incdec.ptr16, ptr %p, align 8, !dbg !4350
  store i32 %30, ptr %31, align 4, !dbg !4351
  br label %sw.epilog, !dbg !4352

sw.default:                                       ; preds = %entry
  %32 = load ptr, ptr %p, align 8, !dbg !4353
  %incdec.ptr17 = getelementptr i32, ptr %32, i32 1, !dbg !4353
  store ptr %incdec.ptr17, ptr %p, align 8, !dbg !4353
  store i32 0, ptr %32, align 4, !dbg !4354
  br label %sw.epilog, !dbg !4355

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb9, %sw.bb5, %sw.bb
  %33 = load ptr, ptr %entry1, align 8, !dbg !4356
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %33, i32 0, i32 1, !dbg !4356
  %34 = load i16, ptr %e_perm, align 2, !dbg !4356
  %conv18 = zext i16 %34 to i32, !dbg !4356
  %and = and i32 %conv18, 7, !dbg !4356
  %35 = call i32 @llvm.bswap.i32(i32 %and), !dbg !4356
  %36 = load ptr, ptr %p, align 8, !dbg !4357
  %incdec.ptr19 = getelementptr i32, ptr %36, i32 1, !dbg !4357
  store ptr %incdec.ptr19, ptr %p, align 8, !dbg !4357
  store i32 %35, ptr %36, align 4, !dbg !4358
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !4359
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4359
  call void @llvm.lifetime.end.p0(i64 8, ptr %nfsacl_desc) #8, !dbg !4359
  ret i32 0, !dbg !4360
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4361 dso_local i32 @xdr_encode_word(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4366 dso_local void @posix_acl_init(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4369 dso_local i32 @xdr_encode_array2(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @nfs_stream_encode_acl(ptr noundef %xdr, ptr noundef %inode, ptr noundef %acl, i32 noundef %encode_entries, i32 noundef %typeflag) #0 align 16 !dbg !4372 {
entry:
  %retval = alloca i1, align 1
  %xdr.addr = alloca ptr, align 8
  %inode.addr = alloca ptr, align 8
  %acl.addr = alloca ptr, align 8
  %encode_entries.addr = alloca i32, align 4
  %typeflag.addr = alloca i32, align 4
  %elem_size = alloca i64, align 8
  %entries = alloca i32, align 4
  %__UNIQUE_ID___x297 = alloca i32, align 4
  %__UNIQUE_ID___y298 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %nfsacl_desc = alloca %struct.nfsacl_encode_desc, align 8
  %aclbuf = alloca %struct.nfsacl_simple_acl, align 8
  %base = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %acl2 = alloca ptr, align 8
  store ptr %xdr, ptr %xdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xdr.addr, metadata !4391, metadata !DIExpression()), !dbg !4409
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !4392, metadata !DIExpression()), !dbg !4410
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !4393, metadata !DIExpression()), !dbg !4411
  store i32 %encode_entries, ptr %encode_entries.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %encode_entries.addr, metadata !4394, metadata !DIExpression()), !dbg !4412
  store i32 %typeflag, ptr %typeflag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %typeflag.addr, metadata !4395, metadata !DIExpression()), !dbg !4413
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_size) #8, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %elem_size, metadata !4396, metadata !DIExpression()), !dbg !4415
  store i64 12, ptr %elem_size, align 8, !dbg !4415
  call void @llvm.lifetime.start.p0(i64 4, ptr %entries) #8, !dbg !4416
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !4398, metadata !DIExpression()), !dbg !4417
  %0 = load ptr, ptr %acl.addr, align 8, !dbg !4418
  %tobool = icmp ne ptr %0, null, !dbg !4418
  br i1 %tobool, label %land.lhs.true, label %cond.false4, !dbg !4419

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %acl.addr, align 8, !dbg !4420
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 2, !dbg !4421
  %2 = load i32, ptr %a_count, align 8, !dbg !4421
  %tobool1 = icmp ne i32 %2, 0, !dbg !4420
  br i1 %tobool1, label %cond.true, label %cond.false4, !dbg !4422

cond.true:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x297) #8, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x297, metadata !4399, metadata !DIExpression()), !dbg !4423
  %3 = load ptr, ptr %acl.addr, align 8, !dbg !4423
  %a_count2 = getelementptr inbounds %struct.posix_acl, ptr %3, i32 0, i32 2, !dbg !4423
  %4 = load i32, ptr %a_count2, align 8, !dbg !4423
  store i32 %4, ptr %__UNIQUE_ID___x297, align 4, !dbg !4423
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y298) #8, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y298, metadata !4401, metadata !DIExpression()), !dbg !4423
  store i32 4, ptr %__UNIQUE_ID___y298, align 4, !dbg !4423
  %5 = load i32, ptr %__UNIQUE_ID___x297, align 4, !dbg !4423
  %6 = load i32, ptr %__UNIQUE_ID___y298, align 4, !dbg !4423
  %cmp = icmp sgt i32 %5, %6, !dbg !4423
  br i1 %cmp, label %cond.true3, label %cond.false, !dbg !4423

cond.true3:                                       ; preds = %cond.true
  %7 = load i32, ptr %__UNIQUE_ID___x297, align 4, !dbg !4423
  br label %cond.end, !dbg !4423

cond.false:                                       ; preds = %cond.true
  %8 = load i32, ptr %__UNIQUE_ID___y298, align 4, !dbg !4423
  br label %cond.end, !dbg !4423

cond.end:                                         ; preds = %cond.false, %cond.true3
  %cond = phi i32 [ %7, %cond.true3 ], [ %8, %cond.false ], !dbg !4423
  store i32 %cond, ptr %tmp, align 4, !dbg !4423
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y298) #8, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x297) #8, !dbg !4424
  %9 = load i32, ptr %tmp, align 4, !dbg !4423
  br label %cond.end5, !dbg !4422

cond.false4:                                      ; preds = %land.lhs.true, %entry
  br label %cond.end5, !dbg !4422

cond.end5:                                        ; preds = %cond.false4, %cond.end
  %cond6 = phi i32 [ %9, %cond.end ], [ 0, %cond.false4 ], !dbg !4422
  store i32 %cond6, ptr %entries, align 4, !dbg !4417
  call void @llvm.lifetime.start.p0(i64 56, ptr %nfsacl_desc) #8, !dbg !4425
  call void @llvm.dbg.declare(metadata ptr %nfsacl_desc, metadata !4402, metadata !DIExpression()), !dbg !4426
  %desc = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4427
  %elem_size7 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 0, !dbg !4428
  store i32 12, ptr %elem_size7, align 8, !dbg !4428
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 1, !dbg !4428
  %10 = load i32, ptr %encode_entries.addr, align 4, !dbg !4429
  %tobool8 = icmp ne i32 %10, 0, !dbg !4429
  br i1 %tobool8, label %cond.true9, label %cond.false10, !dbg !4429

cond.true9:                                       ; preds = %cond.end5
  %11 = load i32, ptr %entries, align 4, !dbg !4430
  br label %cond.end11, !dbg !4429

cond.false10:                                     ; preds = %cond.end5
  br label %cond.end11, !dbg !4429

cond.end11:                                       ; preds = %cond.false10, %cond.true9
  %cond12 = phi i32 [ %11, %cond.true9 ], [ 0, %cond.false10 ], !dbg !4429
  store i32 %cond12, ptr %array_len, align 4, !dbg !4428
  %array_maxlen = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 2, !dbg !4428
  store i32 0, ptr %array_maxlen, align 8, !dbg !4428
  %xcode = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 3, !dbg !4428
  store ptr @xdr_nfsace_encode, ptr %xcode, align 8, !dbg !4428
  %count = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 1, !dbg !4427
  store i32 0, ptr %count, align 8, !dbg !4427
  %acl13 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4427
  %12 = load ptr, ptr %acl.addr, align 8, !dbg !4431
  store ptr %12, ptr %acl13, align 8, !dbg !4427
  %typeflag14 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 3, !dbg !4427
  %13 = load i32, ptr %typeflag.addr, align 4, !dbg !4432
  store i32 %13, ptr %typeflag14, align 8, !dbg !4427
  %uid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 4, !dbg !4427
  %14 = load ptr, ptr %inode.addr, align 8, !dbg !4433
  %i_uid = getelementptr inbounds %struct.inode, ptr %14, i32 0, i32 2, !dbg !4434
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %i_uid, i64 4, i1 false), !dbg !4434
  %gid = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 5, !dbg !4427
  %15 = load ptr, ptr %inode.addr, align 8, !dbg !4435
  %i_gid = getelementptr inbounds %struct.inode, ptr %15, i32 0, i32 4, !dbg !4436
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %gid, ptr align 8 %i_gid, i64 4, i1 false), !dbg !4436
  call void @llvm.lifetime.start.p0(i64 64, ptr %aclbuf) #8, !dbg !4437
  call void @llvm.dbg.declare(metadata ptr %aclbuf, metadata !4403, metadata !DIExpression()), !dbg !4438
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #8, !dbg !4439
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4404, metadata !DIExpression()), !dbg !4440
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !4441
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4405, metadata !DIExpression()), !dbg !4442
  %16 = load i32, ptr %entries, align 4, !dbg !4443
  %cmp15 = icmp ugt i32 %16, 1024, !dbg !4445
  br i1 %cmp15, label %if.then, label %if.end, !dbg !4446

if.then:                                          ; preds = %cond.end11
  store i1 false, ptr %retval, align 1, !dbg !4447
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4447

if.end:                                           ; preds = %cond.end11
  %17 = load ptr, ptr %xdr.addr, align 8, !dbg !4448
  %18 = load i32, ptr %entries, align 4, !dbg !4450
  %call = call i64 @xdr_stream_encode_u32(ptr noundef %17, i32 noundef %18) #9, !dbg !4451
  %cmp16 = icmp slt i64 %call, 0, !dbg !4452
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !4453

if.then17:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4454

if.end18:                                         ; preds = %if.end
  %19 = load i32, ptr %encode_entries.addr, align 4, !dbg !4455
  %tobool19 = icmp ne i32 %19, 0, !dbg !4455
  br i1 %tobool19, label %land.lhs.true20, label %if.end44, !dbg !4456

land.lhs.true20:                                  ; preds = %if.end18
  %20 = load ptr, ptr %acl.addr, align 8, !dbg !4457
  %tobool21 = icmp ne ptr %20, null, !dbg !4457
  br i1 %tobool21, label %land.lhs.true22, label %if.end44, !dbg !4458

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %21 = load ptr, ptr %acl.addr, align 8, !dbg !4459
  %a_count23 = getelementptr inbounds %struct.posix_acl, ptr %21, i32 0, i32 2, !dbg !4460
  %22 = load i32, ptr %a_count23, align 8, !dbg !4460
  %cmp24 = icmp eq i32 %22, 3, !dbg !4461
  br i1 %cmp24, label %if.then25, label %if.end44, !dbg !4462

if.then25:                                        ; preds = %land.lhs.true22
  call void @llvm.lifetime.start.p0(i64 8, ptr %acl2) #8, !dbg !4463
  call void @llvm.dbg.declare(metadata ptr %acl2, metadata !4406, metadata !DIExpression()), !dbg !4464
  %acl26 = getelementptr inbounds %struct.nfsacl_simple_acl, ptr %aclbuf, i32 0, i32 0, !dbg !4465
  store ptr %acl26, ptr %acl2, align 8, !dbg !4464
  %23 = load ptr, ptr %acl2, align 8, !dbg !4466
  call void @posix_acl_init(ptr noundef %23, i32 noundef 4) #9, !dbg !4467
  %24 = load ptr, ptr %acl2, align 8, !dbg !4468
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %24, i32 0, i32 3, !dbg !4469
  %arrayidx = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries, i64 0, i64 0, !dbg !4468
  %25 = load ptr, ptr %acl.addr, align 8, !dbg !4470
  %a_entries27 = getelementptr inbounds %struct.posix_acl, ptr %25, i32 0, i32 3, !dbg !4471
  %arrayidx28 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries27, i64 0, i64 0, !dbg !4470
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx, ptr align 4 %arrayidx28, i64 8, i1 false), !dbg !4470
  %26 = load ptr, ptr %acl2, align 8, !dbg !4472
  %a_entries29 = getelementptr inbounds %struct.posix_acl, ptr %26, i32 0, i32 3, !dbg !4473
  %arrayidx30 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries29, i64 0, i64 1, !dbg !4472
  %27 = load ptr, ptr %acl.addr, align 8, !dbg !4474
  %a_entries31 = getelementptr inbounds %struct.posix_acl, ptr %27, i32 0, i32 3, !dbg !4475
  %arrayidx32 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries31, i64 0, i64 1, !dbg !4474
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx30, ptr align 4 %arrayidx32, i64 8, i1 false), !dbg !4474
  %28 = load ptr, ptr %acl2, align 8, !dbg !4476
  %a_entries33 = getelementptr inbounds %struct.posix_acl, ptr %28, i32 0, i32 3, !dbg !4477
  %arrayidx34 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries33, i64 0, i64 2, !dbg !4476
  %29 = load ptr, ptr %acl.addr, align 8, !dbg !4478
  %a_entries35 = getelementptr inbounds %struct.posix_acl, ptr %29, i32 0, i32 3, !dbg !4479
  %arrayidx36 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries35, i64 0, i64 1, !dbg !4478
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx34, ptr align 4 %arrayidx36, i64 8, i1 false), !dbg !4478
  %30 = load ptr, ptr %acl2, align 8, !dbg !4480
  %a_entries37 = getelementptr inbounds %struct.posix_acl, ptr %30, i32 0, i32 3, !dbg !4481
  %arrayidx38 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries37, i64 0, i64 2, !dbg !4480
  %e_tag = getelementptr inbounds %struct.posix_acl_entry, ptr %arrayidx38, i32 0, i32 0, !dbg !4482
  store i16 16, ptr %e_tag, align 4, !dbg !4483
  %31 = load ptr, ptr %acl2, align 8, !dbg !4484
  %a_entries39 = getelementptr inbounds %struct.posix_acl, ptr %31, i32 0, i32 3, !dbg !4485
  %arrayidx40 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries39, i64 0, i64 3, !dbg !4484
  %32 = load ptr, ptr %acl.addr, align 8, !dbg !4486
  %a_entries41 = getelementptr inbounds %struct.posix_acl, ptr %32, i32 0, i32 3, !dbg !4487
  %arrayidx42 = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries41, i64 0, i64 2, !dbg !4486
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx40, ptr align 4 %arrayidx42, i64 8, i1 false), !dbg !4486
  %33 = load ptr, ptr %acl2, align 8, !dbg !4488
  %acl43 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4489
  store ptr %33, ptr %acl43, align 8, !dbg !4490
  call void @llvm.lifetime.end.p0(i64 8, ptr %acl2) #8, !dbg !4491
  br label %if.end44, !dbg !4492

if.end44:                                         ; preds = %if.then25, %land.lhs.true22, %land.lhs.true20, %if.end18
  %34 = load ptr, ptr %xdr.addr, align 8, !dbg !4493
  %call45 = call i32 @xdr_stream_pos(ptr noundef %34) #9, !dbg !4494
  store i32 %call45, ptr %base, align 4, !dbg !4495
  %35 = load ptr, ptr %xdr.addr, align 8, !dbg !4496
  %desc46 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4498
  %array_len47 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc46, i32 0, i32 1, !dbg !4499
  %36 = load i32, ptr %array_len47, align 4, !dbg !4499
  %conv = zext i32 %36 to i64, !dbg !4500
  %mul = mul i64 12, %conv, !dbg !4501
  %add = add i64 4, %mul, !dbg !4502
  %call48 = call ptr @xdr_reserve_space(ptr noundef %35, i64 noundef %add) #9, !dbg !4503
  %tobool49 = icmp ne ptr %call48, null, !dbg !4503
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !4504

if.then50:                                        ; preds = %if.end44
  store i1 false, ptr %retval, align 1, !dbg !4505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4505

if.end51:                                         ; preds = %if.end44
  %37 = load ptr, ptr %xdr.addr, align 8, !dbg !4506
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %37, i32 0, i32 1, !dbg !4507
  %38 = load ptr, ptr %buf, align 8, !dbg !4507
  %39 = load i32, ptr %base, align 4, !dbg !4508
  %desc52 = getelementptr inbounds %struct.nfsacl_encode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4509
  %call53 = call i32 @xdr_encode_array2(ptr noundef %38, i32 noundef %39, ptr noundef %desc52) #9, !dbg !4510
  store i32 %call53, ptr %err, align 4, !dbg !4511
  %40 = load i32, ptr %err, align 4, !dbg !4512
  %tobool54 = icmp ne i32 %40, 0, !dbg !4512
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4514

if.then55:                                        ; preds = %if.end51
  store i1 false, ptr %retval, align 1, !dbg !4515
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4515

if.end56:                                         ; preds = %if.end51
  store i1 true, ptr %retval, align 1, !dbg !4516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4516

cleanup:                                          ; preds = %if.end56, %if.then55, %if.then50, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #8, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 64, ptr %aclbuf) #8, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 56, ptr %nfsacl_desc) #8, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 4, ptr %entries) #8, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_size) #8, !dbg !4517
  %41 = load i1, ptr %retval, align 1, !dbg !4517
  ret i1 %41, !dbg !4517
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xdr_stream_encode_u32(ptr noundef %xdr, i32 noundef %n) #5 align 16 !dbg !4518 {
entry:
  %retval = alloca i64, align 8
  %xdr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %xdr, ptr %xdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xdr.addr, metadata !4522, metadata !DIExpression()), !dbg !4526
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4523, metadata !DIExpression()), !dbg !4527
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #8, !dbg !4528
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4524, metadata !DIExpression()), !dbg !4529
  store i64 4, ptr %len, align 8, !dbg !4529
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4530
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4525, metadata !DIExpression()), !dbg !4531
  %0 = load ptr, ptr %xdr.addr, align 8, !dbg !4532
  %call = call ptr @xdr_reserve_space(ptr noundef %0, i64 noundef 4) #9, !dbg !4533
  store ptr %call, ptr %p, align 8, !dbg !4531
  %1 = load ptr, ptr %p, align 8, !dbg !4534
  %tobool = icmp ne ptr %1, null, !dbg !4534
  %lnot = xor i1 %tobool, true, !dbg !4534
  %lnot1 = xor i1 %lnot, true, !dbg !4534
  %lnot2 = xor i1 %lnot1, true, !dbg !4534
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4534
  %conv = sext i32 %lnot.ext to i64, !dbg !4534
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4534
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4534
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4536

if.then:                                          ; preds = %entry
  store i64 -90, ptr %retval, align 8, !dbg !4537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4537

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %n.addr, align 4, !dbg !4538
  %3 = call i32 @llvm.bswap.i32(i32 %2), !dbg !4538
  %4 = load ptr, ptr %p, align 8, !dbg !4539
  store i32 %3, ptr %4, align 4, !dbg !4540
  store i64 4, ptr %retval, align 8, !dbg !4541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4541

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #8, !dbg !4542
  %5 = load i64, ptr %retval, align 8, !dbg !4542
  ret i64 %5, !dbg !4542
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4543 dso_local i32 @xdr_stream_pos(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4548 dso_local ptr @xdr_reserve_space(ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nfsacl_decode(ptr noundef %buf, i32 noundef %base, ptr noundef %aclcnt, ptr noundef %pacl) #0 align 16 !dbg !4551 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %aclcnt.addr = alloca ptr, align 8
  %pacl.addr = alloca ptr, align 8
  %nfsacl_desc = alloca %struct.nfsacl_decode_desc, align 8
  %entries = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4556, metadata !DIExpression()), !dbg !4563
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4557, metadata !DIExpression()), !dbg !4564
  store ptr %aclcnt, ptr %aclcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aclcnt.addr, metadata !4558, metadata !DIExpression()), !dbg !4565
  store ptr %pacl, ptr %pacl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pacl.addr, metadata !4559, metadata !DIExpression()), !dbg !4566
  call void @llvm.lifetime.start.p0(i64 40, ptr %nfsacl_desc) #8, !dbg !4567
  call void @llvm.dbg.declare(metadata ptr %nfsacl_desc, metadata !4560, metadata !DIExpression()), !dbg !4568
  %desc = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4569
  %elem_size = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 0, !dbg !4570
  store i32 12, ptr %elem_size, align 8, !dbg !4570
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 1, !dbg !4570
  store i32 0, ptr %array_len, align 4, !dbg !4570
  %array_maxlen = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 2, !dbg !4570
  store i32 0, ptr %array_maxlen, align 8, !dbg !4570
  %xcode = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 3, !dbg !4570
  %0 = load ptr, ptr %pacl.addr, align 8, !dbg !4571
  %tobool = icmp ne ptr %0, null, !dbg !4571
  %1 = zext i1 %tobool to i64, !dbg !4571
  %cond = select i1 %tobool, ptr @xdr_nfsace_decode, ptr null, !dbg !4571
  store ptr %cond, ptr %xcode, align 8, !dbg !4570
  %count = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 1, !dbg !4569
  store i32 0, ptr %count, align 8, !dbg !4569
  %acl = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4569
  store ptr null, ptr %acl, align 8, !dbg !4569
  call void @llvm.lifetime.start.p0(i64 4, ptr %entries) #8, !dbg !4572
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !4561, metadata !DIExpression()), !dbg !4573
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #8, !dbg !4574
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4562, metadata !DIExpression()), !dbg !4575
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4576
  %3 = load i32, ptr %base.addr, align 4, !dbg !4578
  %call = call i32 @xdr_decode_word(ptr noundef %2, i32 noundef %3, ptr noundef %entries) #9, !dbg !4579
  %tobool1 = icmp ne i32 %call, 0, !dbg !4579
  br i1 %tobool1, label %if.then, label %lor.lhs.false, !dbg !4580

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %entries, align 4, !dbg !4581
  %cmp = icmp ugt i32 %4, 1024, !dbg !4582
  br i1 %cmp, label %if.then, label %if.end, !dbg !4583

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !4584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4584

if.end:                                           ; preds = %lor.lhs.false
  %5 = load i32, ptr %entries, align 4, !dbg !4585
  %desc2 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4586
  %array_maxlen3 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc2, i32 0, i32 2, !dbg !4587
  store i32 %5, ptr %array_maxlen3, align 8, !dbg !4588
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !4589
  %7 = load i32, ptr %base.addr, align 4, !dbg !4590
  %add = add i32 %7, 4, !dbg !4591
  %desc4 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4592
  %call5 = call i32 @xdr_decode_array2(ptr noundef %6, i32 noundef %add, ptr noundef %desc4) #9, !dbg !4593
  store i32 %call5, ptr %err, align 4, !dbg !4594
  %8 = load i32, ptr %err, align 4, !dbg !4595
  %tobool6 = icmp ne i32 %8, 0, !dbg !4595
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4597

if.then7:                                         ; preds = %if.end
  %9 = load i32, ptr %err, align 4, !dbg !4598
  store i32 %9, ptr %retval, align 4, !dbg !4599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4599

if.end8:                                          ; preds = %if.end
  %10 = load ptr, ptr %pacl.addr, align 8, !dbg !4600
  %tobool9 = icmp ne ptr %10, null, !dbg !4600
  br i1 %tobool9, label %if.then10, label %if.end22, !dbg !4602

if.then10:                                        ; preds = %if.end8
  %11 = load i32, ptr %entries, align 4, !dbg !4603
  %desc11 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4606
  %array_len12 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc11, i32 0, i32 1, !dbg !4607
  %12 = load i32, ptr %array_len12, align 4, !dbg !4607
  %cmp13 = icmp ne i32 %11, %12, !dbg !4608
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14, !dbg !4609

lor.lhs.false14:                                  ; preds = %if.then10
  %acl15 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4610
  %13 = load ptr, ptr %acl15, align 8, !dbg !4610
  %call16 = call i32 @posix_acl_from_nfsacl(ptr noundef %13) #9, !dbg !4611
  %cmp17 = icmp ne i32 %call16, 0, !dbg !4612
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !4613

if.then18:                                        ; preds = %lor.lhs.false14, %if.then10
  %acl19 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4614
  %14 = load ptr, ptr %acl19, align 8, !dbg !4614
  call void @posix_acl_release(ptr noundef %14) #9, !dbg !4616
  store i32 -22, ptr %retval, align 4, !dbg !4617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4617

if.end20:                                         ; preds = %lor.lhs.false14
  %acl21 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4618
  %15 = load ptr, ptr %acl21, align 8, !dbg !4618
  %16 = load ptr, ptr %pacl.addr, align 8, !dbg !4619
  store ptr %15, ptr %16, align 8, !dbg !4620
  br label %if.end22, !dbg !4621

if.end22:                                         ; preds = %if.end20, %if.end8
  %17 = load ptr, ptr %aclcnt.addr, align 8, !dbg !4622
  %tobool23 = icmp ne ptr %17, null, !dbg !4622
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4624

if.then24:                                        ; preds = %if.end22
  %18 = load i32, ptr %entries, align 4, !dbg !4625
  %19 = load ptr, ptr %aclcnt.addr, align 8, !dbg !4626
  store i32 %18, ptr %19, align 4, !dbg !4627
  br label %if.end25, !dbg !4628

if.end25:                                         ; preds = %if.then24, %if.end22
  %desc26 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4629
  %elem_size27 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc26, i32 0, i32 0, !dbg !4630
  %20 = load i32, ptr %elem_size27, align 8, !dbg !4630
  %desc28 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4631
  %array_len29 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc28, i32 0, i32 1, !dbg !4632
  %21 = load i32, ptr %array_len29, align 4, !dbg !4632
  %mul = mul i32 %20, %21, !dbg !4633
  %add30 = add i32 8, %mul, !dbg !4634
  store i32 %add30, ptr %retval, align 4, !dbg !4635
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4635

cleanup:                                          ; preds = %if.end25, %if.then18, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #8, !dbg !4636
  call void @llvm.lifetime.end.p0(i64 4, ptr %entries) #8, !dbg !4636
  call void @llvm.lifetime.end.p0(i64 40, ptr %nfsacl_desc) #8, !dbg !4636
  %22 = load i32, ptr %retval, align 4, !dbg !4636
  ret i32 %22, !dbg !4636
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xdr_nfsace_decode(ptr noundef %desc, ptr noundef %elem) #0 align 16 !dbg !4637 {
entry:
  %retval = alloca i32, align 4
  %desc.addr = alloca ptr, align 8
  %elem.addr = alloca ptr, align 8
  %nfsacl_desc = alloca ptr, align 8
  %p = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %id = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.kuid_t, align 4
  %tmp23 = alloca %struct.kgid_t, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4639, metadata !DIExpression()), !dbg !4645
  store ptr %elem, ptr %elem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !4640, metadata !DIExpression()), !dbg !4646
  call void @llvm.lifetime.start.p0(i64 8, ptr %nfsacl_desc) #8, !dbg !4647
  call void @llvm.dbg.declare(metadata ptr %nfsacl_desc, metadata !4641, metadata !DIExpression()), !dbg !4648
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4649
  store ptr %0, ptr %nfsacl_desc, align 8, !dbg !4648
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4650
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4642, metadata !DIExpression()), !dbg !4651
  %1 = load ptr, ptr %elem.addr, align 8, !dbg !4652
  store ptr %1, ptr %p, align 8, !dbg !4651
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #8, !dbg !4653
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4643, metadata !DIExpression()), !dbg !4654
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #8, !dbg !4655
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4644, metadata !DIExpression()), !dbg !4656
  %2 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4657
  %acl = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %2, i32 0, i32 2, !dbg !4659
  %3 = load ptr, ptr %acl, align 8, !dbg !4659
  %tobool = icmp ne ptr %3, null, !dbg !4657
  br i1 %tobool, label %if.end9, label %if.then, !dbg !4660

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %desc.addr, align 8, !dbg !4661
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %4, i32 0, i32 1, !dbg !4664
  %5 = load i32, ptr %array_len, align 4, !dbg !4664
  %cmp = icmp ugt i32 %5, 1024, !dbg !4665
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4666

if.then2:                                         ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !4667
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4667

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %desc.addr, align 8, !dbg !4668
  %array_len3 = getelementptr inbounds %struct.xdr_array2_desc, ptr %6, i32 0, i32 1, !dbg !4669
  %7 = load i32, ptr %array_len3, align 4, !dbg !4669
  %call = call ptr @posix_acl_alloc(i32 noundef %7, i32 noundef 3264) #9, !dbg !4670
  %8 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4671
  %acl4 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %8, i32 0, i32 2, !dbg !4672
  store ptr %call, ptr %acl4, align 8, !dbg !4673
  %9 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4674
  %acl5 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %9, i32 0, i32 2, !dbg !4676
  %10 = load ptr, ptr %acl5, align 8, !dbg !4676
  %tobool6 = icmp ne ptr %10, null, !dbg !4674
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4677

if.then7:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !4678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4678

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4679
  %count = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %11, i32 0, i32 1, !dbg !4680
  store i32 0, ptr %count, align 8, !dbg !4681
  br label %if.end9, !dbg !4682

if.end9:                                          ; preds = %if.end8, %entry
  %12 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4683
  %acl10 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %12, i32 0, i32 2, !dbg !4684
  %13 = load ptr, ptr %acl10, align 8, !dbg !4684
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %13, i32 0, i32 3, !dbg !4685
  %14 = load ptr, ptr %nfsacl_desc, align 8, !dbg !4686
  %count11 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %14, i32 0, i32 1, !dbg !4687
  %15 = load i32, ptr %count11, align 8, !dbg !4688
  %inc = add i32 %15, 1, !dbg !4688
  store i32 %inc, ptr %count11, align 8, !dbg !4688
  %idxprom = zext i32 %15 to i64, !dbg !4683
  %arrayidx = getelementptr [0 x %struct.posix_acl_entry], ptr %a_entries, i64 0, i64 %idxprom, !dbg !4683
  store ptr %arrayidx, ptr %entry1, align 8, !dbg !4689
  %16 = load ptr, ptr %p, align 8, !dbg !4690
  %incdec.ptr = getelementptr i32, ptr %16, i32 1, !dbg !4690
  store ptr %incdec.ptr, ptr %p, align 8, !dbg !4690
  %17 = load i32, ptr %16, align 4, !dbg !4690
  %18 = call i32 @llvm.bswap.i32(i32 %17), !dbg !4690
  %and = and i32 %18, -4097, !dbg !4691
  %conv = trunc i32 %and to i16, !dbg !4690
  %19 = load ptr, ptr %entry1, align 8, !dbg !4692
  %e_tag = getelementptr inbounds %struct.posix_acl_entry, ptr %19, i32 0, i32 0, !dbg !4693
  store i16 %conv, ptr %e_tag, align 4, !dbg !4694
  %20 = load ptr, ptr %p, align 8, !dbg !4695
  %incdec.ptr12 = getelementptr i32, ptr %20, i32 1, !dbg !4695
  store ptr %incdec.ptr12, ptr %p, align 8, !dbg !4695
  %21 = load i32, ptr %20, align 4, !dbg !4695
  %22 = call i32 @llvm.bswap.i32(i32 %21), !dbg !4695
  store i32 %22, ptr %id, align 4, !dbg !4696
  %23 = load ptr, ptr %p, align 8, !dbg !4697
  %incdec.ptr13 = getelementptr i32, ptr %23, i32 1, !dbg !4697
  store ptr %incdec.ptr13, ptr %p, align 8, !dbg !4697
  %24 = load i32, ptr %23, align 4, !dbg !4697
  %25 = call i32 @llvm.bswap.i32(i32 %24), !dbg !4697
  %conv14 = trunc i32 %25 to i16, !dbg !4697
  %26 = load ptr, ptr %entry1, align 8, !dbg !4698
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %26, i32 0, i32 1, !dbg !4699
  store i16 %conv14, ptr %e_perm, align 2, !dbg !4700
  %27 = load ptr, ptr %entry1, align 8, !dbg !4701
  %e_tag15 = getelementptr inbounds %struct.posix_acl_entry, ptr %27, i32 0, i32 0, !dbg !4702
  %28 = load i16, ptr %e_tag15, align 4, !dbg !4702
  %conv16 = sext i16 %28 to i32, !dbg !4701
  switch i32 %conv16, label %sw.default [
    i32 2, label %sw.bb
    i32 8, label %sw.bb22
    i32 1, label %sw.bb30
    i32 4, label %sw.bb30
    i32 32, label %sw.bb30
    i32 16, label %sw.bb37
  ], !dbg !4703

sw.bb:                                            ; preds = %if.end9
  %29 = load ptr, ptr %entry1, align 8, !dbg !4704
  %30 = getelementptr inbounds %struct.posix_acl_entry, ptr %29, i32 0, i32 2, !dbg !4706
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #8, !dbg !4707
  %31 = load i32, ptr %id, align 4, !dbg !4708
  %call17 = call i32 @make_kuid(ptr noundef @init_user_ns, i32 noundef %31) #9, !dbg !4707
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !4707
  store i32 %call17, ptr %coerce.dive, align 4, !dbg !4707
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %30, ptr align 4 %tmp, i64 4, i1 false), !dbg !4707
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #8, !dbg !4707
  %32 = load ptr, ptr %entry1, align 8, !dbg !4709
  %33 = getelementptr inbounds %struct.posix_acl_entry, ptr %32, i32 0, i32 2, !dbg !4711
  %coerce.dive18 = getelementptr inbounds %struct.kuid_t, ptr %33, i32 0, i32 0, !dbg !4712
  %34 = load i32, ptr %coerce.dive18, align 4, !dbg !4712
  %call19 = call zeroext i1 @uid_valid(i32 %34) #9, !dbg !4712
  br i1 %call19, label %if.end21, label %if.then20, !dbg !4713

if.then20:                                        ; preds = %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !4714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4714

if.end21:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !4715

sw.bb22:                                          ; preds = %if.end9
  %35 = load ptr, ptr %entry1, align 8, !dbg !4716
  %36 = getelementptr inbounds %struct.posix_acl_entry, ptr %35, i32 0, i32 2, !dbg !4717
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp23) #8, !dbg !4718
  %37 = load i32, ptr %id, align 4, !dbg !4719
  %call24 = call i32 @make_kgid(ptr noundef @init_user_ns, i32 noundef %37) #9, !dbg !4718
  %coerce.dive25 = getelementptr inbounds %struct.kgid_t, ptr %tmp23, i32 0, i32 0, !dbg !4718
  store i32 %call24, ptr %coerce.dive25, align 4, !dbg !4718
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %36, ptr align 4 %tmp23, i64 4, i1 false), !dbg !4718
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp23) #8, !dbg !4718
  %38 = load ptr, ptr %entry1, align 8, !dbg !4720
  %39 = getelementptr inbounds %struct.posix_acl_entry, ptr %38, i32 0, i32 2, !dbg !4722
  %coerce.dive26 = getelementptr inbounds %struct.kgid_t, ptr %39, i32 0, i32 0, !dbg !4723
  %40 = load i32, ptr %coerce.dive26, align 4, !dbg !4723
  %call27 = call zeroext i1 @gid_valid(i32 %40) #9, !dbg !4723
  br i1 %call27, label %if.end29, label %if.then28, !dbg !4724

if.then28:                                        ; preds = %sw.bb22
  store i32 -22, ptr %retval, align 4, !dbg !4725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4725

if.end29:                                         ; preds = %sw.bb22
  br label %sw.epilog, !dbg !4726

sw.bb30:                                          ; preds = %if.end9, %if.end9, %if.end9
  %41 = load ptr, ptr %entry1, align 8, !dbg !4727
  %e_perm31 = getelementptr inbounds %struct.posix_acl_entry, ptr %41, i32 0, i32 1, !dbg !4729
  %42 = load i16, ptr %e_perm31, align 2, !dbg !4729
  %conv32 = zext i16 %42 to i32, !dbg !4727
  %and33 = and i32 %conv32, -8, !dbg !4730
  %tobool34 = icmp ne i32 %and33, 0, !dbg !4730
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !4731

if.then35:                                        ; preds = %sw.bb30
  store i32 -22, ptr %retval, align 4, !dbg !4732
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4732

if.end36:                                         ; preds = %sw.bb30
  br label %sw.epilog, !dbg !4733

sw.bb37:                                          ; preds = %if.end9
  %43 = load ptr, ptr %entry1, align 8, !dbg !4734
  %e_perm38 = getelementptr inbounds %struct.posix_acl_entry, ptr %43, i32 0, i32 1, !dbg !4735
  %44 = load i16, ptr %e_perm38, align 2, !dbg !4736
  %conv39 = zext i16 %44 to i32, !dbg !4736
  %and40 = and i32 %conv39, 7, !dbg !4736
  %conv41 = trunc i32 %and40 to i16, !dbg !4736
  store i16 %conv41, ptr %e_perm38, align 2, !dbg !4736
  br label %sw.epilog, !dbg !4737

sw.default:                                       ; preds = %if.end9
  store i32 -22, ptr %retval, align 4, !dbg !4738
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4738

sw.epilog:                                        ; preds = %sw.bb37, %if.end36, %if.end29, %if.end21
  store i32 0, ptr %retval, align 4, !dbg !4739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4739

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.then35, %if.then28, %if.then20, %if.then7, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #8, !dbg !4740
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #8, !dbg !4740
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4740
  call void @llvm.lifetime.end.p0(i64 8, ptr %nfsacl_desc) #8, !dbg !4740
  %45 = load i32, ptr %retval, align 4, !dbg !4740
  ret i32 %45, !dbg !4740
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4741 dso_local i32 @xdr_decode_word(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4744 dso_local i32 @xdr_decode_array2(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @posix_acl_from_nfsacl(ptr noundef %acl) #0 align 16 !dbg !4745 {
entry:
  %retval = alloca i32, align 4
  %acl.addr = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %pe = alloca ptr, align 8
  %group_obj = alloca ptr, align 8
  %mask = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !4749, metadata !DIExpression()), !dbg !4754
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #8, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !4750, metadata !DIExpression()), !dbg !4756
  call void @llvm.lifetime.start.p0(i64 8, ptr %pe) #8, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %pe, metadata !4751, metadata !DIExpression()), !dbg !4757
  call void @llvm.lifetime.start.p0(i64 8, ptr %group_obj) #8, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %group_obj, metadata !4752, metadata !DIExpression()), !dbg !4758
  store ptr null, ptr %group_obj, align 8, !dbg !4758
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #8, !dbg !4755
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4753, metadata !DIExpression()), !dbg !4759
  store ptr null, ptr %mask, align 8, !dbg !4759
  %0 = load ptr, ptr %acl.addr, align 8, !dbg !4760
  %tobool = icmp ne ptr %0, null, !dbg !4760
  br i1 %tobool, label %if.end, label %if.then, !dbg !4762

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4763

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %acl.addr, align 8, !dbg !4764
  %a_entries = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 3, !dbg !4765
  %arraydecay = getelementptr inbounds [0 x %struct.posix_acl_entry], ptr %a_entries, i64 0, i64 0, !dbg !4764
  %2 = load ptr, ptr %acl.addr, align 8, !dbg !4766
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %2, i32 0, i32 2, !dbg !4767
  %3 = load i32, ptr %a_count, align 8, !dbg !4767
  %conv = zext i32 %3 to i64, !dbg !4766
  call void @sort(ptr noundef %arraydecay, i64 noundef %conv, i64 noundef 8, ptr noundef @cmp_acl_entry, ptr noundef null) #9, !dbg !4768
  %4 = load ptr, ptr %acl.addr, align 8, !dbg !4769
  %a_entries1 = getelementptr inbounds %struct.posix_acl, ptr %4, i32 0, i32 3, !dbg !4769
  %arraydecay2 = getelementptr inbounds [0 x %struct.posix_acl_entry], ptr %a_entries1, i64 0, i64 0, !dbg !4769
  store ptr %arraydecay2, ptr %pa, align 8, !dbg !4769
  %5 = load ptr, ptr %pa, align 8, !dbg !4769
  %6 = load ptr, ptr %acl.addr, align 8, !dbg !4769
  %a_count3 = getelementptr inbounds %struct.posix_acl, ptr %6, i32 0, i32 2, !dbg !4769
  %7 = load i32, ptr %a_count3, align 8, !dbg !4769
  %idx.ext = zext i32 %7 to i64, !dbg !4769
  %add.ptr = getelementptr %struct.posix_acl_entry, ptr %5, i64 %idx.ext, !dbg !4769
  store ptr %add.ptr, ptr %pe, align 8, !dbg !4769
  br label %for.cond, !dbg !4769

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load ptr, ptr %pa, align 8, !dbg !4771
  %9 = load ptr, ptr %pe, align 8, !dbg !4771
  %cmp = icmp ult ptr %8, %9, !dbg !4771
  br i1 %cmp, label %for.body, label %for.end, !dbg !4769

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %pa, align 8, !dbg !4773
  %e_tag = getelementptr inbounds %struct.posix_acl_entry, ptr %10, i32 0, i32 0, !dbg !4775
  %11 = load i16, ptr %e_tag, align 4, !dbg !4775
  %conv5 = sext i16 %11 to i32, !dbg !4773
  switch i32 %conv5, label %sw.epilog [
    i32 1, label %sw.epilog
    i32 4, label %sw.bb
    i32 16, label %sw.bb6
    i32 32, label %sw.epilog
  ], !dbg !4776

sw.bb:                                            ; preds = %for.body
  %12 = load ptr, ptr %pa, align 8, !dbg !4777
  store ptr %12, ptr %group_obj, align 8, !dbg !4779
  br label %sw.epilog, !dbg !4780

sw.bb6:                                           ; preds = %for.body
  %13 = load ptr, ptr %pa, align 8, !dbg !4781
  store ptr %13, ptr %mask, align 8, !dbg !4782
  br label %sw.epilog, !dbg !4783

sw.epilog:                                        ; preds = %for.body, %sw.bb6, %for.body, %sw.bb, %for.body
  br label %for.inc, !dbg !4784

for.inc:                                          ; preds = %sw.epilog
  %14 = load ptr, ptr %pa, align 8, !dbg !4771
  %incdec.ptr = getelementptr %struct.posix_acl_entry, ptr %14, i32 1, !dbg !4771
  store ptr %incdec.ptr, ptr %pa, align 8, !dbg !4771
  br label %for.cond, !dbg !4771, !llvm.loop !4785

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %acl.addr, align 8, !dbg !4789
  %a_count7 = getelementptr inbounds %struct.posix_acl, ptr %15, i32 0, i32 2, !dbg !4791
  %16 = load i32, ptr %a_count7, align 8, !dbg !4791
  %cmp8 = icmp eq i32 %16, 4, !dbg !4792
  br i1 %cmp8, label %land.lhs.true, label %if.end24, !dbg !4793

land.lhs.true:                                    ; preds = %for.end
  %17 = load ptr, ptr %group_obj, align 8, !dbg !4794
  %tobool10 = icmp ne ptr %17, null, !dbg !4794
  br i1 %tobool10, label %land.lhs.true11, label %if.end24, !dbg !4795

land.lhs.true11:                                  ; preds = %land.lhs.true
  %18 = load ptr, ptr %mask, align 8, !dbg !4796
  %tobool12 = icmp ne ptr %18, null, !dbg !4796
  br i1 %tobool12, label %land.lhs.true13, label %if.end24, !dbg !4797

land.lhs.true13:                                  ; preds = %land.lhs.true11
  %19 = load ptr, ptr %mask, align 8, !dbg !4798
  %e_perm = getelementptr inbounds %struct.posix_acl_entry, ptr %19, i32 0, i32 1, !dbg !4799
  %20 = load i16, ptr %e_perm, align 2, !dbg !4799
  %conv14 = zext i16 %20 to i32, !dbg !4798
  %21 = load ptr, ptr %group_obj, align 8, !dbg !4800
  %e_perm15 = getelementptr inbounds %struct.posix_acl_entry, ptr %21, i32 0, i32 1, !dbg !4801
  %22 = load i16, ptr %e_perm15, align 2, !dbg !4801
  %conv16 = zext i16 %22 to i32, !dbg !4800
  %cmp17 = icmp eq i32 %conv14, %conv16, !dbg !4802
  br i1 %cmp17, label %if.then19, label %if.end24, !dbg !4803

if.then19:                                        ; preds = %land.lhs.true13
  %23 = load ptr, ptr %mask, align 8, !dbg !4804
  %24 = load ptr, ptr %mask, align 8, !dbg !4806
  %add.ptr20 = getelementptr %struct.posix_acl_entry, ptr %24, i64 1, !dbg !4807
  %25 = load ptr, ptr %mask, align 8, !dbg !4808
  %26 = load ptr, ptr %acl.addr, align 8, !dbg !4809
  %a_entries21 = getelementptr inbounds %struct.posix_acl, ptr %26, i32 0, i32 3, !dbg !4810
  %arraydecay22 = getelementptr inbounds [0 x %struct.posix_acl_entry], ptr %a_entries21, i64 0, i64 0, !dbg !4809
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i64, !dbg !4811
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay22 to i64, !dbg !4811
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4811
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !4811
  %sub = sub i64 3, %sub.ptr.div, !dbg !4812
  %mul = mul i64 %sub, 8, !dbg !4813
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %23, ptr align 4 %add.ptr20, i64 %mul, i1 false), !dbg !4814
  %27 = load ptr, ptr %acl.addr, align 8, !dbg !4815
  %a_count23 = getelementptr inbounds %struct.posix_acl, ptr %27, i32 0, i32 2, !dbg !4816
  store i32 3, ptr %a_count23, align 8, !dbg !4817
  br label %if.end24, !dbg !4818

if.end24:                                         ; preds = %if.then19, %land.lhs.true13, %land.lhs.true11, %land.lhs.true, %for.end
  store i32 0, ptr %retval, align 4, !dbg !4819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4819

cleanup:                                          ; preds = %if.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #8, !dbg !4820
  call void @llvm.lifetime.end.p0(i64 8, ptr %group_obj) #8, !dbg !4820
  call void @llvm.lifetime.end.p0(i64 8, ptr %pe) #8, !dbg !4820
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #8, !dbg !4820
  %28 = load i32, ptr %retval, align 4, !dbg !4820
  ret i32 %28, !dbg !4820
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @posix_acl_release(ptr noundef %acl) #5 align 16 !dbg !4821 {
entry:
  %acl.addr = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %acl, ptr %acl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acl.addr, metadata !4825, metadata !DIExpression()), !dbg !4829
  %0 = load ptr, ptr %acl.addr, align 8, !dbg !4830
  %tobool = icmp ne ptr %0, null, !dbg !4830
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !4831

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %acl.addr, align 8, !dbg !4832
  %a_refcount = getelementptr inbounds %struct.posix_acl, ptr %1, i32 0, i32 0, !dbg !4833
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %a_refcount) #9, !dbg !4834
  br i1 %call, label %if.then, label %if.end6, !dbg !4835

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !4836

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #8, !dbg !4837
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !4826, metadata !DIExpression()), !dbg !4837
  %2 = load ptr, ptr %acl.addr, align 8, !dbg !4837
  store ptr %2, ptr %___p, align 8, !dbg !4837
  %3 = load ptr, ptr %___p, align 8, !dbg !4838
  %tobool1 = icmp ne ptr %3, null, !dbg !4838
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4837

if.then2:                                         ; preds = %do.body
  br label %do.body3, !dbg !4840

do.body3:                                         ; preds = %if.then2
  br label %do.cond, !dbg !4842

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4842

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %___p, align 8, !dbg !4840
  %a_rcu = getelementptr inbounds %struct.posix_acl, ptr %4, i32 0, i32 1, !dbg !4840
  %5 = load ptr, ptr %___p, align 8, !dbg !4840
  call void @kvfree_call_rcu(ptr noundef %a_rcu, ptr noundef %5) #9, !dbg !4840
  br label %if.end, !dbg !4840

if.end:                                           ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #8, !dbg !4836
  br label %do.end5, !dbg !4837

do.end5:                                          ; preds = %if.end
  br label %if.end6, !dbg !4837

if.end6:                                          ; preds = %do.end5, %land.lhs.true, %entry
  ret void, !dbg !4844
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @nfs_stream_decode_acl(ptr noundef %xdr, ptr noundef %aclcnt, ptr noundef %pacl) #0 align 16 !dbg !4845 {
entry:
  %retval = alloca i1, align 1
  %xdr.addr = alloca ptr, align 8
  %aclcnt.addr = alloca ptr, align 8
  %pacl.addr = alloca ptr, align 8
  %elem_size = alloca i64, align 8
  %nfsacl_desc = alloca %struct.nfsacl_decode_desc, align 8
  %base = alloca i32, align 4
  %entries = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %xdr, ptr %xdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xdr.addr, metadata !4849, metadata !DIExpression()), !dbg !4856
  store ptr %aclcnt, ptr %aclcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %aclcnt.addr, metadata !4850, metadata !DIExpression()), !dbg !4857
  store ptr %pacl, ptr %pacl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pacl.addr, metadata !4851, metadata !DIExpression()), !dbg !4858
  call void @llvm.lifetime.start.p0(i64 8, ptr %elem_size) #8, !dbg !4859
  call void @llvm.dbg.declare(metadata ptr %elem_size, metadata !4852, metadata !DIExpression()), !dbg !4860
  store i64 12, ptr %elem_size, align 8, !dbg !4860
  call void @llvm.lifetime.start.p0(i64 40, ptr %nfsacl_desc) #8, !dbg !4861
  call void @llvm.dbg.declare(metadata ptr %nfsacl_desc, metadata !4853, metadata !DIExpression()), !dbg !4862
  %desc = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4863
  %elem_size1 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 0, !dbg !4864
  store i32 12, ptr %elem_size1, align 8, !dbg !4864
  %array_len = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 1, !dbg !4864
  store i32 0, ptr %array_len, align 4, !dbg !4864
  %array_maxlen = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 2, !dbg !4864
  store i32 0, ptr %array_maxlen, align 8, !dbg !4864
  %xcode = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc, i32 0, i32 3, !dbg !4864
  %0 = load ptr, ptr %pacl.addr, align 8, !dbg !4865
  %tobool = icmp ne ptr %0, null, !dbg !4865
  %1 = zext i1 %tobool to i64, !dbg !4865
  %cond = select i1 %tobool, ptr @xdr_nfsace_decode, ptr null, !dbg !4865
  store ptr %cond, ptr %xcode, align 8, !dbg !4864
  %count = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 1, !dbg !4863
  store i32 0, ptr %count, align 8, !dbg !4863
  %acl = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4863
  store ptr null, ptr %acl, align 8, !dbg !4863
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #8, !dbg !4866
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4854, metadata !DIExpression()), !dbg !4867
  call void @llvm.lifetime.start.p0(i64 4, ptr %entries) #8, !dbg !4868
  call void @llvm.dbg.declare(metadata ptr %entries, metadata !4855, metadata !DIExpression()), !dbg !4869
  %2 = load ptr, ptr %xdr.addr, align 8, !dbg !4870
  %call = call i64 @xdr_stream_decode_u32(ptr noundef %2, ptr noundef %entries) #9, !dbg !4872
  %cmp = icmp slt i64 %call, 0, !dbg !4873
  br i1 %cmp, label %if.then, label %if.end, !dbg !4874

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4875

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %entries, align 4, !dbg !4876
  %cmp2 = icmp ugt i32 %3, 1024, !dbg !4878
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4879

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4880

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %xdr.addr, align 8, !dbg !4881
  %call5 = call i32 @xdr_stream_pos(ptr noundef %4) #9, !dbg !4882
  store i32 %call5, ptr %base, align 4, !dbg !4883
  %5 = load ptr, ptr %xdr.addr, align 8, !dbg !4884
  %6 = load i32, ptr %entries, align 4, !dbg !4886
  %conv = zext i32 %6 to i64, !dbg !4886
  %mul = mul i64 12, %conv, !dbg !4887
  %add = add i64 4, %mul, !dbg !4888
  %call6 = call ptr @xdr_inline_decode(ptr noundef %5, i64 noundef %add) #9, !dbg !4889
  %tobool7 = icmp ne ptr %call6, null, !dbg !4889
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !4890

if.then8:                                         ; preds = %if.end4
  store i1 false, ptr %retval, align 1, !dbg !4891
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4891

if.end9:                                          ; preds = %if.end4
  %7 = load i32, ptr %entries, align 4, !dbg !4892
  %desc10 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4893
  %array_maxlen11 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc10, i32 0, i32 2, !dbg !4894
  store i32 %7, ptr %array_maxlen11, align 8, !dbg !4895
  %8 = load ptr, ptr %xdr.addr, align 8, !dbg !4896
  %buf = getelementptr inbounds %struct.xdr_stream, ptr %8, i32 0, i32 1, !dbg !4898
  %9 = load ptr, ptr %buf, align 8, !dbg !4898
  %10 = load i32, ptr %base, align 4, !dbg !4899
  %desc12 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4900
  %call13 = call i32 @xdr_decode_array2(ptr noundef %9, i32 noundef %10, ptr noundef %desc12) #9, !dbg !4901
  %tobool14 = icmp ne i32 %call13, 0, !dbg !4901
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !4902

if.then15:                                        ; preds = %if.end9
  store i1 false, ptr %retval, align 1, !dbg !4903
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4903

if.end16:                                         ; preds = %if.end9
  %11 = load ptr, ptr %pacl.addr, align 8, !dbg !4904
  %tobool17 = icmp ne ptr %11, null, !dbg !4904
  br i1 %tobool17, label %if.then18, label %if.end31, !dbg !4906

if.then18:                                        ; preds = %if.end16
  %12 = load i32, ptr %entries, align 4, !dbg !4907
  %desc19 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 0, !dbg !4910
  %array_len20 = getelementptr inbounds %struct.xdr_array2_desc, ptr %desc19, i32 0, i32 1, !dbg !4911
  %13 = load i32, ptr %array_len20, align 4, !dbg !4911
  %cmp21 = icmp ne i32 %12, %13, !dbg !4912
  br i1 %cmp21, label %if.then27, label %lor.lhs.false, !dbg !4913

lor.lhs.false:                                    ; preds = %if.then18
  %acl23 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4914
  %14 = load ptr, ptr %acl23, align 8, !dbg !4914
  %call24 = call i32 @posix_acl_from_nfsacl(ptr noundef %14) #9, !dbg !4915
  %cmp25 = icmp ne i32 %call24, 0, !dbg !4916
  br i1 %cmp25, label %if.then27, label %if.end29, !dbg !4917

if.then27:                                        ; preds = %lor.lhs.false, %if.then18
  %acl28 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4918
  %15 = load ptr, ptr %acl28, align 8, !dbg !4918
  call void @posix_acl_release(ptr noundef %15) #9, !dbg !4920
  store i1 false, ptr %retval, align 1, !dbg !4921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4921

if.end29:                                         ; preds = %lor.lhs.false
  %acl30 = getelementptr inbounds %struct.nfsacl_decode_desc, ptr %nfsacl_desc, i32 0, i32 2, !dbg !4922
  %16 = load ptr, ptr %acl30, align 8, !dbg !4922
  %17 = load ptr, ptr %pacl.addr, align 8, !dbg !4923
  store ptr %16, ptr %17, align 8, !dbg !4924
  br label %if.end31, !dbg !4925

if.end31:                                         ; preds = %if.end29, %if.end16
  %18 = load ptr, ptr %aclcnt.addr, align 8, !dbg !4926
  %tobool32 = icmp ne ptr %18, null, !dbg !4926
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !4928

if.then33:                                        ; preds = %if.end31
  %19 = load i32, ptr %entries, align 4, !dbg !4929
  %20 = load ptr, ptr %aclcnt.addr, align 8, !dbg !4930
  store i32 %19, ptr %20, align 4, !dbg !4931
  br label %if.end34, !dbg !4932

if.end34:                                         ; preds = %if.then33, %if.end31
  store i1 true, ptr %retval, align 1, !dbg !4933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4933

cleanup:                                          ; preds = %if.end34, %if.then27, %if.then15, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %entries) #8, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #8, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 40, ptr %nfsacl_desc) #8, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 8, ptr %elem_size) #8, !dbg !4934
  %21 = load i1, ptr %retval, align 1, !dbg !4934
  ret i1 %21, !dbg !4934
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xdr_stream_decode_u32(ptr noundef %xdr, ptr noundef %ptr) #5 align 16 !dbg !4935 {
entry:
  %retval = alloca i64, align 8
  %xdr.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %xdr, ptr %xdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xdr.addr, metadata !4939, metadata !DIExpression()), !dbg !4943
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4940, metadata !DIExpression()), !dbg !4944
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #8, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %count, metadata !4941, metadata !DIExpression()), !dbg !4946
  store i64 4, ptr %count, align 8, !dbg !4946
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #8, !dbg !4947
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4942, metadata !DIExpression()), !dbg !4948
  %0 = load ptr, ptr %xdr.addr, align 8, !dbg !4949
  %call = call ptr @xdr_inline_decode(ptr noundef %0, i64 noundef 4) #9, !dbg !4950
  store ptr %call, ptr %p, align 8, !dbg !4948
  %1 = load ptr, ptr %p, align 8, !dbg !4951
  %tobool = icmp ne ptr %1, null, !dbg !4951
  %lnot = xor i1 %tobool, true, !dbg !4951
  %lnot1 = xor i1 %lnot, true, !dbg !4951
  %lnot2 = xor i1 %lnot1, true, !dbg !4951
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4951
  %conv = sext i32 %lnot.ext to i64, !dbg !4951
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4951
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4951
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4953

if.then:                                          ; preds = %entry
  store i64 -74, ptr %retval, align 8, !dbg !4954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4954

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %p, align 8, !dbg !4955
  %call4 = call i32 @__be32_to_cpup(ptr noundef %2) #9, !dbg !4956
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !4957
  store i32 %call4, ptr %3, align 4, !dbg !4958
  store i64 0, ptr %retval, align 8, !dbg !4959
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4959

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #8, !dbg !4960
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #8, !dbg !4960
  %4 = load i64, ptr %retval, align 8, !dbg !4960
  ret i64 %4, !dbg !4960
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4961 dso_local ptr @xdr_inline_decode(ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #5 align 16 !dbg !4962 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4966, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !4967, metadata !DIExpression()), !dbg !4969
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !4970
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4970
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !4970
  ret i32 %call, !dbg !4971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #5 align 16 !dbg !4972 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4976, metadata !DIExpression()), !dbg !4978
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !4977, metadata !DIExpression()), !dbg !4979
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !4980
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !4980
  %call = call i32 @__kgid_val(i32 %0) #9, !dbg !4980
  ret i32 %call, !dbg !4981
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #5 align 16 !dbg !4982 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4986, metadata !DIExpression()), !dbg !4987
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4988
  %0 = load i32, ptr %val, align 4, !dbg !4988
  ret i32 %0, !dbg !4989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #5 align 16 !dbg !4990 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4994, metadata !DIExpression()), !dbg !4995
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4996
  %0 = load i32, ptr %val, align 4, !dbg !4996
  ret i32 %0, !dbg !4997
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4998 dso_local ptr @posix_acl_alloc(i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #5 align 16 !dbg !5001 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5005, metadata !DIExpression()), !dbg !5007
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !5006, metadata !DIExpression()), !dbg !5008
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5009
  %0 = load i32, ptr %uid.addr, align 4, !dbg !5009
  store i32 %0, ptr %val, align 4, !dbg !5009
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !5010
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5010
  ret i32 %1, !dbg !5010
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_valid(i32 %uid.coerce) #5 align 16 !dbg !5011 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !5015, metadata !DIExpression()), !dbg !5016
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !5017
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5017
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !5017
  %cmp = icmp ne i32 %call, -1, !dbg !5018
  ret i1 %cmp, !dbg !5019
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #5 align 16 !dbg !5020 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5024, metadata !DIExpression()), !dbg !5026
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !5025, metadata !DIExpression()), !dbg !5027
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5028
  %0 = load i32, ptr %gid.addr, align 4, !dbg !5028
  store i32 %0, ptr %val, align 4, !dbg !5028
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !5029
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !5029
  ret i32 %1, !dbg !5029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_valid(i32 %gid.coerce) #5 align 16 !dbg !5030 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !5034, metadata !DIExpression()), !dbg !5035
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !5036
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !5036
  %call = call i32 @__kgid_val(i32 %0) #9, !dbg !5036
  %cmp = icmp ne i32 %call, -1, !dbg !5037
  ret i1 %cmp, !dbg !5038
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5039 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmp_acl_entry(ptr noundef %x, ptr noundef %y) #0 align 16 !dbg !5051 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %y.addr = alloca ptr, align 8
  %a = alloca ptr, align 8
  %b = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !5053, metadata !DIExpression()), !dbg !5059
  store ptr %y, ptr %y.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %y.addr, metadata !5054, metadata !DIExpression()), !dbg !5060
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #8, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %a, metadata !5055, metadata !DIExpression()), !dbg !5062
  %0 = load ptr, ptr %x.addr, align 8, !dbg !5063
  store ptr %0, ptr %a, align 8, !dbg !5062
  call void @llvm.lifetime.start.p0(i64 8, ptr %b) #8, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %b, metadata !5058, metadata !DIExpression()), !dbg !5064
  %1 = load ptr, ptr %y.addr, align 8, !dbg !5065
  store ptr %1, ptr %b, align 8, !dbg !5064
  %2 = load ptr, ptr %a, align 8, !dbg !5066
  %e_tag = getelementptr inbounds %struct.posix_acl_entry, ptr %2, i32 0, i32 0, !dbg !5068
  %3 = load i16, ptr %e_tag, align 4, !dbg !5068
  %conv = sext i16 %3 to i32, !dbg !5066
  %4 = load ptr, ptr %b, align 8, !dbg !5069
  %e_tag1 = getelementptr inbounds %struct.posix_acl_entry, ptr %4, i32 0, i32 0, !dbg !5070
  %5 = load i16, ptr %e_tag1, align 4, !dbg !5070
  %conv2 = sext i16 %5 to i32, !dbg !5069
  %cmp = icmp ne i32 %conv, %conv2, !dbg !5071
  br i1 %cmp, label %if.then, label %if.else, !dbg !5072

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %a, align 8, !dbg !5073
  %e_tag4 = getelementptr inbounds %struct.posix_acl_entry, ptr %6, i32 0, i32 0, !dbg !5074
  %7 = load i16, ptr %e_tag4, align 4, !dbg !5074
  %conv5 = sext i16 %7 to i32, !dbg !5073
  %8 = load ptr, ptr %b, align 8, !dbg !5075
  %e_tag6 = getelementptr inbounds %struct.posix_acl_entry, ptr %8, i32 0, i32 0, !dbg !5076
  %9 = load i16, ptr %e_tag6, align 4, !dbg !5076
  %conv7 = sext i16 %9 to i32, !dbg !5075
  %sub = sub i32 %conv5, %conv7, !dbg !5077
  store i32 %sub, ptr %retval, align 4, !dbg !5078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5078

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %a, align 8, !dbg !5079
  %e_tag8 = getelementptr inbounds %struct.posix_acl_entry, ptr %10, i32 0, i32 0, !dbg !5081
  %11 = load i16, ptr %e_tag8, align 4, !dbg !5081
  %conv9 = sext i16 %11 to i32, !dbg !5079
  %cmp10 = icmp eq i32 %conv9, 2, !dbg !5082
  br i1 %cmp10, label %land.lhs.true, label %if.else15, !dbg !5083

land.lhs.true:                                    ; preds = %if.else
  %12 = load ptr, ptr %a, align 8, !dbg !5084
  %13 = getelementptr inbounds %struct.posix_acl_entry, ptr %12, i32 0, i32 2, !dbg !5085
  %14 = load ptr, ptr %b, align 8, !dbg !5086
  %15 = getelementptr inbounds %struct.posix_acl_entry, ptr %14, i32 0, i32 2, !dbg !5087
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %13, i32 0, i32 0, !dbg !5088
  %16 = load i32, ptr %coerce.dive, align 4, !dbg !5088
  %coerce.dive12 = getelementptr inbounds %struct.kuid_t, ptr %15, i32 0, i32 0, !dbg !5088
  %17 = load i32, ptr %coerce.dive12, align 4, !dbg !5088
  %call = call zeroext i1 @uid_gt(i32 %16, i32 %17) #9, !dbg !5088
  br i1 %call, label %if.then14, label %if.else15, !dbg !5089

if.then14:                                        ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5090

if.else15:                                        ; preds = %land.lhs.true, %if.else
  %18 = load ptr, ptr %a, align 8, !dbg !5091
  %e_tag16 = getelementptr inbounds %struct.posix_acl_entry, ptr %18, i32 0, i32 0, !dbg !5093
  %19 = load i16, ptr %e_tag16, align 4, !dbg !5093
  %conv17 = sext i16 %19 to i32, !dbg !5091
  %cmp18 = icmp eq i32 %conv17, 2, !dbg !5094
  br i1 %cmp18, label %land.lhs.true20, label %if.else26, !dbg !5095

land.lhs.true20:                                  ; preds = %if.else15
  %20 = load ptr, ptr %a, align 8, !dbg !5096
  %21 = getelementptr inbounds %struct.posix_acl_entry, ptr %20, i32 0, i32 2, !dbg !5097
  %22 = load ptr, ptr %b, align 8, !dbg !5098
  %23 = getelementptr inbounds %struct.posix_acl_entry, ptr %22, i32 0, i32 2, !dbg !5099
  %coerce.dive21 = getelementptr inbounds %struct.kuid_t, ptr %21, i32 0, i32 0, !dbg !5100
  %24 = load i32, ptr %coerce.dive21, align 4, !dbg !5100
  %coerce.dive22 = getelementptr inbounds %struct.kuid_t, ptr %23, i32 0, i32 0, !dbg !5100
  %25 = load i32, ptr %coerce.dive22, align 4, !dbg !5100
  %call23 = call zeroext i1 @uid_lt(i32 %24, i32 %25) #9, !dbg !5100
  br i1 %call23, label %if.then25, label %if.else26, !dbg !5101

if.then25:                                        ; preds = %land.lhs.true20
  store i32 -1, ptr %retval, align 4, !dbg !5102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5102

if.else26:                                        ; preds = %land.lhs.true20, %if.else15
  %26 = load ptr, ptr %a, align 8, !dbg !5103
  %e_tag27 = getelementptr inbounds %struct.posix_acl_entry, ptr %26, i32 0, i32 0, !dbg !5105
  %27 = load i16, ptr %e_tag27, align 4, !dbg !5105
  %conv28 = sext i16 %27 to i32, !dbg !5103
  %cmp29 = icmp eq i32 %conv28, 8, !dbg !5106
  br i1 %cmp29, label %land.lhs.true31, label %if.else37, !dbg !5107

land.lhs.true31:                                  ; preds = %if.else26
  %28 = load ptr, ptr %a, align 8, !dbg !5108
  %29 = getelementptr inbounds %struct.posix_acl_entry, ptr %28, i32 0, i32 2, !dbg !5109
  %30 = load ptr, ptr %b, align 8, !dbg !5110
  %31 = getelementptr inbounds %struct.posix_acl_entry, ptr %30, i32 0, i32 2, !dbg !5111
  %coerce.dive32 = getelementptr inbounds %struct.kgid_t, ptr %29, i32 0, i32 0, !dbg !5112
  %32 = load i32, ptr %coerce.dive32, align 4, !dbg !5112
  %coerce.dive33 = getelementptr inbounds %struct.kgid_t, ptr %31, i32 0, i32 0, !dbg !5112
  %33 = load i32, ptr %coerce.dive33, align 4, !dbg !5112
  %call34 = call zeroext i1 @gid_gt(i32 %32, i32 %33) #9, !dbg !5112
  br i1 %call34, label %if.then36, label %if.else37, !dbg !5113

if.then36:                                        ; preds = %land.lhs.true31
  store i32 1, ptr %retval, align 4, !dbg !5114
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5114

if.else37:                                        ; preds = %land.lhs.true31, %if.else26
  %34 = load ptr, ptr %a, align 8, !dbg !5115
  %e_tag38 = getelementptr inbounds %struct.posix_acl_entry, ptr %34, i32 0, i32 0, !dbg !5117
  %35 = load i16, ptr %e_tag38, align 4, !dbg !5117
  %conv39 = sext i16 %35 to i32, !dbg !5115
  %cmp40 = icmp eq i32 %conv39, 8, !dbg !5118
  br i1 %cmp40, label %land.lhs.true42, label %if.else48, !dbg !5119

land.lhs.true42:                                  ; preds = %if.else37
  %36 = load ptr, ptr %a, align 8, !dbg !5120
  %37 = getelementptr inbounds %struct.posix_acl_entry, ptr %36, i32 0, i32 2, !dbg !5121
  %38 = load ptr, ptr %b, align 8, !dbg !5122
  %39 = getelementptr inbounds %struct.posix_acl_entry, ptr %38, i32 0, i32 2, !dbg !5123
  %coerce.dive43 = getelementptr inbounds %struct.kgid_t, ptr %37, i32 0, i32 0, !dbg !5124
  %40 = load i32, ptr %coerce.dive43, align 4, !dbg !5124
  %coerce.dive44 = getelementptr inbounds %struct.kgid_t, ptr %39, i32 0, i32 0, !dbg !5124
  %41 = load i32, ptr %coerce.dive44, align 4, !dbg !5124
  %call45 = call zeroext i1 @gid_lt(i32 %40, i32 %41) #9, !dbg !5124
  br i1 %call45, label %if.then47, label %if.else48, !dbg !5125

if.then47:                                        ; preds = %land.lhs.true42
  store i32 -1, ptr %retval, align 4, !dbg !5126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5126

if.else48:                                        ; preds = %land.lhs.true42, %if.else37
  store i32 0, ptr %retval, align 4, !dbg !5127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5127

cleanup:                                          ; preds = %if.else48, %if.then47, %if.then36, %if.then25, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %b) #8, !dbg !5128
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #8, !dbg !5128
  %42 = load i32, ptr %retval, align 4, !dbg !5128
  ret i32 %42, !dbg !5128
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_gt(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !5129 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5133, metadata !DIExpression()), !dbg !5135
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5134, metadata !DIExpression()), !dbg !5136
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !5137
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5137
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !5137
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !5138
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5138
  %call4 = call i32 @__kuid_val(i32 %1) #9, !dbg !5138
  %cmp = icmp ugt i32 %call, %call4, !dbg !5139
  ret i1 %cmp, !dbg !5140
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @uid_lt(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !5141 {
entry:
  %left = alloca %struct.kuid_t, align 4
  %right = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5143, metadata !DIExpression()), !dbg !5145
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5144, metadata !DIExpression()), !dbg !5146
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %left, i32 0, i32 0, !dbg !5147
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5147
  %call = call i32 @__kuid_val(i32 %0) #9, !dbg !5147
  %coerce.dive3 = getelementptr inbounds %struct.kuid_t, ptr %right, i32 0, i32 0, !dbg !5148
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5148
  %call4 = call i32 @__kuid_val(i32 %1) #9, !dbg !5148
  %cmp = icmp ult i32 %call, %call4, !dbg !5149
  ret i1 %cmp, !dbg !5150
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_gt(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !5151 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5155, metadata !DIExpression()), !dbg !5157
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5156, metadata !DIExpression()), !dbg !5158
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !5159
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5159
  %call = call i32 @__kgid_val(i32 %0) #9, !dbg !5159
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !5160
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5160
  %call4 = call i32 @__kgid_val(i32 %1) #9, !dbg !5160
  %cmp = icmp ugt i32 %call, %call4, !dbg !5161
  ret i1 %cmp, !dbg !5162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @gid_lt(i32 %left.coerce, i32 %right.coerce) #5 align 16 !dbg !5163 {
entry:
  %left = alloca %struct.kgid_t, align 4
  %right = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0
  store i32 %left.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0
  store i32 %right.coerce, ptr %coerce.dive1, align 4
  call void @llvm.dbg.declare(metadata ptr %left, metadata !5165, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.declare(metadata ptr %right, metadata !5166, metadata !DIExpression()), !dbg !5168
  %coerce.dive2 = getelementptr inbounds %struct.kgid_t, ptr %left, i32 0, i32 0, !dbg !5169
  %0 = load i32, ptr %coerce.dive2, align 4, !dbg !5169
  %call = call i32 @__kgid_val(i32 %0) #9, !dbg !5169
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %right, i32 0, i32 0, !dbg !5170
  %1 = load i32, ptr %coerce.dive3, align 4, !dbg !5170
  %call4 = call i32 @__kgid_val(i32 %1) #9, !dbg !5170
  %cmp = icmp ult i32 %call, %call4, !dbg !5171
  ret i1 %cmp, !dbg !5172
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !5173 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5180
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #9, !dbg !5181
  ret i1 %call, !dbg !5182
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5183 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5187 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5191, metadata !DIExpression()), !dbg !5193
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5192, metadata !DIExpression()), !dbg !5194
  %0 = load ptr, ptr %r.addr, align 8, !dbg !5195
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !5196
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #9, !dbg !5197
  ret i1 %call, !dbg !5198
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !5199 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5203, metadata !DIExpression()), !dbg !5207
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !5204, metadata !DIExpression()), !dbg !5208
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !5205, metadata !DIExpression()), !dbg !5209
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #8, !dbg !5210
  call void @llvm.dbg.declare(metadata ptr %old, metadata !5206, metadata !DIExpression()), !dbg !5211
  %0 = load i32, ptr %i.addr, align 4, !dbg !5212
  %1 = load ptr, ptr %r.addr, align 8, !dbg !5213
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !5214
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #9, !dbg !5215
  store i32 %call, ptr %old, align 4, !dbg !5211
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !5216
  %tobool = icmp ne ptr %2, null, !dbg !5216
  br i1 %tobool, label %if.then, label %if.end, !dbg !5218

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !5219
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !5220
  store i32 %3, ptr %4, align 4, !dbg !5221
  br label %if.end, !dbg !5222

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !5223
  %6 = load i32, ptr %i.addr, align 4, !dbg !5225
  %cmp = icmp eq i32 %5, %6, !dbg !5226
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !5227

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5228

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !5230

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !5232

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5232

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !5230

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5234

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !5236

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5236

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !5234, !srcloc !5238
  br label %do.cond7, !dbg !5234

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !5234

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !5230

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5230

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !5239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5239

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !5240
  %cmp12 = icmp slt i32 %7, 0, !dbg !5240
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !5240

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !5240
  %9 = load i32, ptr %i.addr, align 4, !dbg !5240
  %sub = sub i32 %8, %9, !dbg !5240
  %cmp13 = icmp slt i32 %sub, 0, !dbg !5240
  br label %lor.end, !dbg !5240

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !5240
  %lnot14 = xor i1 %lnot, true, !dbg !5240
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !5240
  %conv = sext i32 %lnot.ext to i64, !dbg !5240
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5240
  %tobool15 = icmp ne i64 %expval, 0, !dbg !5240
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5242

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !5243
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #9, !dbg !5244
  br label %if.end17, !dbg !5244

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !5245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5245

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #8, !dbg !5246
  %12 = load i1, ptr %retval, align 1, !dbg !5246
  ret i1 %12, !dbg !5246
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5247 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5253, metadata !DIExpression()), !dbg !5255
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5254, metadata !DIExpression()), !dbg !5256
  br label %do.body, !dbg !5257

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5258

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5260
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #9, !dbg !5261
  %1 = load i32, ptr %i.addr, align 4, !dbg !5262
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5263
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #9, !dbg !5264
  ret i32 %call, !dbg !5265
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5266 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5269 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5277, metadata !DIExpression()), !dbg !5279
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5278, metadata !DIExpression()), !dbg !5280
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5281
  %1 = load i64, ptr %size.addr, align 8, !dbg !5282
  %conv = trunc i64 %1 to i32, !dbg !5282
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !5283
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5284
  %3 = load i64, ptr %size.addr, align 8, !dbg !5284
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #9, !dbg !5284
  ret void, !dbg !5285
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5286 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5289, metadata !DIExpression()), !dbg !5291
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5290, metadata !DIExpression()), !dbg !5292
  %0 = load i32, ptr %i.addr, align 4, !dbg !5293
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5294
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #9, !dbg !5295
  ret i32 %call, !dbg !5296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5297 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5302, metadata !DIExpression()), !dbg !5304
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5303, metadata !DIExpression()), !dbg !5305
  ret i1 true, !dbg !5306
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5307 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5312, metadata !DIExpression()), !dbg !5315
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5313, metadata !DIExpression()), !dbg !5316
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5314, metadata !DIExpression()), !dbg !5317
  ret void, !dbg !5318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #7 align 16 !dbg !5319 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5322, metadata !DIExpression()), !dbg !5326
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5323, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #8, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5324, metadata !DIExpression()), !dbg !5328
  %0 = load i32, ptr %i.addr, align 4, !dbg !5328
  %sub = sub i32 0, %0, !dbg !5328
  store i32 %sub, ptr %__ret, align 4, !dbg !5328
  %1 = load i32, ptr %__ret, align 4, !dbg !5328
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5328
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !5328
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #8, !dbg !5328, !srcloc !5329
  store i32 %3, ptr %__ret, align 4, !dbg !5328
  %4 = load i32, ptr %__ret, align 4, !dbg !5328
  store i32 %4, ptr %tmp, align 4, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #8, !dbg !5330
  %5 = load i32, ptr %tmp, align 4, !dbg !5328
  ret i32 %5, !dbg !5331
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__be32_to_cpup(ptr noundef %p) #7 align 16 !dbg !5332 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5341
  %call = call i32 @__swab32p(ptr noundef %0) #9, !dbg !5342
  ret i32 %call, !dbg !5343
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__swab32p(ptr noundef %p) #7 align 16 !dbg !5344 {
entry:
  %p.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5353
  %1 = load i32, ptr %0, align 4, !dbg !5353
  %2 = call i32 @llvm.bswap.i32(i32 %1), !dbg !5353
  ret i32 %2, !dbg !5354
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!208, !209, !210, !211, !212, !213, !214, !215}
!llvm.ident = !{!216}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file292", scope: !2, file: !3, line: 32, type: !205, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/nfs_common/.nfsacl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/nfs_common/nfs_acl\22 -D KBUILD_BASENAME=\22nfsacl\22 -D KBUILD_MODNAME=\22nfs_acl\22 -D __KBUILD_MODNAME=kmod_nfs_acl -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/nfs_common/nfsacl.ll fs/nfs_common/nfsacl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !100, globals: !189, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/nfs_common/nfsacl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b28ebb1568430c7f8c54a79e2551617")
!4 = !{!5, !13, !21, !37, !43, !48, !54, !59, !65, !72, !79, !87, !92}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !14, line: 9, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!17 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!18 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!19 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!20 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !22, line: 1325, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!24 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!25 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!26 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!27 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!28 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!29 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!30 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!31 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!32 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!33 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!34 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!35 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!36 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !38, line: 26, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!41 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!42 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !44, line: 2052, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!45 = !{!46, !47}
!46 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!47 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !49, line: 54, baseType: !7, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "USRQUOTA", value: 0)
!52 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!53 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !55, line: 65, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!58 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !60, line: 16, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "TT_NONE", value: 0)
!63 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!64 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !66, line: 51, baseType: !7, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!69 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!70 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!71 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !73, line: 15, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!76 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!77 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !80, line: 68, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!83 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!84 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!85 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!86 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !93, line: 119, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!94 = !{!95, !96, !97, !98, !99}
!95 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!96 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!97 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!98 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!99 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!100 = !{!101, !102, !103, !177, !179, !181, !187, !162, !170, !188}
!101 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfsacl_encode_desc", file: !3, line: 34, size: 448, elements: !105)
!105 = !{!106, !119, !120, !174, !175, !176}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !104, file: !3, line: 35, baseType: !107, size: 192)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_array2_desc", file: !108, line: 204, size: 192, elements: !109)
!108 = !DIFile(filename: "./include/linux/sunrpc/xdr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd69bdc3c02e377f91d2dfdb179d69f2")
!109 = !{!110, !111, !112, !113}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "elem_size", scope: !107, file: !108, line: 205, baseType: !7, size: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "array_len", scope: !107, file: !108, line: 206, baseType: !7, size: 32, offset: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "array_maxlen", scope: !107, file: !108, line: 207, baseType: !7, size: 32, offset: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "xcode", scope: !107, file: !108, line: 208, baseType: !114, size: 64, offset: 128)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdr_xcode_elem_t", file: !108, line: 203, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!101, !118, !102}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !104, file: !3, line: 36, baseType: !7, size: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !104, file: !3, line: 37, baseType: !121, size: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !123, line: 29, size: 256, elements: !124)
!123 = !DIFile(filename: "./include/linux/posix_acl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c39037fcfa4b446249952b719291151f")
!124 = !{!125, !135, !144, !145}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "a_refcount", scope: !122, file: !123, line: 30, baseType: !126, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !93, line: 113, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !93, line: 111, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !127, file: !93, line: 112, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !131, line: 174, baseType: !132)
!131 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 172, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !132, file: !131, line: 173, baseType: !101, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "a_rcu", scope: !122, file: !123, line: 31, baseType: !136, size: 128, align: 64, offset: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !131, line: 232, size: 128, align: 64, elements: !137)
!137 = !{!138, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !131, line: 233, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !136, file: !131, line: 234, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !139}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "a_count", scope: !122, file: !123, line: 32, baseType: !7, size: 32, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "a_entries", scope: !122, file: !123, line: 33, baseType: !146, offset: 224)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, elements: !172)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl_entry", file: !123, line: 20, size: 64, elements: !148)
!148 = !{!149, !151, !153}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "e_tag", scope: !147, file: !123, line: 21, baseType: !150, size: 16)
!150 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "e_perm", scope: !147, file: !123, line: 22, baseType: !152, size: 16, offset: 16)
!152 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !123, line: 23, baseType: !154, size: 32, offset: 32)
!154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !123, line: 23, size: 32, elements: !155)
!155 = !{!156, !165}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "e_uid", scope: !154, file: !123, line: 24, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !158, line: 23, baseType: !159)
!158 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 21, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !159, file: !158, line: 22, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !131, line: 37, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !164, line: 49, baseType: !7)
!164 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!165 = !DIDerivedType(tag: DW_TAG_member, name: "e_gid", scope: !154, file: !123, line: 25, baseType: !166, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !158, line: 28, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 26, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !167, file: !158, line: 27, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !131, line: 38, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !164, line: 50, baseType: !7)
!172 = !{!173}
!173 = !DISubrange(count: -1)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "typeflag", scope: !104, file: !3, line: 38, baseType: !101, size: 32, offset: 320)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !104, file: !3, line: 39, baseType: !157, size: 32, offset: 352)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !104, file: !3, line: 40, baseType: !166, size: 32, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !178, line: 39, baseType: !179)
!178 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !180, line: 27, baseType: !7)
!180 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfsacl_decode_desc", file: !3, line: 210, size: 320, elements: !183)
!183 = !{!184, !185, !186}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !182, file: !3, line: 211, baseType: !107, size: 192)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !182, file: !3, line: 212, baseType: !7, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !182, file: !3, line: 213, baseType: !121, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !131, line: 154, baseType: !7)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!189 = !{!0, !190, !197, !199, !201, !203}
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license293", scope: !2, file: !3, line: 32, type: !192, isLocal: true, isDefinition: true, align: 8)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 160, elements: !195)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !{!196}
!196 = !DISubrange(count: 20)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nfsacl_encode296", scope: !2, file: !3, line: 137, type: !102, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nfs_stream_encode_acl299", scope: !2, file: !3, line: 207, type: !102, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nfsacl_decode300", scope: !2, file: !3, line: 368, type: !102, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_nfs_stream_decode_acl301", scope: !2, file: !3, line: 420, type: !102, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 280, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 35)
!208 = !{i32 7, !"Dwarf Version", i32 5}
!209 = !{i32 2, !"Debug Info Version", i32 3}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 8, !"cf-protection-branch", i32 1}
!212 = !{i32 4, !"function_return_thunk_extern", i32 1}
!213 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!214 = !{i32 1, !"Code Model", i32 2}
!215 = !{i32 1, !"override-stack-alignment", i32 8}
!216 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!217 = distinct !DISubprogram(name: "nfsacl_encode", scope: !3, file: !3, line: 92, type: !218, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4184)
!218 = !DISubroutineType(types: !219)
!219 = !{!101, !220, !7, !273, !121, !101, !101}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_buf", file: !108, line: 56, size: 576, elements: !222)
!222 = !{!223, !236, !237, !240, !4179, !4180, !4181, !4182, !4183}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !221, file: !108, line: 57, baseType: !224, size: 128)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !225, size: 128, elements: !234)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !226, line: 17, size: 128, elements: !227)
!226 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!227 = !{!228, !229}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !225, file: !226, line: 18, baseType: !102, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !225, file: !226, line: 19, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !131, line: 61, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !164, line: 72, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !164, line: 16, baseType: !233)
!233 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!234 = !{!235}
!235 = !DISubrange(count: 1)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !221, file: !108, line: 58, baseType: !224, size: 128, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !221, file: !108, line: 60, baseType: !238, size: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !226, line: 73, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !221, file: !108, line: 61, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !22, line: 74, size: 512, align: 128, elements: !244)
!244 = !{!245, !246, !4173, !4178}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !243, file: !22, line: 75, baseType: !233, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !22, line: 83, baseType: !247, size: 320, offset: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !22, line: 83, size: 320, elements: !248)
!248 = !{!249, !4079, !4093, !4097, !4172}
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 84, baseType: !250, size: 320)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 84, size: 320, elements: !251)
!251 = !{!252, !268, !4073, !4078}
!252 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !22, line: 90, baseType: !253, size: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !22, line: 90, size: 128, elements: !254)
!254 = !{!255, !261, !266, !267}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !253, file: !22, line: 91, baseType: !256, size: 128)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !131, line: 190, size: 128, elements: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !131, line: 191, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !256, file: !131, line: 191, baseType: !259, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, scope: !253, file: !22, line: 94, baseType: !262, size: 128)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !253, file: !22, line: 94, size: 128, elements: !263)
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !262, file: !22, line: 96, baseType: !102, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !262, file: !22, line: 98, baseType: !7, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !253, file: !22, line: 102, baseType: !256, size: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !253, file: !22, line: 103, baseType: !256, size: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !250, file: !22, line: 106, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 472, size: 1536, align: 64, elements: !271)
!271 = !{!272, !3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !4067, !4068, !4069, !4070, !4071, !4072}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !270, file: !44, line: 473, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 641, size: 4800, elements: !275)
!275 = !{!276, !278, !279, !280, !281, !282, !283, !284, !285, !3846, !3847, !3848, !3849, !3850, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3890, !3893, !3894, !3895, !3904, !3905, !3906, !3907}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !274, file: !44, line: 642, baseType: !277, size: 16)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !131, line: 24, baseType: !152)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !274, file: !44, line: 643, baseType: !152, size: 16, offset: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !274, file: !44, line: 644, baseType: !157, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !274, file: !44, line: 645, baseType: !256, size: 128, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !274, file: !44, line: 646, baseType: !166, size: 32, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !274, file: !44, line: 647, baseType: !7, size: 32, offset: 224)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !274, file: !44, line: 650, baseType: !121, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !274, file: !44, line: 651, baseType: !121, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !274, file: !44, line: 654, baseType: !286, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1966, size: 2048, align: 512, elements: !289)
!289 = !{!290, !3680, !3690, !3694, !3698, !3702, !3706, !3710, !3714, !3718, !3722, !3723, !3727, !3731, !3768, !3797, !3801, !3807, !3811, !3815, !3819, !3823, !3827, !3833, !3837}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !288, file: !44, line: 1967, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294, !273, !294, !7}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !296, line: 82, size: 1536, elements: !297)
!296 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!297 = !{!298, !299, !309, !317, !318, !339, !340, !344, !391, !3663, !3664, !3665, !3666, !3672, !3673, !3674}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !295, file: !296, line: 84, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !295, file: !296, line: 85, baseType: !300, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !301, line: 275, baseType: !302)
!301 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !301, line: 275, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !302, file: !301, line: 275, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !301, line: 69, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !301, line: 64, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !306, file: !301, line: 65, baseType: !7, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !295, file: !296, line: 86, baseType: !310, size: 128, offset: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !311, line: 38, size: 128, elements: !312)
!311 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!312 = !{!313, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !310, file: !311, line: 39, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !310, file: !311, line: 39, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !295, file: !296, line: 87, baseType: !294, size: 64, offset: 192)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !295, file: !296, line: 88, baseType: !319, size: 128, offset: 256)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !296, line: 49, size: 128, elements: !320)
!320 = !{!321, !335}
!321 = !DIDerivedType(tag: DW_TAG_member, scope: !319, file: !296, line: 50, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !296, line: 50, size: 64, elements: !323)
!323 = !{!324, !331}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !296, line: 51, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !296, line: 51, size: 64, elements: !326)
!326 = !{!327, !330}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !325, file: !296, line: 52, baseType: !328, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !329, line: 21, baseType: !179)
!329 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!330 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !325, file: !296, line: 52, baseType: !328, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !322, file: !296, line: 54, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !329, line: 23, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !180, line: 31, baseType: !334)
!334 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !319, file: !296, line: 56, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !295, file: !296, line: 89, baseType: !273, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !295, file: !296, line: 91, baseType: !341, size: 256, offset: 448)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 256, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !295, file: !296, line: 94, baseType: !345, size: 64, offset: 704)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !346, line: 25, size: 64, elements: !347)
!346 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!347 = !{!348}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !346, line: 26, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !345, file: !346, line: 26, size: 64, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !349, file: !346, line: 28, baseType: !333, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !346, line: 30, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !346, line: 30, size: 64, elements: !354)
!354 = !{!355, !390}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !353, file: !346, line: 31, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !357, line: 29, baseType: !358)
!357 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !357, line: 17, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !357, line: 18, baseType: !361, size: 32)
!361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !358, file: !357, line: 18, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !361, file: !357, line: 19, baseType: !364, size: 32)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !365, line: 14, size: 32, elements: !366)
!365 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !364, file: !365, line: 15, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !369, line: 44, baseType: !370)
!369 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !369, line: 14, size: 32, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !369, line: 15, baseType: !373, size: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !369, line: 15, size: 32, elements: !374)
!374 = !{!375, !376, !383}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !373, file: !369, line: 16, baseType: !130, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !369, line: 24, baseType: !377, size: 16)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !369, line: 24, size: 16, elements: !378)
!378 = !{!379, !382}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !377, file: !369, line: 25, baseType: !380, size: 8)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !329, line: 17, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !180, line: 21, baseType: !338)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !377, file: !369, line: 26, baseType: !380, size: 8, offset: 8)
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !369, line: 28, baseType: !384, size: 32)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !369, line: 28, size: 32, elements: !385)
!385 = !{!386, !389}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !384, file: !369, line: 29, baseType: !387, size: 16)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !329, line: 19, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !180, line: 24, baseType: !152)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !384, file: !369, line: 30, baseType: !387, size: 16, offset: 16)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !353, file: !346, line: 32, baseType: !101, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !295, file: !296, line: 95, baseType: !392, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !296, line: 128, size: 1024, align: 512, elements: !395)
!395 = !{!396, !400, !401, !408, !415, !419, !423, !427, !428, !432, !437, !3653, !3657}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !394, file: !296, line: 129, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!101, !294, !7}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !394, file: !296, line: 130, baseType: !397, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !394, file: !296, line: 131, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!101, !405, !407}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !394, file: !296, line: 132, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!101, !405, !7, !412, !413}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !394, file: !296, line: 134, baseType: !416, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!101, !405}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !394, file: !296, line: 135, baseType: !420, size: 64, offset: 320)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!101, !294}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !394, file: !296, line: 136, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !294}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !394, file: !296, line: 137, baseType: !424, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !394, file: !296, line: 138, baseType: !429, size: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !294, !273}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !394, file: !296, line: 139, baseType: !433, size: 64, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !294, !436, !101}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !394, file: !296, line: 140, baseType: !438, size: 64, offset: 640)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !3652}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !443, line: 70, size: 256, elements: !444)
!443 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!444 = !{!445, !446, !3648, !3649}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !442, file: !443, line: 71, baseType: !294, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !442, file: !443, line: 72, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1190, size: 10752, elements: !449)
!449 = !{!450, !451, !454, !455, !456, !460, !2034, !2168, !2208, !2293, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2310, !2314, !2315, !2318, !2321, !2324, !2327, !2328, !2329, !2370, !3581, !3582, !3583, !3584, !3585, !3586, !3589, !3591, !3598, !3599, !3600, !3601, !3602, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !448, file: !44, line: 1191, baseType: !256, size: 128)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !448, file: !44, line: 1192, baseType: !452, size: 32, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !131, line: 21, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !131, line: 18, baseType: !328)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !448, file: !44, line: 1193, baseType: !338, size: 8, offset: 160)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !448, file: !44, line: 1194, baseType: !233, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !448, file: !44, line: 1195, baseType: !457, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !131, line: 52, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !164, line: 88, baseType: !459)
!459 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !448, file: !44, line: 1196, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2366, size: 576, elements: !463)
!463 = !{!464, !465, !466, !473, !477, !481, !485, !2022, !2023, !2024, !2026, !2027, !2028, !2030, !2031, !2032, !2033}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !462, file: !44, line: 2367, baseType: !412, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !462, file: !44, line: 2368, baseType: !101, size: 32, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !462, file: !44, line: 2376, baseType: !467, size: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!101, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !472, line: 32, flags: DIFlagFwdDecl)
!472 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !462, file: !44, line: 2377, baseType: !474, size: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 75, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !462, file: !44, line: 2378, baseType: !478, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!294, !461, !101, !412, !102}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !462, file: !44, line: 2380, baseType: !482, size: 64, offset: 320)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !447}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !462, file: !44, line: 2381, baseType: !486, size: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !488)
!488 = !{!489, !490, !491, !495, !1678, !1704, !1705, !1706, !1707, !1711, !1714, !1715, !1716, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1784, !1788, !1808, !1826, !1827, !1828, !1829, !1838, !1861, !1862, !1865, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1879, !1880, !1980, !1988, !1989, !1990, !1992, !1996, !1997, !2001, !2002, !2003, !2004, !2006, !2007, !2008, !2015, !2016, !2017, !2021}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !487, file: !6, line: 403, baseType: !5, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !487, file: !6, line: 406, baseType: !256, size: 128, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !6, line: 409, baseType: !492, size: 448, offset: 192)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 448, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 56)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !487, file: !6, line: 417, baseType: !496, size: 768, offset: 640)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !497)
!497 = !{!498, !1661, !1662, !1663, !1666}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !496, file: !6, line: 46, baseType: !499, size: 512)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !500, line: 64, size: 512, elements: !501)
!500 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!501 = !{!502, !503, !504, !506, !552, !1545, !1651, !1656, !1657, !1658, !1659, !1660}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !500, line: 65, baseType: !412, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !499, file: !500, line: 66, baseType: !256, size: 128, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !499, file: !500, line: 67, baseType: !505, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !499, file: !500, line: 68, baseType: !507, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !500, line: 168, size: 768, elements: !509)
!509 = !{!510, !511, !512, !513}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !508, file: !500, line: 169, baseType: !256, size: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !508, file: !500, line: 170, baseType: !356, size: 32, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !508, file: !500, line: 171, baseType: !499, size: 512, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !508, file: !500, line: 172, baseType: !514, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !500, line: 133, size: 192, elements: !517)
!517 = !{!518, !525, !530}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !516, file: !500, line: 134, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!101, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !500, line: 135, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!412, !523}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !516, file: !500, line: 136, baseType: !531, size: 64, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!101, !523, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !500, line: 125, size: 20736, elements: !537)
!537 = !{!538, !542, !546, !547, !551}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !536, file: !500, line: 126, baseType: !539, size: 192)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 192, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 3)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !536, file: !500, line: 127, baseType: !543, size: 4096, offset: 192)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 4096, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !536, file: !500, line: 128, baseType: !101, size: 32, offset: 4288)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !536, file: !500, line: 129, baseType: !548, size: 16384, offset: 4320)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 16384, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 2048)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !536, file: !500, line: 130, baseType: !101, size: 32, offset: 20704)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !499, file: !500, line: 69, baseType: !553, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !500, line: 116, size: 384, elements: !556)
!556 = !{!557, !561, !584, !1504, !1535, !1539}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !555, file: !500, line: 117, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !505}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !555, file: !500, line: 118, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !565, line: 254, size: 128, elements: !566)
!565 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!566 = !{!567, !580}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !564, file: !565, line: 255, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !505, !575, !436}
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !131, line: 66, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !164, line: 73, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !164, line: 15, baseType: !574)
!574 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !565, line: 30, size: 128, elements: !577)
!577 = !{!578, !579}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !565, line: 31, baseType: !412, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !576, file: !565, line: 32, baseType: !277, size: 16, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !564, file: !565, line: 256, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!571, !505, !575, !412, !230}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !555, file: !500, line: 119, baseType: !585, size: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !565, line: 84, size: 320, elements: !589)
!589 = !{!590, !591, !595, !1500, !1502}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !588, file: !565, line: 85, baseType: !412, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !588, file: !565, line: 86, baseType: !592, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!277, !505, !575, !101}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !588, file: !565, line: 88, baseType: !596, size: 64, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!277, !505, !599, !101}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !565, line: 175, size: 512, elements: !601)
!601 = !{!602, !603, !604, !605, !609, !1495, !1496}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !600, file: !565, line: 176, baseType: !576, size: 128)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !600, file: !565, line: 177, baseType: !230, size: 64, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !600, file: !565, line: 178, baseType: !102, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !600, file: !565, line: 179, baseType: !606, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!269}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !600, file: !565, line: 180, baseType: !610, size: 64, offset: 320)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!571, !613, !505, !599, !436, !457, !230}
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 994, size: 1856, align: 64, elements: !615)
!615 = !{!616, !627, !628, !630, !639, !652, !653, !654, !719, !930, !939, !945, !946, !1485, !1486, !1487, !1488, !1490, !1491, !1494}
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !44, line: 995, baseType: !617, size: 128)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !44, line: 995, size: 128, elements: !618)
!618 = !{!619, !625, !626}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !617, file: !44, line: 996, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !621, line: 60, size: 64, elements: !622)
!621 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !621, line: 61, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !617, file: !44, line: 997, baseType: !136, size: 128, align: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !617, file: !44, line: 998, baseType: !7, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !614, file: !44, line: 1005, baseType: !356, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !614, file: !44, line: 1006, baseType: !629, size: 32, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !131, line: 156, baseType: !7)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !614, file: !44, line: 1007, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !632, line: 13, baseType: !633)
!632 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !131, line: 181, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !131, line: 179, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !634, file: !131, line: 180, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !329, line: 22, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !180, line: 30, baseType: !459)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !614, file: !44, line: 1008, baseType: !640, size: 256, offset: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !641, line: 66, size: 256, elements: !642)
!641 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!642 = !{!643, !644, !646, !651}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !640, file: !641, line: 67, baseType: !631, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !640, file: !641, line: 68, baseType: !645, size: 32, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !365, line: 23, baseType: !364)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !640, file: !641, line: 70, baseType: !647, size: 32, offset: 96)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !648, line: 15, size: 32, elements: !649)
!648 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !647, file: !648, line: 20, baseType: !130, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !640, file: !641, line: 72, baseType: !256, size: 128, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !614, file: !44, line: 1009, baseType: !457, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !614, file: !44, line: 1010, baseType: !7, size: 32, offset: 576)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !614, file: !44, line: 1011, baseType: !655, size: 256, offset: 640)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 948, size: 256, elements: !656)
!656 = !{!657, !678, !715, !716, !717, !718}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !655, file: !44, line: 949, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !659, line: 34, baseType: !660)
!659 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !659, line: 25, size: 64, elements: !661)
!661 = !{!662}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !660, file: !659, line: 26, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !664, line: 27, baseType: !665)
!664 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !664, line: 13, size: 64, elements: !666)
!666 = !{!667, !677}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !664, line: 14, baseType: !668, size: 32)
!668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !664, line: 14, size: 32, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !668, file: !664, line: 15, baseType: !130, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !664, line: 16, baseType: !672, size: 32)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !668, file: !664, line: 16, size: 32, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !672, file: !664, line: 18, baseType: !380, size: 8)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !672, file: !664, line: 19, baseType: !676, size: 24, offset: 8)
!676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 24, elements: !540)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !665, file: !664, line: 26, baseType: !368, size: 32, offset: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !655, file: !44, line: 950, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !14, line: 59, size: 768, elements: !681)
!681 = !{!682, !683, !684, !685, !698, !699, !706, !707}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !680, file: !14, line: 61, baseType: !126, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !680, file: !14, line: 62, baseType: !7, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !680, file: !14, line: 63, baseType: !356, size: 32, offset: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !680, file: !14, line: 65, baseType: !686, size: 256, offset: 128)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 256, elements: !696)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !131, line: 194, size: 64, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !687, file: !131, line: 195, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !131, line: 198, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !131, line: 199, baseType: !690, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !691, file: !131, line: 199, baseType: !695, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!696 = !{!697}
!697 = !DISubrange(count: 4)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !680, file: !14, line: 66, baseType: !687, size: 64, offset: 384)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !680, file: !14, line: 68, baseType: !700, size: 192, offset: 448)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !701, line: 41, baseType: !702)
!701 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !701, line: 37, size: 192, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !702, file: !701, line: 38, baseType: !356, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !702, file: !701, line: 39, baseType: !256, size: 128, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !680, file: !14, line: 69, baseType: !136, size: 128, align: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !680, file: !14, line: 70, baseType: !708, offset: 768)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, elements: !172)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !14, line: 54, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !709, file: !14, line: 55, baseType: !101, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !709, file: !14, line: 56, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !14, line: 56, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !655, file: !44, line: 951, baseType: !13, size: 32, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !655, file: !44, line: 952, baseType: !157, size: 32, offset: 160)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !655, file: !44, line: 952, baseType: !157, size: 32, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !655, file: !44, line: 953, baseType: !101, size: 32, offset: 224)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !614, file: !44, line: 1012, baseType: !720, size: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !723, line: 110, size: 1472, elements: !724)
!723 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!724 = !{!725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !741, !742, !743, !744, !745, !746, !875, !876, !877, !878, !879, !910, !913, !917, !925}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !722, file: !723, line: 111, baseType: !631, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !722, file: !723, line: 112, baseType: !157, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !722, file: !723, line: 113, baseType: !166, size: 32, offset: 96)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !722, file: !723, line: 114, baseType: !157, size: 32, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !722, file: !723, line: 115, baseType: !166, size: 32, offset: 160)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !722, file: !723, line: 116, baseType: !157, size: 32, offset: 192)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !722, file: !723, line: 117, baseType: !166, size: 32, offset: 224)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !722, file: !723, line: 118, baseType: !157, size: 32, offset: 256)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !722, file: !723, line: 119, baseType: !166, size: 32, offset: 288)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !722, file: !723, line: 120, baseType: !7, size: 32, offset: 320)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !722, file: !723, line: 121, baseType: !736, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !737, line: 24, baseType: !738)
!737 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !737, line: 24, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !738, file: !737, line: 24, baseType: !332, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !722, file: !723, line: 122, baseType: !736, size: 64, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !722, file: !723, line: 123, baseType: !736, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !722, file: !723, line: 124, baseType: !736, size: 64, offset: 576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !722, file: !723, line: 125, baseType: !736, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !722, file: !723, line: 127, baseType: !338, size: 8, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !722, file: !723, line: 129, baseType: !747, size: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !749, line: 195, size: 1728, elements: !750)
!749 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!750 = !{!751, !752, !757, !769, !778, !781, !782, !789, !790, !791, !792, !795, !796, !797, !798, !799, !839, !860}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !748, file: !749, line: 196, baseType: !126, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !748, file: !749, line: 197, baseType: !753, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !749, line: 28, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !131, line: 104, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !329, line: 20, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !180, line: 26, baseType: !101)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !749, line: 198, baseType: !758, size: 192, offset: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !749, line: 198, size: 192, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !758, file: !749, line: 199, baseType: !256, size: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !758, file: !749, line: 200, baseType: !762, size: 192, align: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !763, line: 5, size: 192, align: 64, elements: !764)
!763 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!764 = !{!765, !766, !768}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !762, file: !763, line: 6, baseType: !233, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !762, file: !763, line: 7, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !762, file: !763, line: 8, baseType: !767, size: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !748, file: !749, line: 205, baseType: !770, size: 320, offset: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !771, line: 48, size: 320, elements: !772)
!771 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!772 = !{!773, !774, !775, !776, !777}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !770, file: !771, line: 49, baseType: !631, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !770, file: !771, line: 55, baseType: !631, size: 64, offset: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !770, file: !771, line: 57, baseType: !647, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !770, file: !771, line: 59, baseType: !645, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !770, file: !771, line: 60, baseType: !256, size: 128, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !748, file: !749, line: 206, baseType: !779, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !749, line: 206, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !748, file: !749, line: 207, baseType: !102, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !749, line: 208, baseType: !783, size: 64, offset: 704)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !749, line: 208, size: 64, elements: !784)
!784 = !{!785, !788}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !783, file: !749, line: 209, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !787, line: 8, baseType: !638)
!787 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!788 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !783, file: !749, line: 210, baseType: !786, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !748, file: !749, line: 212, baseType: !786, size: 64, offset: 768)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !748, file: !749, line: 213, baseType: !157, size: 32, offset: 832)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !748, file: !749, line: 214, baseType: !166, size: 32, offset: 864)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !748, file: !749, line: 215, baseType: !793, size: 32, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !749, line: 31, baseType: !794)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 110, baseType: !328)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !748, file: !749, line: 216, baseType: !152, size: 16, offset: 928)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !748, file: !749, line: 217, baseType: !152, size: 16, offset: 944)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !748, file: !749, line: 221, baseType: !150, size: 16, offset: 960)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !748, file: !749, line: 228, baseType: !233, size: 64, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !749, line: 245, baseType: !800, size: 320, offset: 1088)
!800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !749, line: 245, size: 320, elements: !801)
!801 = !{!802, !831}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !800, file: !749, line: 246, baseType: !803, size: 320)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !749, line: 114, size: 320, elements: !804)
!804 = !{!805, !806, !818, !821, !830}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !803, file: !749, line: 116, baseType: !233, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !749, line: 117, baseType: !807, size: 64, offset: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !803, file: !749, line: 117, size: 64, elements: !808)
!808 = !{!809, !817}
!809 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !749, line: 118, baseType: !810, size: 64)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !807, file: !749, line: 118, size: 64, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !810, file: !749, line: 120, baseType: !387, size: 16)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !810, file: !749, line: 121, baseType: !814, size: 48, offset: 16)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 48, elements: !815)
!815 = !{!816}
!816 = !DISubrange(count: 6)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !807, file: !749, line: 127, baseType: !233, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !803, file: !749, line: 129, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !749, line: 102, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !803, file: !749, line: 130, baseType: !822, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !749, line: 108, size: 192, elements: !824)
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !823, file: !749, line: 109, baseType: !136, size: 128, align: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !823, file: !749, line: 110, baseType: !126, size: 32, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !823, file: !749, line: 111, baseType: !828, size: 8, offset: 160)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !131, line: 35, baseType: !829)
!829 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !803, file: !749, line: 131, baseType: !412, size: 64, offset: 256)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !800, file: !749, line: 247, baseType: !832, size: 320)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !800, file: !749, line: 247, size: 320, elements: !833)
!833 = !{!834, !835, !836, !837, !838}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !832, file: !749, line: 248, baseType: !233, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !832, file: !749, line: 249, baseType: !233, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !832, file: !749, line: 250, baseType: !819, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !832, file: !749, line: 251, baseType: !822, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !832, file: !749, line: 252, baseType: !436, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, scope: !748, file: !749, line: 260, baseType: !840, size: 256, offset: 1408)
!840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !748, file: !749, line: 260, size: 256, elements: !841)
!841 = !{!842, !848}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !840, file: !749, line: 261, baseType: !843, size: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !749, line: 134, size: 256, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !843, file: !749, line: 135, baseType: !102, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !843, file: !749, line: 136, baseType: !847, size: 256)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !696)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !840, file: !749, line: 262, baseType: !849, size: 256)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !840, file: !749, line: 262, size: 256, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !849, file: !749, line: 264, baseType: !256, size: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !849, file: !749, line: 265, baseType: !853, size: 128, offset: 128)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !854, line: 22, size: 128, elements: !855)
!854 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!855 = !{!856, !859}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !853, file: !854, line: 23, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !854, line: 23, flags: DIFlagFwdDecl)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !853, file: !854, line: 24, baseType: !233, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !748, file: !749, line: 280, baseType: !861, size: 64, offset: 1664)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !749, line: 176, size: 192, elements: !863)
!863 = !{!864, !873, !874}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !862, file: !749, line: 177, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !749, line: 171, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!101, !747, !869, !871, !747}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !862, file: !749, line: 178, baseType: !747, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !862, file: !749, line: 179, baseType: !819, size: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !722, file: !723, line: 130, baseType: !747, size: 64, offset: 832)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !722, file: !723, line: 131, baseType: !747, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !722, file: !723, line: 132, baseType: !747, size: 64, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !722, file: !723, line: 135, baseType: !102, size: 64, offset: 1024)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !722, file: !723, line: 137, baseType: !880, size: 64, offset: 1088)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !882, line: 14, size: 1088, elements: !883)
!882 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!883 = !{!884, !885, !894, !895, !896, !897, !898, !899}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !881, file: !882, line: 15, baseType: !126, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !881, file: !882, line: 17, baseType: !886, size: 320, offset: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !887, line: 22, size: 320, elements: !888)
!887 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!888 = !{!889, !890, !891, !892}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !887, line: 23, baseType: !645, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !886, file: !887, line: 24, baseType: !637, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !886, file: !887, line: 26, baseType: !256, size: 128, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !886, file: !887, line: 28, baseType: !893, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !881, file: !882, line: 19, baseType: !233, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !881, file: !882, line: 20, baseType: !631, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !881, file: !882, line: 23, baseType: !691, size: 128, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !881, file: !882, line: 24, baseType: !157, size: 32, offset: 640)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !881, file: !882, line: 29, baseType: !631, size: 64, offset: 704)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !881, file: !882, line: 36, baseType: !900, size: 320, offset: 768)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !901, line: 15, size: 320, elements: !902)
!901 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!902 = !{!903, !904, !905, !906, !907, !908, !909}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !901, line: 16, baseType: !645, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !900, file: !901, line: 18, baseType: !101, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !900, file: !901, line: 19, baseType: !101, size: 32, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !900, file: !901, line: 20, baseType: !101, size: 32, offset: 96)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !900, file: !901, line: 21, baseType: !101, size: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !900, file: !901, line: 22, baseType: !233, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !900, file: !901, line: 23, baseType: !233, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !722, file: !723, line: 138, baseType: !911, size: 64, offset: 1152)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !158, line: 18, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !722, file: !723, line: 139, baseType: !914, size: 64, offset: 1216)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !916, line: 16, flags: DIFlagFwdDecl)
!916 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!917 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !722, file: !723, line: 140, baseType: !918, size: 64, offset: 1280)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !723, line: 25, size: 64, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !919, file: !723, line: 26, baseType: !130, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !919, file: !723, line: 27, baseType: !101, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !919, file: !723, line: 28, baseType: !924, offset: 64)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, elements: !172)
!925 = !DIDerivedType(tag: DW_TAG_member, scope: !722, file: !723, line: 142, baseType: !926, size: 128, offset: 1344)
!926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !722, file: !723, line: 142, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !926, file: !723, line: 143, baseType: !101, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !926, file: !723, line: 144, baseType: !136, size: 128, align: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !614, file: !44, line: 1013, baseType: !931, size: 256, offset: 960)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 970, size: 256, elements: !932)
!932 = !{!933, !934, !935, !936, !937, !938}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !931, file: !44, line: 971, baseType: !233, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !931, file: !44, line: 972, baseType: !7, size: 32, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !931, file: !44, line: 973, baseType: !7, size: 32, offset: 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !931, file: !44, line: 974, baseType: !7, size: 32, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !931, file: !44, line: 975, baseType: !7, size: 32, offset: 160)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !931, file: !44, line: 976, baseType: !457, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !614, file: !44, line: 1014, baseType: !940, size: 128, offset: 1216)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !941, line: 8, size: 128, elements: !942)
!941 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!942 = !{!943, !944}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !940, file: !941, line: 9, baseType: !441, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !940, file: !941, line: 10, baseType: !294, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !614, file: !44, line: 1015, baseType: !273, size: 64, offset: 1344)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !614, file: !44, line: 1016, baseType: !947, size: 64, offset: 1408)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1914, size: 2112, elements: !950)
!950 = !{!951, !952, !956, !961, !965, !1043, !1044, !1050, !1063, !1070, !1074, !1075, !1404, !1405, !1409, !1414, !1415, !1419, !1423, !1429, !1430, !1434, !1435, !1442, !1446, !1450, !1456, !1460, !1466, !1470, !1474, !1475, !1481}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !949, file: !44, line: 1915, baseType: !486, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !949, file: !44, line: 1916, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!457, !613, !457, !101}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !949, file: !44, line: 1917, baseType: !957, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!571, !613, !436, !230, !960}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !949, file: !44, line: 1918, baseType: !962, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!571, !613, !412, !230, !960}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !949, file: !44, line: 1919, baseType: !966, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!571, !969, !991}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 373, size: 384, elements: !971)
!971 = !{!972, !973, !974, !978, !979, !980, !981}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !970, file: !44, line: 374, baseType: !613, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !970, file: !44, line: 375, baseType: !457, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !970, file: !44, line: 376, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !969, !574}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !970, file: !44, line: 377, baseType: !102, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !970, file: !44, line: 378, baseType: !101, size: 32, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !970, file: !44, line: 379, baseType: !387, size: 16, offset: 288)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !970, file: !44, line: 380, baseType: !982, size: 64, offset: 320)
!982 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !970, file: !44, line: 380, size: 64, elements: !983)
!983 = !{!984, !987}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !982, file: !44, line: 386, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 386, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !982, file: !44, line: 395, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!571, !102}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !226, line: 41, size: 320, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999, !1004, !1038}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !992, file: !226, line: 42, baseType: !380, size: 8)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !992, file: !226, line: 43, baseType: !828, size: 8, offset: 8)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !992, file: !226, line: 44, baseType: !828, size: 8, offset: 16)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !992, file: !226, line: 45, baseType: !828, size: 8, offset: 24)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !992, file: !226, line: 46, baseType: !828, size: 8, offset: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !226, line: 47, baseType: !1000, size: 64, offset: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !226, line: 47, size: 64, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1000, file: !226, line: 48, baseType: !230, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1000, file: !226, line: 49, baseType: !101, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !226, line: 61, baseType: !1005, size: 128, offset: 128)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !226, line: 61, size: 128, elements: !1006)
!1006 = !{!1007, !1013}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1005, file: !226, line: 67, baseType: !1008, size: 128)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1009, line: 17, size: 128, elements: !1010)
!1009 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1008, file: !1009, line: 19, baseType: !102, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1008, file: !1009, line: 20, baseType: !231, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !226, line: 68, baseType: !1014, size: 128)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !226, line: 68, size: 128, elements: !1015)
!1015 = !{!1016, !1037}
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !226, line: 69, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !226, line: 69, size: 64, elements: !1018)
!1018 = !{!1019, !1022, !1025, !1028, !1036}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1017, file: !226, line: 71, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1017, file: !226, line: 72, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1017, file: !226, line: 73, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1017, file: !226, line: 74, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1031, line: 296, size: 128, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1032 = !{!1033, !1034, !1035}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1030, file: !1031, line: 297, baseType: !356, size: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1030, file: !1031, line: 299, baseType: !187, size: 32, offset: 32)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1030, file: !1031, line: 300, baseType: !102, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1017, file: !226, line: 75, baseType: !102, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1014, file: !226, line: 77, baseType: !230, size: 64, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !226, line: 80, baseType: !1039, size: 64, offset: 256)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !226, line: 80, size: 64, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1039, file: !226, line: 81, baseType: !233, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1039, file: !226, line: 82, baseType: !457, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !949, file: !44, line: 1920, baseType: !966, size: 64, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !949, file: !44, line: 1921, baseType: !1045, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!101, !969, !1048, !7}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !44, line: 53, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !949, file: !44, line: 1923, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!101, !613, !1054}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1858, size: 128, elements: !1056)
!1056 = !{!1057, !1062}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1055, file: !44, line: 1859, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1855, baseType: !1059)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!828, !1054, !412, !101, !457, !332, !7}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1055, file: !44, line: 1860, baseType: !457, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !949, file: !44, line: 1924, baseType: !1064, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1067, !613, !1068}
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !178, line: 59, baseType: !7)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !472, line: 31, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !949, file: !44, line: 1925, baseType: !1071, size: 64, offset: 576)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!574, !613, !7, !233}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !949, file: !44, line: 1926, baseType: !1071, size: 64, offset: 640)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !949, file: !44, line: 1927, baseType: !1076, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!101, !613, !1079}
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !22, line: 625, size: 1344, elements: !1081)
!1081 = !{!1082, !1091, !1260, !1266, !1273, !1274, !1279, !1280, !1285, !1286, !1289, !1397, !1398, !1399, !1400, !1401, !1402}
!1082 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !22, line: 628, baseType: !1083, size: 128)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !22, line: 628, size: 128, elements: !1084)
!1084 = !{!1085, !1090}
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1083, file: !22, line: 629, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1083, file: !22, line: 629, size: 128, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1086, file: !22, line: 631, baseType: !233, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1086, file: !22, line: 632, baseType: !233, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1083, file: !22, line: 635, baseType: !136, size: 128, align: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1080, file: !22, line: 639, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !22, line: 733, size: 10240, elements: !1094)
!1094 = !{!1095, !1258}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !22, line: 734, baseType: !1096, size: 10240)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !22, line: 734, size: 10240, elements: !1097)
!1097 = !{!1098, !1102, !1116, !1120, !1121, !1122, !1123, !1124, !1125, !1134, !1135, !1136, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1175, !1177, !1180, !1227, !1228, !1229, !1232, !1233, !1234, !1237, !1238, !1239, !1245, !1246}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !22, line: 739, baseType: !1099, size: 512, align: 512)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !22, line: 739, size: 512, align: 512, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1099, file: !22, line: 747, baseType: !130, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1096, file: !22, line: 750, baseType: !1103, size: 128, offset: 512)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1104, line: 218, size: 128, elements: !1105)
!1104 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1105 = !{!1106, !1114, !1115}
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1103, file: !1104, line: 219, baseType: !1107, size: 32)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1103, file: !1104, line: 219, size: 32, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1107, file: !1104, line: 220, baseType: !356, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1107, file: !1104, line: 221, baseType: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1104, line: 197, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1104, line: 197, elements: !1113)
!1113 = !{}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1103, file: !1104, line: 223, baseType: !7, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1103, file: !1104, line: 224, baseType: !102, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1096, file: !22, line: 752, baseType: !1117, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!233, !613, !233, !233, !233, !233}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1096, file: !22, line: 756, baseType: !233, size: 64, offset: 704)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1096, file: !22, line: 757, baseType: !233, size: 64, offset: 768)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1096, file: !22, line: 760, baseType: !233, size: 64, offset: 832)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1096, file: !22, line: 761, baseType: !233, size: 64, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1096, file: !22, line: 763, baseType: !233, size: 64, offset: 960)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1096, file: !22, line: 764, baseType: !1126, size: 64, offset: 1024)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1128, line: 299, baseType: !1129)
!1128 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 299, size: 64, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1129, file: !1128, line: 299, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1133, line: 18, baseType: !233)
!1133 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1096, file: !22, line: 773, baseType: !130, size: 32, offset: 1088)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1096, file: !22, line: 785, baseType: !130, size: 32, offset: 1120)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1096, file: !22, line: 795, baseType: !1137, size: 64, offset: 1152)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !22, line: 726, size: 128, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1138, file: !22, line: 727, baseType: !332, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1138, file: !22, line: 728, baseType: !101, size: 32, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1096, file: !22, line: 801, baseType: !233, size: 64, offset: 1216)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1096, file: !22, line: 804, baseType: !631, size: 64, offset: 1280)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1096, file: !22, line: 806, baseType: !101, size: 32, offset: 1344)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1096, file: !22, line: 808, baseType: !356, size: 32, offset: 1376)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1096, file: !22, line: 823, baseType: !770, size: 320, offset: 1408)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1096, file: !22, line: 825, baseType: !256, size: 128, offset: 1728)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1096, file: !22, line: 845, baseType: !101, size: 32, offset: 1856)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1096, file: !22, line: 849, baseType: !233, size: 64, offset: 1920)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1096, file: !22, line: 850, baseType: !233, size: 64, offset: 1984)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1096, file: !22, line: 852, baseType: !233, size: 64, offset: 2048)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1096, file: !22, line: 853, baseType: !233, size: 64, offset: 2112)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1096, file: !22, line: 854, baseType: !633, size: 64, offset: 2176)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1096, file: !22, line: 855, baseType: !233, size: 64, offset: 2240)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1096, file: !22, line: 856, baseType: !233, size: 64, offset: 2304)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1096, file: !22, line: 857, baseType: !233, size: 64, offset: 2368)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1096, file: !22, line: 858, baseType: !233, size: 64, offset: 2432)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1096, file: !22, line: 865, baseType: !305, size: 32, offset: 2496)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1096, file: !22, line: 867, baseType: !356, size: 32, offset: 2528)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1096, file: !22, line: 869, baseType: !233, size: 64, offset: 2560)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1096, file: !22, line: 869, baseType: !233, size: 64, offset: 2624)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1096, file: !22, line: 869, baseType: !233, size: 64, offset: 2688)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1096, file: !22, line: 869, baseType: !233, size: 64, offset: 2752)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1096, file: !22, line: 870, baseType: !233, size: 64, offset: 2816)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1096, file: !22, line: 870, baseType: !233, size: 64, offset: 2880)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1096, file: !22, line: 870, baseType: !233, size: 64, offset: 2944)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1096, file: !22, line: 871, baseType: !233, size: 64, offset: 3008)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1096, file: !22, line: 871, baseType: !233, size: 64, offset: 3072)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1096, file: !22, line: 871, baseType: !233, size: 64, offset: 3136)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1096, file: !22, line: 871, baseType: !233, size: 64, offset: 3200)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1096, file: !22, line: 873, baseType: !1172, size: 3328, offset: 3264)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 3328, elements: !1173)
!1173 = !{!1174}
!1174 = !DISubrange(count: 52)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1096, file: !22, line: 875, baseType: !1176, size: 1280, offset: 6592)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, size: 1280, elements: !696)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1096, file: !22, line: 877, baseType: !1178, size: 64, offset: 7872)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !22, line: 877, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1096, file: !22, line: 880, baseType: !1181, size: 1088, offset: 7936)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1182, line: 72, baseType: !1183)
!1182 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1182, line: 23, size: 1088, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1192, !1193, !1194, !1195, !1222, !1223, !1224}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1183, file: !1182, line: 28, baseType: !332, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1183, file: !1182, line: 38, baseType: !633, size: 64, offset: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1183, file: !1182, line: 40, baseType: !233, size: 64, offset: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1183, file: !1182, line: 43, baseType: !770, size: 320, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1183, file: !1182, line: 44, baseType: !1190, size: 64, offset: 512)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1182, line: 44, flags: DIFlagFwdDecl)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1182, line: 48, baseType: !233, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !1182, line: 59, baseType: !640, size: 256, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1183, file: !1182, line: 60, baseType: !102, size: 64, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1183, file: !1182, line: 61, baseType: !1196, size: 64, offset: 960)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1198)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1199, line: 13, size: 1216, elements: !1200)
!1199 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1198, file: !1199, line: 14, baseType: !102, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1198, file: !1199, line: 15, baseType: !233, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1198, file: !1199, line: 17, baseType: !233, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1198, file: !1199, line: 17, baseType: !233, size: 64, offset: 192)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1198, file: !1199, line: 18, baseType: !233, size: 64, offset: 256)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1198, file: !1199, line: 18, baseType: !233, size: 64, offset: 320)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1198, file: !1199, line: 19, baseType: !1208, size: 64, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1198, file: !1199, line: 21, baseType: !574, size: 64, offset: 448)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1198, file: !1199, line: 23, baseType: !574, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1198, file: !1199, line: 24, baseType: !574, size: 64, offset: 576)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1198, file: !1199, line: 25, baseType: !574, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1198, file: !1199, line: 26, baseType: !574, size: 64, offset: 704)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1198, file: !1199, line: 27, baseType: !574, size: 64, offset: 768)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1198, file: !1199, line: 28, baseType: !574, size: 64, offset: 832)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1198, file: !1199, line: 29, baseType: !574, size: 64, offset: 896)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1198, file: !1199, line: 30, baseType: !574, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1198, file: !1199, line: 31, baseType: !574, size: 64, offset: 1024)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1198, file: !1199, line: 32, baseType: !574, size: 64, offset: 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1198, file: !1199, line: 33, baseType: !574, size: 64, offset: 1152)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1183, file: !1182, line: 63, baseType: !130, size: 32, offset: 1024)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1183, file: !1182, line: 69, baseType: !387, size: 16, offset: 1056)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1183, file: !1182, line: 70, baseType: !1225, size: 16, offset: 1072)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !329, line: 18, baseType: !1226)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !180, line: 23, baseType: !150)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1096, file: !22, line: 882, baseType: !233, size: 64, offset: 9024)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1096, file: !22, line: 885, baseType: !356, size: 32, offset: 9088)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1096, file: !22, line: 886, baseType: !1230, size: 64, offset: 9152)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !22, line: 732, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1096, file: !22, line: 901, baseType: !911, size: 64, offset: 9216)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1096, file: !22, line: 904, baseType: !613, size: 64, offset: 9280)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1096, file: !22, line: 906, baseType: !1235, size: 64, offset: 9344)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !22, line: 906, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1096, file: !22, line: 930, baseType: !130, size: 32, offset: 9408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1096, file: !22, line: 933, baseType: !130, size: 32, offset: 9440)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1096, file: !22, line: 935, baseType: !1240, size: 64, offset: 9472)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !66, line: 103, size: 64, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1240, file: !66, line: 104, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !66, line: 101, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1096, file: !22, line: 940, baseType: !631, size: 64, offset: 9536)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1096, file: !22, line: 942, baseType: !1247, size: 256, offset: 9600)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1248, line: 98, size: 256, elements: !1249)
!1248 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1247, file: !1248, line: 99, baseType: !631, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1247, file: !1248, line: 100, baseType: !256, size: 128, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1247, file: !1248, line: 101, baseType: !1253, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1248, line: 21, baseType: !1254)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !1257}
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1093, file: !22, line: 986, baseType: !1259, offset: 10240)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, elements: !172)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1080, file: !22, line: 640, baseType: !1261, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1128, line: 297, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1128, line: 297, size: 64, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1262, file: !1128, line: 297, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1133, line: 19, baseType: !233)
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !22, line: 646, baseType: !1267, size: 64, offset: 256)
!1267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !22, line: 646, size: 64, elements: !1268)
!1268 = !{!1269, !1272}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1267, file: !22, line: 647, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !22, line: 542, baseType: !233)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1267, file: !22, line: 648, baseType: !1271, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1080, file: !22, line: 666, baseType: !101, size: 32, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1080, file: !22, line: 667, baseType: !1275, size: 64, offset: 384)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !22, line: 579, size: 320, elements: !1277)
!1277 = !{!1278}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1276, file: !22, line: 580, baseType: !770, size: 320)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1080, file: !22, line: 670, baseType: !828, size: 8, offset: 448)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1080, file: !22, line: 681, baseType: !1281, size: 256, offset: 512)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !22, line: 678, size: 256, elements: !1282)
!1282 = !{!1283, !1284}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1281, file: !22, line: 679, baseType: !762, size: 192, align: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1281, file: !22, line: 680, baseType: !233, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1080, file: !22, line: 689, baseType: !256, size: 128, offset: 768)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1080, file: !22, line: 691, baseType: !1287, size: 64, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !22, line: 691, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1080, file: !22, line: 694, baseType: !1290, size: 64, offset: 960)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1293, line: 563, size: 1024, elements: !1294)
!1293 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1294 = !{!1295, !1299, !1300, !1304, !1308, !1312, !1361, !1365, !1369, !1373, !1374, !1375, !1379, !1383, !1389, !1393}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1292, file: !1293, line: 564, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1079}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1292, file: !1293, line: 569, baseType: !1296, size: 64, offset: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1292, file: !1293, line: 571, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!101, !1079, !233}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1292, file: !1293, line: 572, baseType: !1305, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!101, !1079}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1292, file: !1293, line: 578, baseType: !1309, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!101, !1079, !233, !233, !233}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1292, file: !1293, line: 580, baseType: !1313, size: 64, offset: 320)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!1316, !1317}
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !22, line: 1184, baseType: !7)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1293, line: 512, size: 896, elements: !1319)
!1319 = !{!1320, !1328, !1329, !1336, !1343, !1353, !1354, !1355, !1357, !1359}
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1293, line: 513, baseType: !1321, size: 320)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1318, file: !1293, line: 513, size: 320, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1321, file: !1293, line: 514, baseType: !1079, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1321, file: !1293, line: 515, baseType: !187, size: 32, offset: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1321, file: !1293, line: 516, baseType: !233, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1321, file: !1293, line: 517, baseType: !233, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1321, file: !1293, line: 518, baseType: !233, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1318, file: !1293, line: 520, baseType: !21, size: 32, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1318, file: !1293, line: 522, baseType: !1330, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1133, line: 22, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 22, size: 64, elements: !1333)
!1333 = !{!1334}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1332, file: !1133, line: 22, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1133, line: 15, baseType: !233)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1318, file: !1293, line: 524, baseType: !1337, size: 64, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1128, line: 372, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1128, line: 372, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1339, file: !1128, line: 372, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1133, line: 16, baseType: !233)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1318, file: !1293, line: 527, baseType: !1344, size: 64, offset: 512)
!1344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1318, file: !1293, line: 527, size: 64, elements: !1345)
!1345 = !{!1346, !1352}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1344, file: !1293, line: 528, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1133, line: 21, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1133, line: 21, size: 64, elements: !1349)
!1349 = !{!1350}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1348, file: !1133, line: 21, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1133, line: 14, baseType: !233)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1344, file: !1293, line: 529, baseType: !1331, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1318, file: !1293, line: 534, baseType: !242, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1318, file: !1293, line: 535, baseType: !242, size: 64, offset: 640)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1318, file: !1293, line: 541, baseType: !1356, size: 64, offset: 704)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1318, file: !1293, line: 545, baseType: !1358, size: 64, offset: 768)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1318, file: !1293, line: 549, baseType: !1360, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1128, line: 520, baseType: !242)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1292, file: !1293, line: 581, baseType: !1362, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!1316, !1317, !7}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1292, file: !1293, line: 582, baseType: !1366, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!1316, !1317, !233, !233}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1292, file: !1293, line: 584, baseType: !1370, size: 64, offset: 512)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!233, !1079}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1292, file: !1293, line: 588, baseType: !1313, size: 64, offset: 576)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1292, file: !1293, line: 591, baseType: !1313, size: 64, offset: 640)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1292, file: !1293, line: 597, baseType: !1376, size: 64, offset: 704)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!101, !1079, !233, !102, !101, !101}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1292, file: !1293, line: 603, baseType: !1380, size: 64, offset: 768)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!412, !1079}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1292, file: !1293, line: 613, baseType: !1384, size: 64, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!101, !1079, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !22, line: 717, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1292, file: !1293, line: 625, baseType: !1390, size: 64, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1387, !1079, !233}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1292, file: !1293, line: 633, baseType: !1394, size: 64, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!242, !1079, !233}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1080, file: !22, line: 697, baseType: !233, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1080, file: !22, line: 699, baseType: !613, size: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1080, file: !22, line: 700, baseType: !102, size: 64, offset: 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1080, file: !22, line: 711, baseType: !631, size: 64, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1080, file: !22, line: 717, baseType: !1387, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1080, file: !22, line: 722, baseType: !1403, offset: 1344)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !22, line: 570, elements: !1113)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !949, file: !44, line: 1928, baseType: !233, size: 64, offset: 768)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !949, file: !44, line: 1929, baseType: !1406, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!101, !273, !613}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !949, file: !44, line: 1930, baseType: !1410, size: 64, offset: 896)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!101, !613, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1061, baseType: !102)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !949, file: !44, line: 1931, baseType: !1406, size: 64, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !949, file: !44, line: 1932, baseType: !1416, size: 64, offset: 1024)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!101, !613, !457, !457, !101}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !949, file: !44, line: 1933, baseType: !1420, size: 64, offset: 1088)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!101, !101, !613, !101}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !949, file: !44, line: 1934, baseType: !1424, size: 64, offset: 1152)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!101, !613, !101, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1063, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !949, file: !44, line: 1935, baseType: !1117, size: 64, offset: 1216)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !949, file: !44, line: 1936, baseType: !1431, size: 64, offset: 1280)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!101, !101}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !949, file: !44, line: 1937, baseType: !1424, size: 64, offset: 1344)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !949, file: !44, line: 1938, baseType: !1436, size: 64, offset: 1408)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{!571, !1439, !613, !960, !230, !7}
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1441, line: 59, flags: DIFlagFwdDecl)
!1441 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !949, file: !44, line: 1939, baseType: !1443, size: 64, offset: 1472)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!571, !613, !960, !1439, !230, !7}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !949, file: !44, line: 1940, baseType: !1447, size: 64, offset: 1536)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{null, !613}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !949, file: !44, line: 1941, baseType: !1451, size: 64, offset: 1600)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!101, !613, !101, !1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !949, file: !44, line: 1942, baseType: !1457, size: 64, offset: 1664)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!574, !613, !101, !457, !457}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !949, file: !44, line: 1944, baseType: !1461, size: 64, offset: 1728)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1464, !613}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1441, line: 66, flags: DIFlagFwdDecl)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !949, file: !44, line: 1948, baseType: !1467, size: 64, offset: 1792)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!571, !613, !457, !613, !457, !230, !7}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !949, file: !44, line: 1950, baseType: !1471, size: 64, offset: 1856)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!457, !613, !457, !613, !457, !457, !7}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !949, file: !44, line: 1953, baseType: !1416, size: 64, offset: 1920)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !949, file: !44, line: 1954, baseType: !1476, size: 64, offset: 1984)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!101, !1479, !7}
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !44, line: 1911, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !949, file: !44, line: 1955, baseType: !1482, size: 64, offset: 2048)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!101, !1479, !1048, !7}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !614, file: !44, line: 1018, baseType: !332, size: 64, offset: 1472)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !614, file: !44, line: 1020, baseType: !102, size: 64, offset: 1536)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !614, file: !44, line: 1023, baseType: !102, size: 64, offset: 1600)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !614, file: !44, line: 1027, baseType: !1489, size: 64, offset: 1664)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !614, file: !44, line: 1029, baseType: !269, size: 64, offset: 1728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !614, file: !44, line: 1030, baseType: !1492, size: 32, offset: 1792)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1493, line: 8, baseType: !328)
!1493 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !614, file: !44, line: 1031, baseType: !1492, size: 32, offset: 1824)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !600, file: !565, line: 182, baseType: !610, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !600, file: !565, line: 184, baseType: !1497, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!101, !613, !505, !599, !1079}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !588, file: !565, line: 90, baseType: !1501, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !588, file: !565, line: 91, baseType: !1503, size: 64, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !555, file: !500, line: 120, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1508, !523}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !38, line: 39, size: 384, elements: !1511)
!1511 = !{!1512, !1513, !1517, !1521, !1527, !1531}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1510, file: !38, line: 40, baseType: !37, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1510, file: !38, line: 41, baseType: !1514, size: 64, offset: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!828}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1510, file: !38, line: 42, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!102}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1510, file: !38, line: 43, baseType: !1522, size: 64, offset: 192)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!1208, !1525}
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !38, line: 19, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1510, file: !38, line: 44, baseType: !1528, size: 64, offset: 256)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!1208}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1510, file: !38, line: 45, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !102}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !555, file: !500, line: 121, baseType: !1536, size: 64, offset: 256)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{!1208, !523}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !555, file: !500, line: 122, baseType: !1540, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{null, !523, !1543, !1544}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !499, file: !500, line: 70, baseType: !1546, size: 64, offset: 384)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !472, line: 190, size: 1152, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1643, !1644, !1645, !1646, !1647, !1650}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1547, file: !472, line: 191, baseType: !130, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1547, file: !472, line: 192, baseType: !130, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1547, file: !472, line: 202, baseType: !1546, size: 64, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1547, file: !472, line: 203, baseType: !412, size: 64, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1547, file: !472, line: 205, baseType: !762, size: 192, align: 64, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1547, file: !472, line: 207, baseType: !1208, size: 64, offset: 384)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1547, file: !472, line: 208, baseType: !7, size: 32, offset: 448)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !472, line: 209, baseType: !1557, size: 256, offset: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !472, line: 209, size: 256, elements: !1558)
!1558 = !{!1559, !1571, !1575}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1557, file: !472, line: 210, baseType: !1560, size: 256)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !472, line: 153, size: 256, elements: !1561)
!1561 = !{!1562, !1563, !1567, !1570}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1560, file: !472, line: 154, baseType: !233, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1560, file: !472, line: 156, baseType: !1564, size: 64, offset: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !763, line: 12, size: 64, elements: !1565)
!1565 = !{!1566}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1564, file: !763, line: 13, baseType: !767, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1560, file: !472, line: 162, baseType: !1568, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !472, line: 162, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1560, file: !472, line: 167, baseType: !233, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1557, file: !472, line: 211, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !472, line: 170, size: 64, elements: !1573)
!1573 = !{!1574}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1572, file: !472, line: 171, baseType: !1546, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1557, file: !472, line: 212, baseType: !1576, size: 256)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !472, line: 174, size: 256, elements: !1577)
!1577 = !{!1578, !1638, !1641, !1642}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1576, file: !472, line: 175, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !472, line: 271, size: 768, elements: !1582)
!1582 = !{!1583, !1603, !1607, !1611, !1615, !1619, !1623, !1627, !1628, !1629, !1630, !1634}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1581, file: !472, line: 276, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!101, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !472, line: 251, size: 1216, elements: !1589)
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1588, file: !472, line: 253, baseType: !1546, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1588, file: !472, line: 254, baseType: !613, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1588, file: !472, line: 255, baseType: !1464, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1588, file: !472, line: 256, baseType: !102, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1588, file: !472, line: 259, baseType: !640, size: 256, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1588, file: !472, line: 260, baseType: !640, size: 256, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1588, file: !472, line: 261, baseType: !101, size: 32, offset: 768)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1588, file: !472, line: 262, baseType: !256, size: 128, offset: 832)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1588, file: !472, line: 263, baseType: !436, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1588, file: !472, line: 265, baseType: !230, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1588, file: !472, line: 266, baseType: !828, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1588, file: !472, line: 267, baseType: !828, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1588, file: !472, line: 268, baseType: !1290, size: 64, offset: 1152)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1581, file: !472, line: 277, baseType: !1604, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1587}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1581, file: !472, line: 290, baseType: !1608, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!101, !1464, !102}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1581, file: !472, line: 292, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!102, !1464, !960}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1581, file: !472, line: 293, baseType: !1616, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!102, !1464, !102, !960}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1581, file: !472, line: 294, baseType: !1620, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !1464, !102}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1581, file: !472, line: 296, baseType: !1624, size: 64, offset: 384)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!571, !1587, !436, !230, !457}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1581, file: !472, line: 306, baseType: !230, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1581, file: !472, line: 313, baseType: !828, size: 8, offset: 512)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1581, file: !472, line: 314, baseType: !1624, size: 64, offset: 576)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1581, file: !472, line: 317, baseType: !1631, size: 64, offset: 640)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!1067, !1587, !1068}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1581, file: !472, line: 320, baseType: !1635, size: 64, offset: 704)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!101, !1587, !1079}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1576, file: !472, line: 176, baseType: !1639, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !472, line: 35, flags: DIFlagFwdDecl)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1576, file: !472, line: 177, baseType: !457, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1576, file: !472, line: 178, baseType: !1546, size: 64, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1547, file: !472, line: 215, baseType: !102, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1547, file: !472, line: 221, baseType: !332, size: 64, offset: 832)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !472, line: 223, baseType: !152, size: 16, offset: 896)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1547, file: !472, line: 224, baseType: !277, size: 16, offset: 912)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1547, file: !472, line: 225, baseType: !1648, size: 64, offset: 960)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !472, line: 36, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1547, file: !472, line: 227, baseType: !136, size: 128, align: 64, offset: 1024)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !499, file: !500, line: 71, baseType: !1652, size: 32, offset: 448)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1653, line: 19, size: 32, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1652, file: !1653, line: 20, baseType: !126, size: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !499, file: !500, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !499, file: !500, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !499, file: !500, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !499, file: !500, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !499, file: !500, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !496, file: !6, line: 47, baseType: !486, size: 64, offset: 512)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !496, file: !6, line: 48, baseType: !505, size: 64, offset: 576)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !496, file: !6, line: 49, baseType: !1664, size: 64, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !496, file: !6, line: 50, baseType: !1667, size: 64, offset: 704)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1669, line: 26, size: 256, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1668, file: !1669, line: 27, baseType: !7, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1668, file: !1669, line: 28, baseType: !1673, size: 192, offset: 64)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1674, line: 43, size: 192, elements: !1675)
!1674 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1673, file: !1674, line: 44, baseType: !645, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1673, file: !1674, line: 45, baseType: !256, size: 128, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !487, file: !6, line: 418, baseType: !1679, size: 64, offset: 1408)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1681)
!1681 = !{!1682, !1683, !1688, !1692, !1696, !1700}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1680, file: !6, line: 54, baseType: !576, size: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1680, file: !6, line: 55, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!571, !1679, !1687, !436}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1680, file: !6, line: 57, baseType: !1689, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!571, !1679, !1687, !412, !230}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1680, file: !6, line: 59, baseType: !1693, size: 64, offset: 256)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{null, !486, !412}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1680, file: !6, line: 60, baseType: !1697, size: 64, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!101, !486}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1680, file: !6, line: 61, baseType: !1701, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !486}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !487, file: !6, line: 419, baseType: !412, size: 64, offset: 1472)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !487, file: !6, line: 420, baseType: !412, size: 64, offset: 1536)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !487, file: !6, line: 421, baseType: !505, size: 64, offset: 1600)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !487, file: !6, line: 424, baseType: !1708, size: 64, offset: 1664)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !487, file: !6, line: 425, baseType: !1712, size: 64, offset: 1728)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !487, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !487, file: !6, line: 435, baseType: !640, size: 256, offset: 1856)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !487, file: !6, line: 437, baseType: !1717, size: 64, offset: 2112)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1719, line: 69, size: 320, elements: !1720)
!1719 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1720 = !{!1721, !1722, !1723, !1740, !1742, !1746, !1747}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1718, file: !1719, line: 70, baseType: !412, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1718, file: !1719, line: 71, baseType: !486, size: 64, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1718, file: !1719, line: 72, baseType: !1724, size: 64, offset: 128)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1719, line: 47, size: 256, elements: !1727)
!1727 = !{!1728, !1729, !1735, !1739}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1726, file: !1719, line: 49, baseType: !7, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1726, file: !1719, line: 51, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!101, !412, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1718)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1726, file: !1719, line: 53, baseType: !1736, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!101, !436, !1733}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1726, file: !1719, line: 55, baseType: !1532, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1718, file: !1719, line: 73, baseType: !1741, size: 16, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1718, file: !1719, line: 74, baseType: !1743, size: 8, offset: 208)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !329, line: 16, baseType: !1744)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !180, line: 20, baseType: !1745)
!1745 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1718, file: !1719, line: 75, baseType: !380, size: 8, offset: 216)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1718, file: !1719, line: 76, baseType: !1748, size: 64, offset: 256)
!1748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1718, file: !1719, line: 76, size: 64, elements: !1749)
!1749 = !{!1750, !1751, !1758}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1748, file: !1719, line: 77, baseType: !102, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1748, file: !1719, line: 78, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1719, line: 86, size: 128, elements: !1755)
!1755 = !{!1756, !1757}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1754, file: !1719, line: 87, baseType: !7, size: 32)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1754, file: !1719, line: 88, baseType: !436, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1748, file: !1719, line: 79, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1719, line: 92, size: 256, elements: !1762)
!1762 = !{!1763, !1764, !1765, !1767, !1768}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1761, file: !1719, line: 94, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1761, file: !1719, line: 95, baseType: !7, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1761, file: !1719, line: 96, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1761, file: !1719, line: 97, baseType: !1724, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1761, file: !1719, line: 98, baseType: !102, size: 64, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !487, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !487, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !487, file: !6, line: 442, baseType: !1708, size: 64, offset: 2240)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !487, file: !6, line: 443, baseType: !1712, size: 64, offset: 2304)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !487, file: !6, line: 444, baseType: !828, size: 8, offset: 2368)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !487, file: !6, line: 451, baseType: !828, size: 8, offset: 2376)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !487, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !487, file: !6, line: 455, baseType: !1777, size: 64, offset: 2432)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1779, line: 23, size: 96, elements: !1780)
!1779 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1780 = !{!1781, !1782, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1778, file: !1779, line: 24, baseType: !101, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1778, file: !1779, line: 24, baseType: !101, size: 32, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1778, file: !1779, line: 24, baseType: !101, size: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !487, file: !6, line: 458, baseType: !1785, size: 64, offset: 2496)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!101}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !487, file: !6, line: 460, baseType: !1789, size: 4032, align: 512, offset: 2560)
!1789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1790, size: 4032, elements: !1806)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1790, file: !6, line: 363, baseType: !102, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1790, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1790, file: !6, line: 367, baseType: !1795, size: 448, offset: 128)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1795, file: !6, line: 320, baseType: !486, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1795, file: !6, line: 321, baseType: !1799, size: 384, offset: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1800, line: 40, size: 384, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1801 = !{!1802}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1799, file: !1800, line: 41, baseType: !1803, size: 384, align: 64)
!1803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 384, align: 64, elements: !1804)
!1804 = !{!1805}
!1805 = !DISubrange(count: 2)
!1806 = !{!1807}
!1807 = !DISubrange(count: 7)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !487, file: !6, line: 463, baseType: !1809, size: 192, offset: 6592)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1810, line: 8, size: 192, elements: !1811)
!1810 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1811 = !{!1812, !1813, !1815}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1809, file: !1810, line: 10, baseType: !7, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1809, file: !1810, line: 11, baseType: !1814, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1809, file: !1810, line: 12, baseType: !1816, size: 64, offset: 128)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1818, line: 59, size: 48, elements: !1819)
!1818 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1819 = !{!1820, !1821, !1822, !1823, !1824, !1825}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1817, file: !1818, line: 60, baseType: !1225, size: 16)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1817, file: !1818, line: 61, baseType: !1225, size: 16, offset: 16)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1817, file: !1818, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1817, file: !1818, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1817, file: !1818, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1817, file: !1818, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !487, file: !6, line: 465, baseType: !233, size: 64, offset: 6784)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !487, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !487, file: !6, line: 470, baseType: !256, size: 128, offset: 6912)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !487, file: !6, line: 471, baseType: !1830, size: 64, offset: 7040)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1832, line: 33, size: 96, elements: !1833)
!1832 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1833 = !{!1834, !1835, !1836, !1837}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1831, file: !1832, line: 37, baseType: !101, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1831, file: !1832, line: 43, baseType: !101, size: 32, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1831, file: !1832, line: 45, baseType: !152, size: 16, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !1832, line: 47, baseType: !152, size: 16, offset: 80)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !487, file: !6, line: 476, baseType: !1839, size: 64, offset: 7104)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1841)
!1841 = !{!1842, !1858, !1859, !1860}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1840, file: !6, line: 379, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1845, line: 204, baseType: !1846)
!1845 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1845, line: 197, size: 192, elements: !1847)
!1847 = !{!1848, !1850, !1851, !1852, !1854, !1856}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1846, file: !1845, line: 198, baseType: !1849, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1845, line: 21, baseType: !179)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1846, file: !1845, line: 199, baseType: !338, size: 8, offset: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1846, file: !1845, line: 200, baseType: !338, size: 8, offset: 40)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1846, file: !1845, line: 201, baseType: !1853, size: 16, offset: 48)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1845, line: 17, baseType: !388)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1846, file: !1845, line: 202, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1845, line: 16, baseType: !333)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1846, file: !1845, line: 203, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1845, line: 22, baseType: !333)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1840, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1840, file: !6, line: 381, baseType: !436, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1840, file: !6, line: 382, baseType: !436, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !487, file: !6, line: 477, baseType: !1840, size: 256, offset: 7168)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !487, file: !6, line: 480, baseType: !1863, size: 64, offset: 7424)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !487, file: !6, line: 483, baseType: !1866, size: 64, offset: 7488)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !487, file: !6, line: 488, baseType: !436, size: 64, offset: 7552)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !487, file: !6, line: 492, baseType: !102, size: 64, offset: 7616)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !487, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !487, file: !6, line: 495, baseType: !102, size: 64, offset: 7744)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !487, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !487, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !487, file: !6, line: 500, baseType: !1875, size: 64, offset: 7872)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1877, line: 45, baseType: !1878)
!1877 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !487, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !487, file: !6, line: 504, baseType: !1881, size: 64, offset: 8000)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1884, line: 96, size: 192, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1885 = !{!1886, !1887, !1941, !1944}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1883, file: !1884, line: 97, baseType: !7, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1883, file: !1884, line: 98, baseType: !1888, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1884, line: 24, size: 3072, elements: !1890)
!1890 = !{!1891, !1893, !1894, !1895, !1896, !1910, !1911, !1912, !1913, !1925, !1926, !1927, !1938, !1939, !1940}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1889, file: !1884, line: 26, baseType: !1892, size: 128)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 128, elements: !1804)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1889, file: !1884, line: 27, baseType: !1892, size: 128, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1889, file: !1884, line: 28, baseType: !101, size: 32, offset: 256)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1889, file: !1884, line: 31, baseType: !356, size: 32, align: 512, offset: 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1889, file: !1884, line: 32, baseType: !1897, size: 960, offset: 576)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1898, line: 206, size: 960, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1899 = !{!1900, !1901, !1904, !1906, !1907, !1909}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1897, file: !1898, line: 207, baseType: !139, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1897, file: !1898, line: 208, baseType: !1902, size: 256, offset: 64)
!1902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1903, size: 256, elements: !696)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1897, file: !1898, line: 209, baseType: !1905, size: 256, offset: 320)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 256, elements: !696)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1897, file: !1898, line: 213, baseType: !574, size: 64, offset: 576)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1897, file: !1898, line: 215, baseType: !1908, size: 256, offset: 640)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 256, elements: !696)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !1898, line: 216, baseType: !380, size: 8, offset: 896)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1889, file: !1884, line: 33, baseType: !233, size: 64, offset: 1536)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1889, file: !1884, line: 34, baseType: !233, size: 64, offset: 1600)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1889, file: !1884, line: 35, baseType: !828, size: 8, offset: 1664)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1889, file: !1884, line: 36, baseType: !1914, size: 320, offset: 1728)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1915, line: 11, size: 320, elements: !1916)
!1915 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1916 = !{!1917, !1918, !1919, !1924}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1914, file: !1915, line: 16, baseType: !691, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1914, file: !1915, line: 17, baseType: !233, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1914, file: !1915, line: 18, baseType: !1920, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1923}
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1914, file: !1915, line: 19, baseType: !328, size: 32, offset: 256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1889, file: !1884, line: 37, baseType: !1247, size: 256, offset: 2048)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1889, file: !1884, line: 38, baseType: !136, size: 128, align: 64, offset: 2304)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1889, file: !1884, line: 39, baseType: !1928, size: 64, offset: 2432)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1884, line: 49, size: 768, elements: !1930)
!1930 = !{!1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1929, file: !1884, line: 50, baseType: !356, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1929, file: !1884, line: 51, baseType: !1905, size: 256, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1929, file: !1884, line: 53, baseType: !1905, size: 256, offset: 320)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1929, file: !1884, line: 54, baseType: !233, size: 64, offset: 576)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1929, file: !1884, line: 55, baseType: !1928, size: 64, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1929, file: !1884, line: 56, baseType: !101, size: 32, offset: 704)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1929, file: !1884, line: 57, baseType: !101, size: 32, offset: 736)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1889, file: !1884, line: 40, baseType: !233, size: 64, offset: 2496)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1889, file: !1884, line: 42, baseType: !101, size: 32, offset: 2560)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1889, file: !1884, line: 43, baseType: !1882, size: 64, offset: 2624)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1883, file: !1884, line: 99, baseType: !1942, offset: 128)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1943, line: 211, elements: !1113)
!1943 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1883, file: !1884, line: 100, baseType: !1945, size: 64, offset: 128)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1884, line: 63, size: 3008, elements: !1947)
!1947 = !{!1948, !1949, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1979}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1946, file: !1884, line: 64, baseType: !1928, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1946, file: !1884, line: 65, baseType: !1950, size: 192, offset: 64)
!1950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1928, size: 192, elements: !540)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1946, file: !1884, line: 67, baseType: !101, size: 32, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1946, file: !1884, line: 68, baseType: !640, size: 256, offset: 320)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1946, file: !1884, line: 69, baseType: !356, size: 32, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1946, file: !1884, line: 70, baseType: !640, size: 256, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1946, file: !1884, line: 71, baseType: !233, size: 64, offset: 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1946, file: !1884, line: 72, baseType: !233, size: 64, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1946, file: !1884, line: 73, baseType: !233, size: 64, offset: 1024)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1946, file: !1884, line: 74, baseType: !233, size: 64, offset: 1088)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1946, file: !1884, line: 75, baseType: !233, size: 64, offset: 1152)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1946, file: !1884, line: 76, baseType: !233, size: 64, offset: 1216)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1946, file: !1884, line: 77, baseType: !233, size: 64, offset: 1280)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1946, file: !1884, line: 78, baseType: !233, size: 64, offset: 1344)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1946, file: !1884, line: 79, baseType: !828, size: 8, offset: 1408)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1946, file: !1884, line: 80, baseType: !233, size: 64, offset: 1472)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1946, file: !1884, line: 81, baseType: !640, size: 256, offset: 1536)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1946, file: !1884, line: 82, baseType: !1668, size: 256, offset: 1792)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1946, file: !1884, line: 84, baseType: !130, size: 32, offset: 2048)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1946, file: !1884, line: 87, baseType: !233, size: 64, offset: 2112)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1946, file: !1884, line: 88, baseType: !233, size: 64, offset: 2176)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1946, file: !1884, line: 89, baseType: !1971, size: 704, offset: 2240)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1248, line: 111, size: 704, elements: !1972)
!1972 = !{!1973, !1974, !1975, !1978}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1971, file: !1248, line: 112, baseType: !1247, size: 256)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1971, file: !1248, line: 113, baseType: !1914, size: 320, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1971, file: !1248, line: 116, baseType: !1976, size: 64, offset: 576)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1248, line: 18, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1971, file: !1248, line: 117, baseType: !101, size: 32, offset: 640)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1946, file: !1884, line: 90, baseType: !1882, size: 64, offset: 2944)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !487, file: !6, line: 515, baseType: !1981, size: 64, offset: 8064)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1983, line: 117, size: 128, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1984 = !{!1985, !1986, !1987}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1982, file: !1983, line: 118, baseType: !755, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1982, file: !1983, line: 119, baseType: !755, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1982, file: !1983, line: 120, baseType: !574, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !487, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !487, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !487, file: !6, line: 520, baseType: !1991, size: 64, offset: 8192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !487, file: !6, line: 523, baseType: !1993, size: 64, offset: 8256)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !487, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !487, file: !6, line: 525, baseType: !1998, size: 64, offset: 8384)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !487, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !487, file: !6, line: 533, baseType: !102, size: 64, offset: 8512)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !487, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !487, file: !6, line: 535, baseType: !2005, size: 64, offset: 8640)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !487, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !487, file: !6, line: 539, baseType: !101, size: 32, offset: 8736)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !487, file: !6, line: 540, baseType: !2009, size: 64, offset: 8768)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2011, line: 32, size: 64, elements: !2012)
!2011 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2010, file: !2011, line: 33, baseType: !755, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2010, file: !2011, line: 34, baseType: !755, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !487, file: !6, line: 563, baseType: !256, size: 128, offset: 8832)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !487, file: !6, line: 565, baseType: !256, size: 128, offset: 8960)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !487, file: !6, line: 568, baseType: !2018, size: 64, offset: 9088)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !487, file: !6, line: 570, baseType: !130, size: 32, offset: 9152)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !462, file: !44, line: 2382, baseType: !461, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !462, file: !44, line: 2383, baseType: !687, size: 64, offset: 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !462, file: !44, line: 2385, baseType: !2025, offset: 576)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1943, line: 206, elements: !1113)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !462, file: !44, line: 2386, baseType: !2025, offset: 576)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !462, file: !44, line: 2387, baseType: !2025, offset: 576)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !462, file: !44, line: 2388, baseType: !2029, offset: 576)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2025, elements: !540)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !462, file: !44, line: 2390, baseType: !2025, offset: 576)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !462, file: !44, line: 2391, baseType: !2025, offset: 576)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !462, file: !44, line: 2392, baseType: !2025, offset: 576)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !462, file: !44, line: 2393, baseType: !2025, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !448, file: !44, line: 1197, baseType: !2035, size: 64, offset: 384)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 2057, size: 1664, elements: !2038)
!2038 = !{!2039, !2043, !2047, !2048, !2052, !2058, !2062, !2063, !2064, !2068, !2072, !2076, !2077, !2078, !2084, !2088, !2089, !2093, !2094, !2095, !2096, !2100, !2104, !2151, !2166, !2167}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2037, file: !44, line: 2058, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DISubroutineType(types: !2042)
!2042 = !{!273, !447}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2037, file: !44, line: 2059, baseType: !2044, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{null, !273}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2037, file: !44, line: 2060, baseType: !2044, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2037, file: !44, line: 2062, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !273, !101}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2037, file: !44, line: 2063, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!101, !273, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 309, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2037, file: !44, line: 2064, baseType: !2059, size: 64, offset: 320)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!101, !273}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2037, file: !44, line: 2065, baseType: !2044, size: 64, offset: 384)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2037, file: !44, line: 2066, baseType: !482, size: 64, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2037, file: !44, line: 2067, baseType: !2065, size: 64, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!101, !447, !101}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2037, file: !44, line: 2068, baseType: !2069, size: 64, offset: 576)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!101, !447, !43}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2037, file: !44, line: 2069, baseType: !2073, size: 64, offset: 640)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!101, !447}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2037, file: !44, line: 2070, baseType: !2069, size: 64, offset: 704)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2037, file: !44, line: 2071, baseType: !2073, size: 64, offset: 768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2037, file: !44, line: 2072, baseType: !2079, size: 64, offset: 832)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!101, !294, !2082}
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 62, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2037, file: !44, line: 2073, baseType: !2085, size: 64, offset: 896)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!101, !447, !1814, !436}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2037, file: !44, line: 2074, baseType: !482, size: 64, offset: 960)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2037, file: !44, line: 2076, baseType: !2090, size: 64, offset: 1024)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!101, !1464, !294}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2037, file: !44, line: 2077, baseType: !2090, size: 64, offset: 1088)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2037, file: !44, line: 2078, baseType: !2090, size: 64, offset: 1152)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2037, file: !44, line: 2079, baseType: !2090, size: 64, offset: 1216)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2037, file: !44, line: 2081, baseType: !2097, size: 64, offset: 1280)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!571, !447, !101, !436, !230, !457}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2037, file: !44, line: 2082, baseType: !2101, size: 64, offset: 1344)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!571, !447, !101, !412, !230, !457}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2037, file: !44, line: 2083, baseType: !2105, size: 64, offset: 1408)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!2108, !273}
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !49, line: 296, size: 1664, elements: !2111)
!2111 = !{!2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2136, !2137, !2138}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2110, file: !49, line: 297, baseType: !691, size: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2110, file: !49, line: 298, baseType: !256, size: 128, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2110, file: !49, line: 299, baseType: !256, size: 128, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2110, file: !49, line: 300, baseType: !256, size: 128, offset: 384)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2110, file: !49, line: 301, baseType: !640, size: 256, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2110, file: !49, line: 302, baseType: !356, size: 32, offset: 768)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2110, file: !49, line: 303, baseType: !130, size: 32, offset: 800)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2110, file: !49, line: 304, baseType: !447, size: 64, offset: 832)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2110, file: !49, line: 305, baseType: !2121, size: 64, offset: 896)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !49, line: 68, size: 64, elements: !2122)
!2122 = !{!2123, !2135}
!2123 = !DIDerivedType(tag: DW_TAG_member, scope: !2121, file: !49, line: 69, baseType: !2124, size: 32)
!2124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2121, file: !49, line: 69, size: 32, elements: !2125)
!2125 = !{!2126, !2127, !2128}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2124, file: !49, line: 70, baseType: !157, size: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2124, file: !49, line: 71, baseType: !166, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2124, file: !49, line: 72, baseType: !2129, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2130, line: 24, baseType: !2131)
!2130 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2130, line: 22, size: 32, elements: !2132)
!2132 = !{!2133}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2131, file: !2130, line: 23, baseType: !2134, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2130, line: 20, baseType: !163)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2121, file: !49, line: 74, baseType: !48, size: 32, offset: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2110, file: !49, line: 306, baseType: !457, size: 64, offset: 960)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2110, file: !49, line: 307, baseType: !233, size: 64, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2110, file: !49, line: 308, baseType: !2139, size: 576, offset: 1088)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !49, line: 205, size: 576, elements: !2140)
!2140 = !{!2141, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2139, file: !49, line: 206, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !49, line: 66, baseType: !459)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2139, file: !49, line: 207, baseType: !2142, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2139, file: !49, line: 208, baseType: !2142, size: 64, offset: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2139, file: !49, line: 209, baseType: !2142, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2139, file: !49, line: 210, baseType: !2142, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2139, file: !49, line: 211, baseType: !2142, size: 64, offset: 320)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2139, file: !49, line: 212, baseType: !2142, size: 64, offset: 384)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2139, file: !49, line: 213, baseType: !786, size: 64, offset: 448)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2139, file: !49, line: 214, baseType: !786, size: 64, offset: 512)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2037, file: !44, line: 2085, baseType: !2152, size: 64, offset: 1472)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!574, !447, !2155}
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2157, line: 15, size: 256, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2158 = !{!2159, !2160, !2161, !2162, !2163}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2156, file: !2157, line: 16, baseType: !187, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2156, file: !2157, line: 19, baseType: !101, size: 32, offset: 32)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2156, file: !2157, line: 26, baseType: !233, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2156, file: !2157, line: 33, baseType: !233, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2156, file: !2157, line: 36, baseType: !2164, size: 64, offset: 192)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !22, line: 33, flags: DIFlagFwdDecl)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2037, file: !44, line: 2087, baseType: !2152, size: 64, offset: 1536)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2037, file: !44, line: 2089, baseType: !482, size: 64, offset: 1600)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !448, file: !44, line: 1198, baseType: !2169, size: 64, offset: 448)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2171)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !49, line: 324, size: 704, elements: !2172)
!2172 = !{!2173, !2177, !2181, !2185, !2186, !2187, !2188, !2189, !2194, !2199, !2203}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2171, file: !49, line: 325, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!101, !2109}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2171, file: !49, line: 326, baseType: !2178, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!2109, !447, !101}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2171, file: !49, line: 327, baseType: !2182, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2109}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2171, file: !49, line: 328, baseType: !2174, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2171, file: !49, line: 329, baseType: !2174, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2171, file: !49, line: 330, baseType: !2174, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2171, file: !49, line: 331, baseType: !2065, size: 64, offset: 384)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2171, file: !49, line: 334, baseType: !2190, size: 64, offset: 448)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2193, !273}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2171, file: !49, line: 335, baseType: !2195, size: 64, offset: 512)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!101, !273, !2198}
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2171, file: !49, line: 337, baseType: !2200, size: 64, offset: 576)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!101, !273, !2193}
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2171, file: !49, line: 339, baseType: !2204, size: 64, offset: 640)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!101, !447, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !448, file: !44, line: 1199, baseType: !2209, size: 64, offset: 512)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !49, line: 430, size: 704, elements: !2212)
!2212 = !{!2213, !2219, !2220, !2224, !2225, !2226, !2241, !2264, !2268, !2269, !2292}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2211, file: !49, line: 431, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!101, !447, !101, !101, !2217}
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !940)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2211, file: !49, line: 432, baseType: !2065, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2211, file: !49, line: 433, baseType: !2221, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{!101, !447, !7}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2211, file: !49, line: 434, baseType: !2221, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2211, file: !49, line: 435, baseType: !2065, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2211, file: !49, line: 436, baseType: !2227, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!101, !447, !101, !2230}
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !49, line: 417, size: 256, elements: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2231, file: !49, line: 418, baseType: !101, size: 32)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2231, file: !49, line: 419, baseType: !7, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2231, file: !49, line: 420, baseType: !7, size: 32, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2231, file: !49, line: 422, baseType: !7, size: 32, offset: 96)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2231, file: !49, line: 423, baseType: !7, size: 32, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2231, file: !49, line: 424, baseType: !7, size: 32, offset: 160)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2231, file: !49, line: 425, baseType: !7, size: 32, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2231, file: !49, line: 426, baseType: !7, size: 32, offset: 224)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2211, file: !49, line: 437, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!101, !447, !2121, !2245}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !49, line: 345, size: 960, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2246, file: !49, line: 346, baseType: !101, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2246, file: !49, line: 347, baseType: !332, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2246, file: !49, line: 348, baseType: !332, size: 64, offset: 128)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2246, file: !49, line: 349, baseType: !332, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2246, file: !49, line: 350, baseType: !332, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2246, file: !49, line: 351, baseType: !332, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2246, file: !49, line: 352, baseType: !332, size: 64, offset: 384)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2246, file: !49, line: 353, baseType: !637, size: 64, offset: 448)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2246, file: !49, line: 355, baseType: !637, size: 64, offset: 512)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2246, file: !49, line: 356, baseType: !101, size: 32, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2246, file: !49, line: 357, baseType: !101, size: 32, offset: 608)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2246, file: !49, line: 358, baseType: !332, size: 64, offset: 640)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2246, file: !49, line: 359, baseType: !332, size: 64, offset: 704)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2246, file: !49, line: 360, baseType: !332, size: 64, offset: 768)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2246, file: !49, line: 361, baseType: !637, size: 64, offset: 832)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2246, file: !49, line: 362, baseType: !101, size: 32, offset: 896)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2211, file: !49, line: 438, baseType: !2265, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!101, !447, !2207, !2245}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2211, file: !49, line: 440, baseType: !2242, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2211, file: !49, line: 441, baseType: !2270, size: 64, offset: 576)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!101, !447, !2273}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !49, line: 411, size: 1408, elements: !2275)
!2275 = !{!2276, !2277}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2274, file: !49, line: 412, baseType: !7, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2274, file: !49, line: 413, baseType: !2278, size: 1344, offset: 64)
!2278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2279, size: 1344, elements: !540)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !49, line: 397, size: 448, elements: !2280)
!2280 = !{!2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2291}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2279, file: !49, line: 398, baseType: !7, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2279, file: !49, line: 399, baseType: !7, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2279, file: !49, line: 401, baseType: !7, size: 32, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2279, file: !49, line: 402, baseType: !7, size: 32, offset: 96)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2279, file: !49, line: 403, baseType: !7, size: 32, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2279, file: !49, line: 404, baseType: !7, size: 32, offset: 160)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2279, file: !49, line: 405, baseType: !7, size: 32, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2279, file: !49, line: 406, baseType: !334, size: 64, offset: 256)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2279, file: !49, line: 407, baseType: !2290, size: 64, offset: 320)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !131, line: 132, baseType: !332)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2279, file: !49, line: 408, baseType: !2290, size: 64, offset: 384)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2211, file: !49, line: 442, baseType: !2221, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !448, file: !44, line: 1200, baseType: !2294, size: 64, offset: 576)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2296)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 54, flags: DIFlagFwdDecl)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !448, file: !44, line: 1201, baseType: !233, size: 64, offset: 640)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !448, file: !44, line: 1202, baseType: !233, size: 64, offset: 704)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !448, file: !44, line: 1203, baseType: !233, size: 64, offset: 768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !448, file: !44, line: 1204, baseType: !294, size: 64, offset: 832)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !448, file: !44, line: 1205, baseType: !770, size: 320, offset: 896)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !448, file: !44, line: 1206, baseType: !101, size: 32, offset: 1216)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !448, file: !44, line: 1207, baseType: !130, size: 32, offset: 1248)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !448, file: !44, line: 1209, baseType: !102, size: 64, offset: 1280)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !448, file: !44, line: 1211, baseType: !2306, size: 64, offset: 1344)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2309)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1211, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !448, file: !44, line: 1223, baseType: !2311, size: 64, offset: 1408)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !311, line: 34, size: 64, elements: !2312)
!2312 = !{!2313}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2311, file: !311, line: 35, baseType: !314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !448, file: !44, line: 1224, baseType: !256, size: 128, offset: 1472)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !448, file: !44, line: 1225, baseType: !2316, size: 64, offset: 1600)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 1225, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !448, file: !44, line: 1226, baseType: !2319, size: 64, offset: 1664)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !44, line: 1226, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !448, file: !44, line: 1227, baseType: !2322, size: 64, offset: 1728)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !448, file: !44, line: 1228, baseType: !2325, size: 64, offset: 1792)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1228, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !448, file: !44, line: 1229, baseType: !691, size: 128, offset: 1856)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !448, file: !44, line: 1230, baseType: !7, size: 32, offset: 1984)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !448, file: !44, line: 1231, baseType: !2330, size: 2496, offset: 2048)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !49, line: 521, size: 2496, elements: !2331)
!2331 = !{!2332, !2333, !2334, !2336, !2368}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2330, file: !49, line: 522, baseType: !7, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2330, file: !49, line: 523, baseType: !770, size: 320, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2330, file: !49, line: 524, baseType: !2335, size: 192, offset: 384)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 192, elements: !540)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2330, file: !49, line: 525, baseType: !2337, size: 1728, offset: 576)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2338, size: 1728, elements: !540)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !49, line: 222, size: 576, elements: !2339)
!2339 = !{!2340, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2338, file: !49, line: 223, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !49, line: 445, size: 256, elements: !2343)
!2343 = !{!2344, !2345, !2358, !2359}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2342, file: !49, line: 446, baseType: !101, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2342, file: !49, line: 447, baseType: !2346, size: 64, offset: 64)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !49, line: 312, size: 512, elements: !2349)
!2349 = !{!2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2348, file: !49, line: 313, baseType: !2065, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2348, file: !49, line: 314, baseType: !2065, size: 64, offset: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2348, file: !49, line: 315, baseType: !2065, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2348, file: !49, line: 316, baseType: !2065, size: 64, offset: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2348, file: !49, line: 317, baseType: !2174, size: 64, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2348, file: !49, line: 318, baseType: !2174, size: 64, offset: 320)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2348, file: !49, line: 319, baseType: !2174, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2348, file: !49, line: 320, baseType: !2204, size: 64, offset: 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2342, file: !49, line: 448, baseType: !486, size: 64, offset: 128)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2342, file: !49, line: 449, baseType: !2341, size: 64, offset: 192)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2338, file: !49, line: 224, baseType: !101, size: 32, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2338, file: !49, line: 226, baseType: !256, size: 128, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2338, file: !49, line: 227, baseType: !233, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2338, file: !49, line: 228, baseType: !7, size: 32, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2338, file: !49, line: 229, baseType: !7, size: 32, offset: 352)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2338, file: !49, line: 230, baseType: !2142, size: 64, offset: 384)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2338, file: !49, line: 231, baseType: !2142, size: 64, offset: 448)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2338, file: !49, line: 232, baseType: !102, size: 64, offset: 512)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2330, file: !49, line: 526, baseType: !2369, size: 192, offset: 2304)
!2369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2346, size: 192, elements: !540)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !448, file: !44, line: 1233, baseType: !2371, size: 2368, offset: 4544)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1184, size: 2368, elements: !2372)
!2372 = !{!2373, !2374, !2375}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2371, file: !44, line: 1185, baseType: !152, size: 16)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2371, file: !44, line: 1186, baseType: !152, size: 16, offset: 16)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2371, file: !44, line: 1187, baseType: !2376, size: 2304, offset: 64)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2377, size: 2304, elements: !540)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2378, line: 12, size: 768, elements: !2379)
!2378 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2379 = !{!2380, !2388, !2389, !3579, !3580}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2377, file: !2378, line: 13, baseType: !2381, size: 384)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2382, line: 17, size: 384, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2383 = !{!2384, !2385, !2386, !2387}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2381, file: !2382, line: 18, baseType: !101, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2381, file: !2382, line: 19, baseType: !101, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2381, file: !2382, line: 20, baseType: !700, size: 192, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2381, file: !2382, line: 22, baseType: !136, size: 128, align: 64, offset: 256)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2377, file: !2378, line: 14, baseType: !1766, size: 64, offset: 384)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2377, file: !2378, line: 15, baseType: !2390, size: 64, offset: 448)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2391, line: 16, size: 64, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2392 = !{!2393}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2390, file: !2391, line: 17, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1441, line: 746, size: 58368, elements: !2396)
!2396 = !{!2397, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2477, !2488, !2580, !2584, !2587, !2618, !2619, !2620, !2621, !2630, !2632, !2633, !2634, !2635, !2636, !2637, !2648, !2649, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2666, !2667, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2755, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2803, !2809, !2810, !2811, !2812, !2813, !2817, !2820, !2827, !2832, !2835, !2838, !2841, !2845, !2983, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3021, !3022, !3023, !3032, !3040, !3041, !3042, !3043, !3044, !3049, !3050, !3051, !3054, !3055, !3058, !3061, !3064, !3072, !3075, !3076, !3162, !3163, !3164, !3165, !3166, !3172, !3173, !3174, !3175, !3178, !3179, !3182, !3185, !3186, !3189, !3190, !3191, !3194, !3195, !3196, !3197, !3198, !3199, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3231, !3232, !3238, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3250, !3322, !3324, !3325, !3326, !3327, !3328, !3329, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3358, !3359, !3360}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2395, file: !1441, line: 752, baseType: !2398, size: 192)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2399, line: 56, size: 192, elements: !2400)
!2399 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2400 = !{!2401, !2402, !2403, !2404}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2398, file: !2399, line: 57, baseType: !233, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2398, file: !2399, line: 58, baseType: !233, size: 64, offset: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2398, file: !2399, line: 59, baseType: !328, size: 32, offset: 128)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2398, file: !2399, line: 61, baseType: !328, size: 32, offset: 160)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2395, file: !1441, line: 754, baseType: !7, size: 32, offset: 192)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2395, file: !1441, line: 767, baseType: !102, size: 64, offset: 256)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2395, file: !1441, line: 768, baseType: !126, size: 32, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2395, file: !1441, line: 770, baseType: !7, size: 32, offset: 352)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2395, file: !1441, line: 771, baseType: !7, size: 32, offset: 384)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2395, file: !1441, line: 774, baseType: !101, size: 32, offset: 416)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2395, file: !1441, line: 775, baseType: !2412, size: 128, offset: 448)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2413, line: 58, size: 128, elements: !2414)
!2413 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2414 = !{!2415, !2416, !2421, !2422}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2412, file: !2413, line: 59, baseType: !620, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, scope: !2412, file: !2413, line: 60, baseType: !2417, size: 32, offset: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2412, file: !2413, line: 60, size: 32, elements: !2418)
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2417, file: !2413, line: 61, baseType: !7, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2417, file: !2413, line: 62, baseType: !130, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2412, file: !2413, line: 65, baseType: !387, size: 16, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2412, file: !2413, line: 65, baseType: !387, size: 16, offset: 112)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2395, file: !1441, line: 776, baseType: !7, size: 32, offset: 576)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2395, file: !1441, line: 777, baseType: !233, size: 64, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2395, file: !1441, line: 778, baseType: !2394, size: 64, offset: 704)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2395, file: !1441, line: 787, baseType: !101, size: 32, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2395, file: !1441, line: 788, baseType: !101, size: 32, offset: 800)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2395, file: !1441, line: 790, baseType: !101, size: 32, offset: 832)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2395, file: !1441, line: 792, baseType: !101, size: 32, offset: 864)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2395, file: !1441, line: 793, baseType: !101, size: 32, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2395, file: !1441, line: 794, baseType: !101, size: 32, offset: 928)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2395, file: !1441, line: 795, baseType: !7, size: 32, offset: 960)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2395, file: !1441, line: 797, baseType: !2434, size: 2048, offset: 1024)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1441, line: 551, size: 2048, elements: !2435)
!2435 = !{!2436, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2456, !2459, !2460, !2461}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2434, file: !1441, line: 553, baseType: !2437, size: 128)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1441, line: 411, size: 128, elements: !2438)
!2438 = !{!2439, !2440}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2437, file: !1441, line: 412, baseType: !233, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2437, file: !1441, line: 413, baseType: !328, size: 32, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2434, file: !1441, line: 554, baseType: !762, size: 192, align: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2434, file: !1441, line: 555, baseType: !332, size: 64, offset: 320)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2434, file: !1441, line: 556, baseType: !332, size: 64, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2434, file: !1441, line: 558, baseType: !256, size: 128, offset: 448)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2434, file: !1441, line: 559, baseType: !7, size: 32, offset: 576)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2434, file: !1441, line: 561, baseType: !332, size: 64, offset: 640)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2434, file: !1441, line: 562, baseType: !332, size: 64, offset: 704)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2434, file: !1441, line: 563, baseType: !332, size: 64, offset: 768)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2434, file: !1441, line: 564, baseType: !332, size: 64, offset: 832)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2434, file: !1441, line: 565, baseType: !637, size: 64, offset: 896)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2434, file: !1441, line: 566, baseType: !332, size: 64, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2434, file: !1441, line: 568, baseType: !332, size: 64, offset: 1024)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2434, file: !1441, line: 571, baseType: !101, size: 32, offset: 1088)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2434, file: !1441, line: 572, baseType: !2455, size: 64, offset: 1152)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2434, file: !1441, line: 574, baseType: !2457, size: 64, offset: 1216)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1441, line: 49, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2434, file: !1441, line: 576, baseType: !2457, size: 64, offset: 1280)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2434, file: !1441, line: 578, baseType: !233, size: 64, offset: 1344)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2434, file: !1441, line: 588, baseType: !2462, size: 512, align: 512, offset: 1536)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1441, line: 497, size: 512, align: 512, elements: !2463)
!2463 = !{!2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2462, file: !1441, line: 498, baseType: !332, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2462, file: !1441, line: 499, baseType: !332, size: 64, offset: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2462, file: !1441, line: 500, baseType: !332, size: 64, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2462, file: !1441, line: 501, baseType: !328, size: 32, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2462, file: !1441, line: 502, baseType: !328, size: 32, offset: 224)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2462, file: !1441, line: 503, baseType: !233, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2462, file: !1441, line: 504, baseType: !233, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2462, file: !1441, line: 505, baseType: !233, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2462, file: !1441, line: 506, baseType: !2473, size: 64, align: 64, offset: 448)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1441, line: 445, size: 64, align: 64, elements: !2474)
!2474 = !{!2475, !2476}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2473, file: !1441, line: 446, baseType: !7, size: 32)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2473, file: !1441, line: 447, baseType: !7, size: 32, offset: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2395, file: !1441, line: 798, baseType: !2478, size: 384, offset: 3072)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1441, line: 592, size: 384, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2478, file: !1441, line: 593, baseType: !256, size: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2478, file: !1441, line: 594, baseType: !233, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2478, file: !1441, line: 595, baseType: !233, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2478, file: !1441, line: 596, baseType: !7, size: 32, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2478, file: !1441, line: 597, baseType: !152, size: 16, offset: 288)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2478, file: !1441, line: 598, baseType: !152, size: 16, offset: 304)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2478, file: !1441, line: 600, baseType: !2487, size: 64, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2395, file: !1441, line: 799, baseType: !2489, size: 1792, offset: 3456)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1441, line: 610, size: 1792, elements: !2490)
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2577, !2578}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2489, file: !1441, line: 611, baseType: !762, size: 192, align: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2489, file: !1441, line: 618, baseType: !332, size: 64, offset: 192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2489, file: !1441, line: 619, baseType: !332, size: 64, offset: 256)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2489, file: !1441, line: 620, baseType: !332, size: 64, offset: 320)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2489, file: !1441, line: 621, baseType: !332, size: 64, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2489, file: !1441, line: 622, baseType: !332, size: 64, offset: 448)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2489, file: !1441, line: 629, baseType: !637, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2489, file: !1441, line: 630, baseType: !332, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2489, file: !1441, line: 631, baseType: !7, size: 32, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2489, file: !1441, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2489, file: !1441, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2489, file: !1441, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2489, file: !1441, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2489, file: !1441, line: 662, baseType: !2505, size: 512, offset: 704)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !55, line: 118, size: 512, elements: !2506)
!2506 = !{!2507, !2515, !2516, !2521, !2573, !2574, !2575, !2576}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2505, file: !55, line: 119, baseType: !2508, size: 256)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2509, line: 9, size: 256, elements: !2510)
!2509 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2510 = !{!2511, !2512}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2508, file: !2509, line: 10, baseType: !762, size: 192, align: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2508, file: !2509, line: 11, baseType: !2513, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2514, line: 29, baseType: !637)
!2514 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2505, file: !55, line: 120, baseType: !2513, size: 64, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2505, file: !55, line: 121, baseType: !2517, size: 64, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!54, !2520}
!2520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2505, file: !55, line: 122, baseType: !2522, size: 64, offset: 384)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !55, line: 159, size: 512, align: 512, elements: !2524)
!2524 = !{!2525, !2550, !2551, !2554, !2559, !2560, !2568, !2572}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2523, file: !55, line: 160, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !55, line: 215, size: 4608, align: 512, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2527, file: !55, line: 216, baseType: !645, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2527, file: !55, line: 217, baseType: !7, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2527, file: !55, line: 218, baseType: !7, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2527, file: !55, line: 219, baseType: !7, size: 32, offset: 96)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2527, file: !55, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2527, file: !55, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2527, file: !55, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2527, file: !55, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2527, file: !55, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2527, file: !55, line: 226, baseType: !7, size: 32, offset: 160)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2527, file: !55, line: 227, baseType: !152, size: 16, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2527, file: !55, line: 228, baseType: !152, size: 16, offset: 208)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2527, file: !55, line: 229, baseType: !7, size: 32, offset: 224)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2527, file: !55, line: 235, baseType: !2513, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2527, file: !55, line: 236, baseType: !2520, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2527, file: !55, line: 237, baseType: !2513, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2527, file: !55, line: 238, baseType: !2520, size: 64, offset: 448)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2527, file: !55, line: 239, baseType: !2547, size: 4096, align: 512, offset: 512)
!2547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2523, size: 4096, align: 512, elements: !2548)
!2548 = !{!2549}
!2549 = !DISubrange(count: 8)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2523, file: !55, line: 161, baseType: !7, size: 32, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2523, file: !55, line: 162, baseType: !2552, size: 32, offset: 96)
!2552 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !131, line: 32, baseType: !2553)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !164, line: 96, baseType: !101)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2523, file: !55, line: 163, baseType: !2555, size: 32, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !301, line: 274, baseType: !2556)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !301, line: 274, size: 32, elements: !2557)
!2557 = !{!2558}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2556, file: !301, line: 274, baseType: !305, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2523, file: !55, line: 164, baseType: !2520, size: 64, offset: 192)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2523, file: !55, line: 165, baseType: !2561, size: 128, offset: 256)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2509, line: 14, size: 128, elements: !2562)
!2562 = !{!2563}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2561, file: !2509, line: 15, baseType: !2564, size: 128)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !763, line: 26, size: 128, elements: !2565)
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2564, file: !763, line: 27, baseType: !1564, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2564, file: !763, line: 28, baseType: !767, size: 64, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2523, file: !55, line: 166, baseType: !2569, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!2513}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2523, file: !55, line: 167, baseType: !2513, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2505, file: !55, line: 123, baseType: !380, size: 8, offset: 448)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2505, file: !55, line: 124, baseType: !380, size: 8, offset: 456)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2505, file: !55, line: 125, baseType: !380, size: 8, offset: 464)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2505, file: !55, line: 126, baseType: !380, size: 8, offset: 472)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2489, file: !1441, line: 671, baseType: !2505, size: 512, offset: 1216)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2489, file: !1441, line: 679, baseType: !2579, size: 64, offset: 1728)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2395, file: !1441, line: 800, baseType: !2581, size: 64, offset: 5248)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1441, line: 800, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2395, file: !1441, line: 809, baseType: !2585, size: 64, offset: 5312)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1441, line: 70, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2395, file: !1441, line: 825, baseType: !2588, size: 2048, align: 512, offset: 5632)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1441, line: 509, size: 2048, align: 512, elements: !2589)
!2589 = !{!2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2588, file: !1441, line: 511, baseType: !332, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2588, file: !1441, line: 512, baseType: !332, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2588, file: !1441, line: 513, baseType: !332, size: 64, offset: 128)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2588, file: !1441, line: 514, baseType: !332, size: 64, offset: 192)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2588, file: !1441, line: 515, baseType: !332, size: 64, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2588, file: !1441, line: 516, baseType: !332, size: 64, offset: 320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2588, file: !1441, line: 518, baseType: !332, size: 64, offset: 384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2588, file: !1441, line: 519, baseType: !332, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2588, file: !1441, line: 520, baseType: !637, size: 64, offset: 512)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2588, file: !1441, line: 522, baseType: !332, size: 64, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2588, file: !1441, line: 523, baseType: !332, size: 64, offset: 640)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2588, file: !1441, line: 524, baseType: !637, size: 64, offset: 704)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2588, file: !1441, line: 526, baseType: !637, size: 64, offset: 768)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2588, file: !1441, line: 527, baseType: !332, size: 64, offset: 832)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2588, file: !1441, line: 529, baseType: !332, size: 64, offset: 896)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2588, file: !1441, line: 530, baseType: !332, size: 64, offset: 960)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2588, file: !1441, line: 531, baseType: !332, size: 64, offset: 1024)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2588, file: !1441, line: 532, baseType: !332, size: 64, offset: 1088)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2588, file: !1441, line: 533, baseType: !332, size: 64, offset: 1152)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2588, file: !1441, line: 535, baseType: !332, size: 64, offset: 1216)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2588, file: !1441, line: 536, baseType: !332, size: 64, offset: 1280)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2588, file: !1441, line: 537, baseType: !332, size: 64, offset: 1344)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2588, file: !1441, line: 538, baseType: !332, size: 64, offset: 1408)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2588, file: !1441, line: 539, baseType: !332, size: 64, offset: 1472)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2588, file: !1441, line: 540, baseType: !332, size: 64, offset: 1536)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2588, file: !1441, line: 541, baseType: !332, size: 64, offset: 1600)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2588, file: !1441, line: 542, baseType: !332, size: 64, offset: 1664)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2588, file: !1441, line: 543, baseType: !332, size: 64, offset: 1728)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2395, file: !1441, line: 833, baseType: !7, size: 32, offset: 7680)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2395, file: !1441, line: 836, baseType: !7, size: 32, offset: 7712)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2395, file: !1441, line: 837, baseType: !101, size: 32, offset: 7744)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2395, file: !1441, line: 838, baseType: !2622, size: 64, offset: 7808)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2624)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2625, line: 19, baseType: !2626)
!2625 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2625, line: 19, size: 64, elements: !2627)
!2627 = !{!2628}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2626, file: !2625, line: 19, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !234)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2395, file: !1441, line: 839, baseType: !2631, size: 64, offset: 7872)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2395, file: !1441, line: 840, baseType: !2624, size: 64, offset: 7936)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2395, file: !1441, line: 841, baseType: !102, size: 64, offset: 8000)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2395, file: !1441, line: 843, baseType: !152, size: 16, offset: 8064)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2395, file: !1441, line: 845, baseType: !152, size: 16, offset: 8080)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2395, file: !1441, line: 848, baseType: !101, size: 32, offset: 8096)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2395, file: !1441, line: 849, baseType: !2638, size: 32, offset: 8128)
!2638 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1441, line: 718, size: 32, elements: !2639)
!2639 = !{!2640, !2647}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2638, file: !1441, line: 724, baseType: !2641, size: 32)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2638, file: !1441, line: 719, size: 32, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2641, file: !1441, line: 720, baseType: !380, size: 8)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2641, file: !1441, line: 721, baseType: !380, size: 8, offset: 8)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2641, file: !1441, line: 722, baseType: !380, size: 8, offset: 16)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2641, file: !1441, line: 723, baseType: !380, size: 8, offset: 24)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2638, file: !1441, line: 725, baseType: !328, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2395, file: !1441, line: 850, baseType: !256, size: 128, offset: 8192)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2395, file: !1441, line: 851, baseType: !2650, size: 64, offset: 8320)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1441, line: 60, flags: DIFlagFwdDecl)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2395, file: !1441, line: 855, baseType: !233, size: 64, offset: 8384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2395, file: !1441, line: 856, baseType: !380, size: 8, offset: 8448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2395, file: !1441, line: 857, baseType: !380, size: 8, offset: 8456)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2395, file: !1441, line: 858, baseType: !101, size: 32, offset: 8480)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2395, file: !1441, line: 859, baseType: !256, size: 128, offset: 8512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2395, file: !1441, line: 860, baseType: !101, size: 32, offset: 8640)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2395, file: !1441, line: 861, baseType: !256, size: 128, offset: 8704)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2395, file: !1441, line: 873, baseType: !2660, size: 256, offset: 8832)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1441, line: 376, size: 256, elements: !2661)
!2661 = !{!2662, !2663, !2664, !2665}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2660, file: !1441, line: 381, baseType: !233, size: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2660, file: !1441, line: 384, baseType: !334, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2660, file: !1441, line: 389, baseType: !334, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2660, file: !1441, line: 392, baseType: !334, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2395, file: !1441, line: 875, baseType: !256, size: 128, offset: 9088)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2395, file: !1441, line: 877, baseType: !2668, size: 320, offset: 9216)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2669, line: 86, size: 320, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2670 = !{!2671, !2672, !2673}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2668, file: !2669, line: 87, baseType: !101, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2668, file: !2669, line: 88, baseType: !256, size: 128, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2668, file: !2669, line: 89, baseType: !256, size: 128, offset: 192)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2395, file: !1441, line: 878, baseType: !762, size: 192, align: 64, offset: 9536)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2395, file: !1441, line: 881, baseType: !1092, size: 64, offset: 9728)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2395, file: !1441, line: 882, baseType: !1092, size: 64, offset: 9792)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2395, file: !1441, line: 884, baseType: !101, size: 32, offset: 9856)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2395, file: !1441, line: 885, baseType: !101, size: 32, offset: 9888)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2395, file: !1441, line: 886, baseType: !101, size: 32, offset: 9920)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2395, file: !1441, line: 888, baseType: !101, size: 32, offset: 9952)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2395, file: !1441, line: 890, baseType: !233, size: 64, offset: 9984)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2395, file: !1441, line: 893, baseType: !7, size: 32, offset: 10048)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2395, file: !1441, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2395, file: !1441, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2395, file: !1441, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2395, file: !1441, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2395, file: !1441, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2395, file: !1441, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2395, file: !1441, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2395, file: !1441, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2395, file: !1441, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2395, file: !1441, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2395, file: !1441, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2395, file: !1441, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2395, file: !1441, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2395, file: !1441, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2395, file: !1441, line: 969, baseType: !233, size: 64, offset: 10176)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2395, file: !1441, line: 971, baseType: !2699, size: 448, offset: 10240)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !60, line: 25, size: 448, elements: !2700)
!2700 = !{!2701, !2702, !2707}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2699, file: !60, line: 26, baseType: !233, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2699, file: !60, line: 27, baseType: !2703, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!574, !2706}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, scope: !2699, file: !60, line: 28, baseType: !2708, size: 320, offset: 128)
!2708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2699, file: !60, line: 28, size: 320, elements: !2709)
!2709 = !{!2710, !2720, !2745}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2708, file: !60, line: 37, baseType: !2711, size: 320)
!2711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !60, line: 30, size: 320, elements: !2712)
!2712 = !{!2713, !2715, !2716, !2717, !2718, !2719}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2711, file: !60, line: 31, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2711, file: !60, line: 32, baseType: !328, size: 32, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2711, file: !60, line: 33, baseType: !328, size: 32, offset: 96)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2711, file: !60, line: 34, baseType: !328, size: 32, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2711, file: !60, line: 35, baseType: !332, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2711, file: !60, line: 36, baseType: !2714, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2708, file: !60, line: 47, baseType: !2721, size: 192)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !60, line: 39, size: 192, elements: !2722)
!2722 = !{!2723, !2724, !2725, !2744}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2721, file: !60, line: 40, baseType: !2552, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2721, file: !60, line: 41, baseType: !59, size: 32, offset: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, scope: !2721, file: !60, line: 42, baseType: !2726, size: 64, offset: 64)
!2726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2721, file: !60, line: 42, size: 64, elements: !2727)
!2727 = !{!2728, !2736}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2726, file: !60, line: 43, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2731, line: 7, size: 128, elements: !2732)
!2731 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2732 = !{!2733, !2735}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2730, file: !2731, line: 8, baseType: !2734, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !164, line: 93, baseType: !459)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2730, file: !2731, line: 9, baseType: !459, size: 64, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2726, file: !60, line: 44, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2739, line: 7, size: 64, elements: !2740)
!2739 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2740 = !{!2741, !2743}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2738, file: !2739, line: 8, baseType: !2742, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2739, line: 5, baseType: !755)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2738, file: !2739, line: 9, baseType: !755, size: 32, offset: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2721, file: !60, line: 46, baseType: !332, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2708, file: !60, line: 55, baseType: !2746, size: 256)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2708, file: !60, line: 49, size: 256, elements: !2747)
!2747 = !{!2748, !2751, !2752, !2753, !2754}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2746, file: !60, line: 50, baseType: !2749, size: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !60, line: 14, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2746, file: !60, line: 51, baseType: !101, size: 32, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2746, file: !60, line: 52, baseType: !101, size: 32, offset: 96)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2746, file: !60, line: 53, baseType: !233, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2746, file: !60, line: 54, baseType: !233, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2395, file: !1441, line: 973, baseType: !2756, size: 32, offset: 10688)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !131, line: 27, baseType: !2757)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !164, line: 28, baseType: !101)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2395, file: !1441, line: 974, baseType: !2756, size: 32, offset: 10720)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2395, file: !1441, line: 978, baseType: !233, size: 64, offset: 10752)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2395, file: !1441, line: 987, baseType: !2394, size: 64, offset: 10816)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2395, file: !1441, line: 990, baseType: !2394, size: 64, offset: 10880)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2395, file: !1441, line: 995, baseType: !256, size: 128, offset: 10944)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2395, file: !1441, line: 996, baseType: !256, size: 128, offset: 11072)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2395, file: !1441, line: 997, baseType: !2394, size: 64, offset: 11200)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2395, file: !1441, line: 1005, baseType: !256, size: 128, offset: 11264)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2395, file: !1441, line: 1006, baseType: !256, size: 128, offset: 11392)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2395, file: !1441, line: 1009, baseType: !679, size: 64, offset: 11520)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2395, file: !1441, line: 1010, baseType: !2769, size: 512, offset: 11584)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !691, size: 512, elements: !696)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2395, file: !1441, line: 1011, baseType: !256, size: 128, offset: 12096)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2395, file: !1441, line: 1012, baseType: !256, size: 128, offset: 12224)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2395, file: !1441, line: 1014, baseType: !1667, size: 64, offset: 12352)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2395, file: !1441, line: 1017, baseType: !1814, size: 64, offset: 12416)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2395, file: !1441, line: 1020, baseType: !1814, size: 64, offset: 12480)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2395, file: !1441, line: 1023, baseType: !102, size: 64, offset: 12544)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2395, file: !1441, line: 1025, baseType: !332, size: 64, offset: 12608)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2395, file: !1441, line: 1026, baseType: !332, size: 64, offset: 12672)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2395, file: !1441, line: 1031, baseType: !332, size: 64, offset: 12736)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2395, file: !1441, line: 1032, baseType: !2780, size: 192, offset: 12800)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1441, line: 324, size: 192, elements: !2781)
!2781 = !{!2782, !2783, !2784}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2780, file: !1441, line: 326, baseType: !332, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2780, file: !1441, line: 327, baseType: !332, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2780, file: !1441, line: 328, baseType: !645, size: 32, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2395, file: !1441, line: 1041, baseType: !233, size: 64, offset: 12992)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2395, file: !1441, line: 1042, baseType: !233, size: 64, offset: 13056)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2395, file: !1441, line: 1045, baseType: !332, size: 64, offset: 13120)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2395, file: !1441, line: 1048, baseType: !332, size: 64, offset: 13184)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2395, file: !1441, line: 1051, baseType: !233, size: 64, offset: 13248)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2395, file: !1441, line: 1052, baseType: !233, size: 64, offset: 13312)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2395, file: !1441, line: 1055, baseType: !2792, size: 640, offset: 13376)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2793, line: 132, size: 640, elements: !2794)
!2793 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2794 = !{!2795, !2801, !2802}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2792, file: !2793, line: 133, baseType: !2796, size: 576)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2797, size: 576, elements: !540)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2793, line: 117, size: 192, elements: !2798)
!2798 = !{!2799, !2800}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2797, file: !2793, line: 118, baseType: !332, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2797, file: !2793, line: 119, baseType: !2561, size: 128, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2792, file: !2793, line: 134, baseType: !7, size: 32, offset: 576)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2792, file: !2793, line: 135, baseType: !7, size: 32, offset: 608)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2395, file: !1441, line: 1058, baseType: !2804, size: 448, offset: 14016)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2793, line: 144, size: 448, elements: !2805)
!2805 = !{!2806, !2807, !2808}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2804, file: !2793, line: 145, baseType: !136, size: 128, align: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2804, file: !2793, line: 146, baseType: !640, size: 256, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2804, file: !2793, line: 147, baseType: !7, size: 32, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2395, file: !1441, line: 1064, baseType: !720, size: 64, offset: 14464)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2395, file: !1441, line: 1067, baseType: !720, size: 64, offset: 14528)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2395, file: !1441, line: 1070, baseType: !720, size: 64, offset: 14592)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2395, file: !1441, line: 1074, baseType: !747, size: 64, offset: 14656)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2395, file: !1441, line: 1084, baseType: !2814, size: 128, offset: 14720)
!2814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !2815)
!2815 = !{!2816}
!2816 = !DISubrange(count: 16)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2395, file: !1441, line: 1086, baseType: !2818, size: 64, offset: 14848)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1441, line: 55, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2395, file: !1441, line: 1089, baseType: !2821, size: 64, offset: 14912)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2822, line: 12, size: 64, elements: !2823)
!2822 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2821, file: !2822, line: 13, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2822, line: 8, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2395, file: !1441, line: 1090, baseType: !2828, size: 128, offset: 14976)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2829, line: 13, size: 128, elements: !2830)
!2829 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2828, file: !2829, line: 14, baseType: !256, size: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2395, file: !1441, line: 1097, baseType: !2833, size: 64, offset: 15104)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1441, line: 50, flags: DIFlagFwdDecl)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2395, file: !1441, line: 1100, baseType: !2836, size: 64, offset: 15168)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1441, line: 1100, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2395, file: !1441, line: 1103, baseType: !2839, size: 64, offset: 15232)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1441, line: 53, flags: DIFlagFwdDecl)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2395, file: !1441, line: 1107, baseType: !2842, size: 64, offset: 15296)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2844, line: 35, flags: DIFlagFwdDecl)
!2844 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2395, file: !1441, line: 1110, baseType: !2846, size: 64, offset: 15360)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2848, line: 93, size: 8768, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2897, !2906, !2907, !2909, !2910, !2911, !2914, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2952, !2953, !2960, !2970, !2973, !2974, !2977, !2978, !2979, !2980, !2981, !2982}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2847, file: !2848, line: 94, baseType: !126, size: 32)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2847, file: !2848, line: 95, baseType: !130, size: 32, offset: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2847, file: !2848, line: 96, baseType: !101, size: 32, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2847, file: !2848, line: 97, baseType: !101, size: 32, offset: 96)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2847, file: !2848, line: 98, baseType: !256, size: 128, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2847, file: !2848, line: 100, baseType: !700, size: 192, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2847, file: !2848, line: 103, baseType: !2394, size: 64, offset: 448)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2847, file: !2848, line: 106, baseType: !2858, size: 192, offset: 512)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !916, line: 32, size: 192, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2858, file: !916, line: 33, baseType: !256, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2858, file: !916, line: 34, baseType: !2862, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2863, line: 25, baseType: !2864)
!2863 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2863, line: 23, size: 64, elements: !2865)
!2865 = !{!2866}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2864, file: !2863, line: 24, baseType: !2629, size: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2847, file: !2848, line: 109, baseType: !687, size: 64, offset: 704)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2847, file: !2848, line: 112, baseType: !101, size: 32, offset: 768)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2847, file: !2848, line: 114, baseType: !101, size: 32, offset: 800)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2847, file: !2848, line: 115, baseType: !2394, size: 64, offset: 832)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2847, file: !2848, line: 118, baseType: !101, size: 32, offset: 896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2848, line: 119, baseType: !7, size: 32, offset: 928)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2847, file: !2848, line: 121, baseType: !2874, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2848, line: 80, size: 448, elements: !2876)
!2876 = !{!2877, !2878, !2884}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2875, file: !2848, line: 81, baseType: !130, size: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2875, file: !2848, line: 82, baseType: !2879, size: 128, offset: 64)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2848, line: 75, size: 128, elements: !2880)
!2880 = !{!2881, !2882}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2879, file: !2848, line: 76, baseType: !2394, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2879, file: !2848, line: 77, baseType: !2883, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2875, file: !2848, line: 83, baseType: !1668, size: 256, offset: 192)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2847, file: !2848, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2847, file: !2848, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2847, file: !2848, line: 138, baseType: !7, size: 32, offset: 1056)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2847, file: !2848, line: 139, baseType: !256, size: 128, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2847, file: !2848, line: 142, baseType: !2505, size: 512, offset: 1216)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2847, file: !2848, line: 143, baseType: !2513, size: 64, offset: 1728)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2847, file: !2848, line: 150, baseType: !2892, size: 256, offset: 1792)
!2892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2893, size: 256, elements: !1804)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2848, line: 38, size: 128, elements: !2894)
!2894 = !{!2895, !2896}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2893, file: !2848, line: 39, baseType: !332, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2893, file: !2848, line: 40, baseType: !332, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2847, file: !2848, line: 156, baseType: !2898, size: 192, offset: 2048)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2848, line: 66, size: 192, elements: !2899)
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2898, file: !2848, line: 67, baseType: !2901, size: 192)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2848, line: 47, size: 192, elements: !2902)
!2902 = !{!2903, !2904, !2905}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2901, file: !2848, line: 48, baseType: !633, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2901, file: !2848, line: 49, baseType: !633, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2901, file: !2848, line: 50, baseType: !633, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2847, file: !2848, line: 160, baseType: !2792, size: 640, offset: 2240)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2847, file: !2848, line: 163, baseType: !2908, size: 256, offset: 2880)
!2908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !679, size: 256, elements: !696)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2847, file: !2848, line: 169, baseType: !679, size: 64, offset: 3136)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2847, file: !2848, line: 172, baseType: !101, size: 32, offset: 3200)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2847, file: !2848, line: 174, baseType: !2912, size: 64, offset: 3264)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2848, line: 174, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2847, file: !2848, line: 185, baseType: !2915, size: 64, offset: 3328)
!2915 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !301, line: 860, baseType: !2916)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 853, size: 64, elements: !2917)
!2917 = !{!2918, !2919}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2916, file: !301, line: 858, baseType: !300, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2916, file: !301, line: 859, baseType: !356, size: 32, offset: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2847, file: !2848, line: 186, baseType: !332, size: 64, offset: 3392)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2847, file: !2848, line: 186, baseType: !332, size: 64, offset: 3456)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2847, file: !2848, line: 186, baseType: !332, size: 64, offset: 3520)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2847, file: !2848, line: 186, baseType: !332, size: 64, offset: 3584)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2847, file: !2848, line: 187, baseType: !332, size: 64, offset: 3648)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2847, file: !2848, line: 188, baseType: !332, size: 64, offset: 3712)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2847, file: !2848, line: 189, baseType: !2780, size: 192, offset: 3776)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2847, file: !2848, line: 190, baseType: !233, size: 64, offset: 3968)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2847, file: !2848, line: 190, baseType: !233, size: 64, offset: 4032)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2847, file: !2848, line: 190, baseType: !233, size: 64, offset: 4096)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2847, file: !2848, line: 190, baseType: !233, size: 64, offset: 4160)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2847, file: !2848, line: 191, baseType: !233, size: 64, offset: 4224)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2847, file: !2848, line: 191, baseType: !233, size: 64, offset: 4288)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2847, file: !2848, line: 191, baseType: !233, size: 64, offset: 4352)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2847, file: !2848, line: 191, baseType: !233, size: 64, offset: 4416)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2847, file: !2848, line: 192, baseType: !233, size: 64, offset: 4480)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2847, file: !2848, line: 192, baseType: !233, size: 64, offset: 4544)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2847, file: !2848, line: 192, baseType: !233, size: 64, offset: 4608)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2847, file: !2848, line: 192, baseType: !233, size: 64, offset: 4672)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2847, file: !2848, line: 193, baseType: !233, size: 64, offset: 4736)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2847, file: !2848, line: 193, baseType: !233, size: 64, offset: 4800)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2847, file: !2848, line: 194, baseType: !2942, size: 448, offset: 4864)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2943, line: 12, size: 448, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2944 = !{!2945, !2946, !2947, !2948, !2949, !2950, !2951}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2942, file: !2943, line: 15, baseType: !332, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2942, file: !2943, line: 17, baseType: !332, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2942, file: !2943, line: 19, baseType: !332, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2942, file: !2943, line: 21, baseType: !332, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2942, file: !2943, line: 29, baseType: !332, size: 64, offset: 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2942, file: !2943, line: 35, baseType: !332, size: 64, offset: 320)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2942, file: !2943, line: 44, baseType: !332, size: 64, offset: 384)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2847, file: !2848, line: 202, baseType: !334, size: 64, offset: 5312)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2847, file: !2848, line: 213, baseType: !2954, size: 2048, offset: 5376)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2955, size: 2048, elements: !2815)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2956, line: 43, size: 128, elements: !2957)
!2956 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2955, file: !2956, line: 44, baseType: !232, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2955, file: !2956, line: 45, baseType: !232, size: 64, offset: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2847, file: !2848, line: 216, baseType: !2961, size: 448, offset: 7424)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2848, line: 30, size: 448, elements: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967, !2968, !2969}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2961, file: !2848, line: 31, baseType: !101, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2961, file: !2848, line: 32, baseType: !574, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2961, file: !2848, line: 33, baseType: !233, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2961, file: !2848, line: 34, baseType: !332, size: 64, offset: 192)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2961, file: !2848, line: 34, baseType: !332, size: 64, offset: 256)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2961, file: !2848, line: 35, baseType: !233, size: 64, offset: 320)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2961, file: !2848, line: 35, baseType: !233, size: 64, offset: 384)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2847, file: !2848, line: 219, baseType: !2971, size: 64, offset: 7872)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2848, line: 219, flags: DIFlagFwdDecl)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2847, file: !2848, line: 222, baseType: !7, size: 32, offset: 7936)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2847, file: !2848, line: 223, baseType: !2975, size: 64, offset: 8000)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2848, line: 223, flags: DIFlagFwdDecl)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2847, file: !2848, line: 230, baseType: !828, size: 8, offset: 8064)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2847, file: !2848, line: 231, baseType: !150, size: 16, offset: 8080)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2847, file: !2848, line: 232, baseType: !150, size: 16, offset: 8096)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2847, file: !2848, line: 234, baseType: !1092, size: 64, offset: 8128)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2847, file: !2848, line: 237, baseType: !640, size: 256, offset: 8192)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2847, file: !2848, line: 243, baseType: !770, size: 320, offset: 8448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2395, file: !1441, line: 1111, baseType: !2984, size: 64, offset: 15424)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2848, line: 20, size: 16640, elements: !2986)
!2986 = !{!2987, !2988, !2989, !2990}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2985, file: !2848, line: 21, baseType: !356, size: 32)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2985, file: !2848, line: 22, baseType: !126, size: 32, offset: 32)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2985, file: !2848, line: 23, baseType: !700, size: 192, offset: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2985, file: !2848, line: 24, baseType: !2991, size: 16384, offset: 256)
!2991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2992, size: 16384, elements: !544)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !916, line: 51, size: 256, elements: !2993)
!2993 = !{!2994}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2992, file: !916, line: 52, baseType: !2995, size: 256)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !916, line: 37, size: 256, elements: !2996)
!2996 = !{!2997, !3004, !3005, !3009}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2995, file: !916, line: 39, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2999, line: 83, baseType: !3000)
!2999 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2999, line: 82, baseType: !3002)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !101}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2995, file: !916, line: 40, baseType: !233, size: 64, offset: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2995, file: !916, line: 46, baseType: !3006, size: 64, offset: 128)
!3006 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2999, line: 86, baseType: !3007)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2999, line: 85, baseType: !2019)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2995, file: !916, line: 48, baseType: !2862, size: 64, offset: 192)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2395, file: !1441, line: 1112, baseType: !2862, size: 64, offset: 15488)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2395, file: !1441, line: 1113, baseType: !2862, size: 64, offset: 15552)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2395, file: !1441, line: 1115, baseType: !2862, size: 64, offset: 15616)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2395, file: !1441, line: 1116, baseType: !2858, size: 192, offset: 15680)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2395, file: !1441, line: 1117, baseType: !233, size: 64, offset: 15872)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2395, file: !1441, line: 1118, baseType: !230, size: 64, offset: 15936)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2395, file: !1441, line: 1119, baseType: !7, size: 32, offset: 16000)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2395, file: !1441, line: 1121, baseType: !139, size: 64, offset: 16064)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2395, file: !1441, line: 1125, baseType: !3019, size: 64, offset: 16128)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1441, line: 43, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2395, file: !1441, line: 1127, baseType: !157, size: 32, offset: 16192)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2395, file: !1441, line: 1128, baseType: !7, size: 32, offset: 16224)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2395, file: !1441, line: 1130, baseType: !3024, size: 128, offset: 16256)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3025, line: 37, size: 128, elements: !3026)
!3025 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3024, file: !3025, line: 38, baseType: !101, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3024, file: !3025, line: 39, baseType: !130, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3024, file: !3025, line: 40, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3025, line: 24, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2395, file: !1441, line: 1131, baseType: !3033, size: 256, offset: 16384)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3034, line: 12, size: 256, elements: !3035)
!3034 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3035 = !{!3036, !3037, !3038, !3039}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3033, file: !3034, line: 13, baseType: !436, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3033, file: !3034, line: 14, baseType: !233, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3033, file: !3034, line: 15, baseType: !233, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3033, file: !3034, line: 16, baseType: !828, size: 8, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2395, file: !1441, line: 1134, baseType: !332, size: 64, offset: 16640)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2395, file: !1441, line: 1135, baseType: !332, size: 64, offset: 16704)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2395, file: !1441, line: 1138, baseType: !356, size: 32, offset: 16768)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2395, file: !1441, line: 1141, baseType: !645, size: 32, offset: 16800)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2395, file: !1441, line: 1143, baseType: !3045, size: 64, offset: 16832)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1441, line: 735, size: 64, elements: !3046)
!3046 = !{!3047}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3045, file: !1441, line: 736, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2395, file: !1441, line: 1147, baseType: !2564, size: 128, offset: 16896)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2395, file: !1441, line: 1149, baseType: !2394, size: 64, offset: 17024)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2395, file: !1441, line: 1151, baseType: !3052, size: 64, offset: 17088)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1441, line: 1151, flags: DIFlagFwdDecl)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2395, file: !1441, line: 1188, baseType: !102, size: 64, offset: 17152)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2395, file: !1441, line: 1191, baseType: !3056, size: 64, offset: 17216)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1441, line: 44, flags: DIFlagFwdDecl)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2395, file: !1441, line: 1194, baseType: !3059, size: 64, offset: 17280)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1441, line: 45, flags: DIFlagFwdDecl)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2395, file: !1441, line: 1197, baseType: !3062, size: 64, offset: 17344)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1441, line: 61, flags: DIFlagFwdDecl)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2395, file: !1441, line: 1199, baseType: !3065, size: 64, offset: 17408)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3067, line: 99, size: 128, elements: !3068)
!3067 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3066, file: !3067, line: 100, baseType: !631, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3066, file: !3067, line: 101, baseType: !130, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3066, file: !3067, line: 103, baseType: !152, size: 16, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2395, file: !1441, line: 1202, baseType: !3073, size: 64, offset: 17472)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1441, line: 48, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2395, file: !1441, line: 1205, baseType: !233, size: 64, offset: 17536)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2395, file: !1441, line: 1206, baseType: !3077, size: 64, offset: 17600)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !916, line: 14, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !916, line: 12, size: 384, elements: !3080)
!3080 = !{!3081}
!3081 = !DIDerivedType(tag: DW_TAG_member, scope: !3079, file: !916, line: 13, baseType: !3082, size: 384)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3079, file: !916, line: 13, size: 384, elements: !3083)
!3083 = !{!3084, !3085, !3086, !3087}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3082, file: !916, line: 13, baseType: !101, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3082, file: !916, line: 13, baseType: !101, size: 32, offset: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3082, file: !916, line: 13, baseType: !101, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3082, file: !916, line: 13, baseType: !3088, size: 256, offset: 128)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3089, line: 37, size: 256, elements: !3090)
!3089 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3090 = !{!3091, !3096, !3109, !3115, !3124, !3151, !3156}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3088, file: !3089, line: 42, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 39, size: 64, elements: !3093)
!3093 = !{!3094, !3095}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3092, file: !3089, line: 40, baseType: !2757, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3092, file: !3089, line: 41, baseType: !163, size: 32, offset: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3088, file: !3089, line: 50, baseType: !3097, size: 192)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 45, size: 192, elements: !3098)
!3098 = !{!3099, !3101, !3102, !3108}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3097, file: !3089, line: 46, baseType: !3100, size: 32)
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !164, line: 95, baseType: !101)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3097, file: !3089, line: 47, baseType: !101, size: 32, offset: 32)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3097, file: !3089, line: 48, baseType: !3103, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3089, line: 11, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3089, line: 8, size: 64, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3104, file: !3089, line: 9, baseType: !101, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3104, file: !3089, line: 10, baseType: !102, size: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3097, file: !3089, line: 49, baseType: !101, size: 32, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3088, file: !3089, line: 57, baseType: !3110, size: 128)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 53, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3110, file: !3089, line: 54, baseType: !2757, size: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3110, file: !3089, line: 55, baseType: !163, size: 32, offset: 32)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3110, file: !3089, line: 56, baseType: !3103, size: 64, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3088, file: !3089, line: 66, baseType: !3116, size: 256)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 60, size: 256, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121, !3123}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3116, file: !3089, line: 61, baseType: !2757, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3116, file: !3089, line: 62, baseType: !163, size: 32, offset: 32)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3116, file: !3089, line: 63, baseType: !101, size: 32, offset: 64)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3116, file: !3089, line: 64, baseType: !3122, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !164, line: 94, baseType: !573)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3116, file: !3089, line: 65, baseType: !3122, size: 64, offset: 192)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3088, file: !3089, line: 105, baseType: !3125, size: 256)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 69, size: 256, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3125, file: !3089, line: 70, baseType: !102, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, scope: !3125, file: !3089, line: 79, baseType: !3129, size: 192, offset: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3125, file: !3089, line: 79, size: 192, elements: !3130)
!3130 = !{!3131, !3132, !3133, !3140, !3145}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3129, file: !3089, line: 81, baseType: !101, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3129, file: !3089, line: 86, baseType: !150, size: 16)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3129, file: !3089, line: 92, baseType: !3134, size: 192)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 88, size: 192, elements: !3135)
!3135 = !{!3136, !3138, !3139}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3134, file: !3089, line: 89, baseType: !3137, size: 64)
!3137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 64, elements: !2548)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3134, file: !3089, line: 90, baseType: !102, size: 64, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3134, file: !3089, line: 91, baseType: !102, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3129, file: !3089, line: 97, baseType: !3141, size: 96)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 94, size: 96, elements: !3142)
!3142 = !{!3143, !3144}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3141, file: !3089, line: 95, baseType: !3137, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3141, file: !3089, line: 96, baseType: !179, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3129, file: !3089, line: 103, baseType: !3146, size: 128)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3129, file: !3089, line: 99, size: 128, elements: !3147)
!3147 = !{!3148, !3149, !3150}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3146, file: !3089, line: 100, baseType: !233, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3146, file: !3089, line: 101, baseType: !179, size: 32, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3146, file: !3089, line: 102, baseType: !179, size: 32, offset: 96)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3088, file: !3089, line: 111, baseType: !3152, size: 128)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 108, size: 128, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3152, file: !3089, line: 109, baseType: !574, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3152, file: !3089, line: 110, baseType: !101, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3088, file: !3089, line: 118, baseType: !3157, size: 128)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3088, file: !3089, line: 114, size: 128, elements: !3158)
!3158 = !{!3159, !3160, !3161}
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3157, file: !3089, line: 115, baseType: !102, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3157, file: !3089, line: 116, baseType: !101, size: 32, offset: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3157, file: !3089, line: 117, baseType: !7, size: 32, offset: 96)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2395, file: !1441, line: 1208, baseType: !2942, size: 448, offset: 17664)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2395, file: !1441, line: 1215, baseType: !332, size: 64, offset: 18112)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2395, file: !1441, line: 1217, baseType: !332, size: 64, offset: 18176)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2395, file: !1441, line: 1219, baseType: !332, size: 64, offset: 18240)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2395, file: !1441, line: 1223, baseType: !3167, size: 64, offset: 18304)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3168, line: 99, baseType: !3169)
!3168 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3168, line: 99, size: 64, elements: !3170)
!3170 = !{!3171}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3169, file: !3168, line: 99, baseType: !2629, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2395, file: !1441, line: 1225, baseType: !300, size: 32, offset: 18368)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2395, file: !1441, line: 1226, baseType: !101, size: 32, offset: 18400)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2395, file: !1441, line: 1227, baseType: !101, size: 32, offset: 18432)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2395, file: !1441, line: 1231, baseType: !3176, size: 64, offset: 18496)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1441, line: 1231, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2395, file: !1441, line: 1233, baseType: !256, size: 128, offset: 18560)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2395, file: !1441, line: 1240, baseType: !3180, size: 64, offset: 18688)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1441, line: 62, flags: DIFlagFwdDecl)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2395, file: !1441, line: 1242, baseType: !3183, size: 64, offset: 18752)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1441, line: 1242, flags: DIFlagFwdDecl)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2395, file: !1441, line: 1244, baseType: !256, size: 128, offset: 18816)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2395, file: !1441, line: 1245, baseType: !3187, size: 64, offset: 18944)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1441, line: 51, flags: DIFlagFwdDecl)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2395, file: !1441, line: 1246, baseType: !640, size: 256, offset: 19008)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2395, file: !1441, line: 1247, baseType: !7, size: 32, offset: 19264)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2395, file: !1441, line: 1250, baseType: !3192, size: 64, offset: 19328)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1441, line: 57, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2395, file: !1441, line: 1251, baseType: !640, size: 256, offset: 19392)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2395, file: !1441, line: 1252, baseType: !256, size: 128, offset: 19648)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2395, file: !1441, line: 1259, baseType: !1387, size: 64, offset: 19776)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2395, file: !1441, line: 1260, baseType: !150, size: 16, offset: 19840)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2395, file: !1441, line: 1261, baseType: !150, size: 16, offset: 19856)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2395, file: !1441, line: 1314, baseType: !3200, size: 64, offset: 19904)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3202, line: 62, size: 256, align: 256, elements: !3203)
!3202 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3203 = !{!3204, !3205, !3206, !3207, !3208, !3209, !3210}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3201, file: !3202, line: 75, baseType: !179, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3201, file: !3202, line: 90, baseType: !179, size: 32, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3201, file: !3202, line: 112, baseType: !333, size: 64, offset: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3201, file: !3202, line: 132, baseType: !179, size: 32, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3201, file: !3202, line: 140, baseType: !179, size: 32, offset: 160)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3201, file: !3202, line: 149, baseType: !179, size: 32, offset: 192)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3201, file: !3202, line: 154, baseType: !3211, offset: 224)
!3211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !172)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2395, file: !1441, line: 1315, baseType: !328, size: 32, offset: 19968)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2395, file: !1441, line: 1316, baseType: !328, size: 32, offset: 20000)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2395, file: !1441, line: 1321, baseType: !233, size: 64, offset: 20032)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2395, file: !1441, line: 1325, baseType: !101, size: 32, offset: 20096)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2395, file: !1441, line: 1326, baseType: !101, size: 32, offset: 20128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2395, file: !1441, line: 1327, baseType: !101, size: 32, offset: 20160)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2395, file: !1441, line: 1328, baseType: !101, size: 32, offset: 20192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2395, file: !1441, line: 1329, baseType: !136, size: 128, align: 64, offset: 20224)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2395, file: !1441, line: 1332, baseType: !3221, size: 128, offset: 20352)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3222, line: 51, size: 128, elements: !3223)
!3222 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3223 = !{!3224, !3229, !3230}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3221, file: !3222, line: 60, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3226, line: 7, size: 64, elements: !3227)
!3226 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3227 = !{!3228}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3225, file: !3226, line: 12, baseType: !2626, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3221, file: !3222, line: 63, baseType: !828, size: 8, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3221, file: !3222, line: 70, baseType: !828, size: 8, offset: 72)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2395, file: !1441, line: 1335, baseType: !1439, size: 64, offset: 20480)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2395, file: !1441, line: 1337, baseType: !3233, size: 128, offset: 20544)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3222, line: 39, size: 128, elements: !3234)
!3234 = !{!3235, !3236, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3233, file: !3222, line: 40, baseType: !242, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3233, file: !3222, line: 42, baseType: !179, size: 32, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3233, file: !3222, line: 43, baseType: !179, size: 32, offset: 96)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2395, file: !1441, line: 1340, baseType: !3239, size: 64, offset: 20672)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1441, line: 69, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2395, file: !1441, line: 1351, baseType: !101, size: 32, offset: 20736)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2395, file: !1441, line: 1352, baseType: !101, size: 32, offset: 20768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2395, file: !1441, line: 1354, baseType: !233, size: 64, offset: 20800)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2395, file: !1441, line: 1364, baseType: !332, size: 64, offset: 20864)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2395, file: !1441, line: 1365, baseType: !332, size: 64, offset: 20928)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2395, file: !1441, line: 1412, baseType: !233, size: 64, offset: 20992)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2395, file: !1441, line: 1453, baseType: !3248, size: 64, offset: 21056)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1441, line: 1453, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2395, file: !1441, line: 1457, baseType: !3251, size: 64, offset: 21120)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !66, line: 61, size: 576, elements: !3253)
!3253 = !{!3254, !3255, !3274, !3277, !3278, !3311, !3321}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3252, file: !66, line: 62, baseType: !65, size: 32)
!3255 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !66, line: 64, baseType: !3256, size: 192, offset: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3252, file: !66, line: 64, size: 192, elements: !3257)
!3257 = !{!3258, !3269}
!3258 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !66, line: 65, baseType: !3259, size: 192)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !66, line: 65, size: 192, elements: !3260)
!3260 = !{!3261, !3268}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3259, file: !66, line: 66, baseType: !3262, size: 128)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3263, line: 50, size: 128, elements: !3264)
!3263 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3264 = !{!3265, !3266, !3267}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3262, file: !3263, line: 52, baseType: !233, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3262, file: !3263, line: 54, baseType: !7, size: 32, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3262, file: !3263, line: 55, baseType: !7, size: 32, offset: 96)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3259, file: !66, line: 67, baseType: !233, size: 64, offset: 128)
!3269 = !DIDerivedType(tag: DW_TAG_member, scope: !3256, file: !66, line: 70, baseType: !3270, size: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3256, file: !66, line: 70, size: 192, elements: !3271)
!3271 = !{!3272, !3273}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3270, file: !66, line: 71, baseType: !136, size: 128, align: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3270, file: !66, line: 72, baseType: !233, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3252, file: !66, line: 76, baseType: !3275, size: 64, offset: 256)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !66, line: 76, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3252, file: !66, line: 77, baseType: !233, size: 64, offset: 320)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3252, file: !66, line: 79, baseType: !3279, size: 64, offset: 384)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3263, line: 25, size: 256, elements: !3281)
!3281 = !{!3282, !3288, !3292}
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 26, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 26, size: 128, elements: !3284)
!3284 = !{!3285, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3283, file: !3263, line: 27, baseType: !3286, size: 128)
!3286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !2815)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3283, file: !3263, line: 28, baseType: !3286, size: 128)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3280, file: !3263, line: 31, baseType: !3289, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3291)
!3291 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3263, line: 23, flags: DIFlagFwdDecl)
!3292 = !DIDerivedType(tag: DW_TAG_member, scope: !3280, file: !3263, line: 33, baseType: !3293, size: 64, offset: 192)
!3293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3280, file: !3263, line: 33, size: 64, elements: !3294)
!3294 = !{!3295, !3301, !3306}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3293, file: !3263, line: 38, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 34, size: 64, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3296, file: !3263, line: 35, baseType: !755, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3296, file: !3263, line: 36, baseType: !380, size: 8, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3296, file: !3263, line: 37, baseType: !380, size: 8, offset: 40)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3293, file: !3263, line: 42, baseType: !3302, size: 16)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 39, size: 16, elements: !3303)
!3303 = !{!3304, !3305}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3302, file: !3263, line: 40, baseType: !380, size: 8)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3302, file: !3263, line: 41, baseType: !380, size: 8, offset: 8)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3293, file: !3263, line: 46, baseType: !3307, size: 16)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3293, file: !3263, line: 43, size: 16, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3307, file: !3263, line: 44, baseType: !380, size: 8)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3307, file: !3263, line: 45, baseType: !380, size: 8, offset: 8)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3252, file: !66, line: 81, baseType: !3312, size: 64, offset: 448)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !66, line: 85, size: 384, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3318, !3319, !3320}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3313, file: !66, line: 86, baseType: !3275, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3313, file: !66, line: 87, baseType: !233, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3313, file: !66, line: 88, baseType: !233, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3313, file: !66, line: 89, baseType: !233, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3313, file: !66, line: 90, baseType: !828, size: 8, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3313, file: !66, line: 92, baseType: !3312, size: 64, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3252, file: !66, line: 82, baseType: !7, size: 32, offset: 512)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2395, file: !1441, line: 1463, baseType: !3323, offset: 21184)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1441, line: 739, elements: !1113)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2395, file: !1441, line: 1470, baseType: !136, size: 128, align: 64, offset: 21184)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2395, file: !1441, line: 1471, baseType: !126, size: 32, offset: 21312)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2395, file: !1441, line: 1472, baseType: !101, size: 32, offset: 21344)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2395, file: !1441, line: 1474, baseType: !2394, size: 64, offset: 21376)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2395, file: !1441, line: 1475, baseType: !1914, size: 320, offset: 21440)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2395, file: !1441, line: 1478, baseType: !3330, size: 64, offset: 21760)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3332, line: 49, size: 512, elements: !3333)
!3332 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3333 = !{!3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3343}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3331, file: !3332, line: 50, baseType: !3330, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3331, file: !3332, line: 51, baseType: !102, size: 64, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3331, file: !3332, line: 52, baseType: !233, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3331, file: !3332, line: 53, baseType: !233, size: 64, offset: 192)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3331, file: !3332, line: 54, baseType: !241, size: 64, offset: 256)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3331, file: !3332, line: 56, baseType: !7, size: 32, offset: 320)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3331, file: !3332, line: 58, baseType: !7, size: 32, offset: 352)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3331, file: !3332, line: 59, baseType: !3342, size: 64, offset: 384)
!3342 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !131, line: 159, baseType: !332)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3331, file: !3332, line: 60, baseType: !1208, size: 64, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2395, file: !1441, line: 1482, baseType: !126, size: 32, offset: 21824)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2395, file: !1441, line: 1489, baseType: !102, size: 64, offset: 21888)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2395, file: !1441, line: 1504, baseType: !102, size: 64, offset: 21952)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2395, file: !1441, line: 1505, baseType: !333, size: 64, offset: 22016)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2395, file: !1441, line: 1506, baseType: !332, size: 64, offset: 22080)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2395, file: !1441, line: 1507, baseType: !333, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2395, file: !1441, line: 1508, baseType: !333, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2395, file: !1441, line: 1509, baseType: !333, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2395, file: !1441, line: 1510, baseType: !136, size: 128, align: 64, offset: 22208)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2395, file: !1441, line: 1511, baseType: !101, size: 32, offset: 22336)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2395, file: !1441, line: 1515, baseType: !3355, size: 64, offset: 22400)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !621, line: 56, size: 64, elements: !3356)
!3356 = !{!3357}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3355, file: !621, line: 57, baseType: !624, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2395, file: !1441, line: 1518, baseType: !3355, size: 64, offset: 22464)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2395, file: !1441, line: 1528, baseType: !136, size: 128, align: 64, offset: 22528)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2395, file: !1441, line: 1552, baseType: !3361, size: 35328, offset: 23040)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3362, line: 430, size: 35328, elements: !3363)
!3362 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3363 = !{!3364, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3393, !3394, !3395, !3396, !3397, !3398, !3401, !3402, !3403, !3404}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3361, file: !3362, line: 432, baseType: !3365, size: 192)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3366, size: 192, elements: !540)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3367, line: 16, size: 64, elements: !3368)
!3367 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3368 = !{!3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3366, file: !3367, line: 17, baseType: !387, size: 16)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3366, file: !3367, line: 18, baseType: !387, size: 16, offset: 16)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3366, file: !3367, line: 19, baseType: !387, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3366, file: !3367, line: 19, baseType: !387, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3366, file: !3367, line: 19, baseType: !387, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3366, file: !3367, line: 19, baseType: !387, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3366, file: !3367, line: 19, baseType: !387, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3366, file: !3367, line: 20, baseType: !387, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3366, file: !3367, line: 20, baseType: !387, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3366, file: !3367, line: 20, baseType: !387, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3366, file: !3367, line: 20, baseType: !387, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3366, file: !3367, line: 20, baseType: !387, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3366, file: !3367, line: 20, baseType: !387, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3361, file: !3362, line: 436, baseType: !233, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3361, file: !3362, line: 440, baseType: !152, size: 16, offset: 256)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3361, file: !3362, line: 441, baseType: !152, size: 16, offset: 272)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3361, file: !3362, line: 442, baseType: !152, size: 16, offset: 288)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3361, file: !3362, line: 443, baseType: !152, size: 16, offset: 304)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3361, file: !3362, line: 447, baseType: !233, size: 64, offset: 320)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3361, file: !3362, line: 448, baseType: !233, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3361, file: !3362, line: 459, baseType: !3390, size: 256, offset: 448)
!3390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3391, size: 256, elements: !696)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3362, line: 428, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3361, file: !3362, line: 461, baseType: !233, size: 64, offset: 704)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3361, file: !3362, line: 463, baseType: !233, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3361, file: !3362, line: 465, baseType: !233, size: 64, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3361, file: !3362, line: 466, baseType: !233, size: 64, offset: 896)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3361, file: !3362, line: 467, baseType: !233, size: 64, offset: 960)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3361, file: !3362, line: 473, baseType: !3399, size: 64, offset: 1024)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3362, line: 10, flags: DIFlagFwdDecl)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3361, file: !3362, line: 480, baseType: !233, size: 64, offset: 1088)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3361, file: !3362, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3361, file: !3362, line: 491, baseType: !328, size: 32, offset: 1184)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3361, file: !3362, line: 501, baseType: !3405, size: 33792, offset: 1536)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3406, line: 448, size: 33792, elements: !3407)
!3406 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3407 = !{!3408, !3409, !3410, !3570, !3571, !3577, !3578}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3405, file: !3406, line: 461, baseType: !7, size: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3405, file: !3406, line: 468, baseType: !233, size: 64, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3405, file: !3406, line: 476, baseType: !3411, size: 64, offset: 128)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3406, line: 356, size: 33280, align: 512, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3412, file: !3406, line: 358, baseType: !7, size: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3412, file: !3406, line: 361, baseType: !7, size: 32, offset: 32)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3412, file: !3406, line: 364, baseType: !332, size: 64, offset: 64)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3412, file: !3406, line: 367, baseType: !332, size: 64, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3412, file: !3406, line: 370, baseType: !332, size: 64, offset: 192)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3412, file: !3406, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3412, file: !3406, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3412, file: !3406, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3412, file: !3406, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3412, file: !3406, line: 397, baseType: !3424, size: 32768, offset: 512)
!3424 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3406, line: 348, size: 32768, elements: !3425)
!3425 = !{!3426, !3439, !3476, !3553, !3566}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3424, file: !3406, line: 349, baseType: !3427, size: 896)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3406, line: 12, size: 896, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3438}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3427, file: !3406, line: 13, baseType: !328, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3427, file: !3406, line: 14, baseType: !328, size: 32, offset: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3427, file: !3406, line: 15, baseType: !328, size: 32, offset: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3427, file: !3406, line: 16, baseType: !328, size: 32, offset: 96)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3427, file: !3406, line: 17, baseType: !328, size: 32, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3427, file: !3406, line: 18, baseType: !328, size: 32, offset: 160)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3427, file: !3406, line: 19, baseType: !328, size: 32, offset: 192)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3427, file: !3406, line: 22, baseType: !3437, size: 640, offset: 224)
!3437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 640, elements: !195)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3427, file: !3406, line: 25, baseType: !328, size: 32, offset: 864)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3424, file: !3406, line: 350, baseType: !3440, size: 4096, align: 128)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3406, line: 34, size: 4096, align: 128, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3461, !3462, !3463, !3465, !3467, !3471}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3440, file: !3406, line: 35, baseType: !387, size: 16)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3440, file: !3406, line: 36, baseType: !387, size: 16, offset: 16)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3440, file: !3406, line: 37, baseType: !387, size: 16, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3440, file: !3406, line: 38, baseType: !387, size: 16, offset: 48)
!3446 = !DIDerivedType(tag: DW_TAG_member, scope: !3440, file: !3406, line: 39, baseType: !3447, size: 128, offset: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3440, file: !3406, line: 39, size: 128, elements: !3448)
!3448 = !{!3449, !3454}
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3406, line: 40, baseType: !3450, size: 128)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3406, line: 40, size: 128, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3450, file: !3406, line: 41, baseType: !332, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3450, file: !3406, line: 42, baseType: !332, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3406, line: 44, baseType: !3455, size: 128)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3406, line: 44, size: 128, elements: !3456)
!3456 = !{!3457, !3458, !3459, !3460}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3455, file: !3406, line: 45, baseType: !328, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3455, file: !3406, line: 46, baseType: !328, size: 32, offset: 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3455, file: !3406, line: 47, baseType: !328, size: 32, offset: 64)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3455, file: !3406, line: 48, baseType: !328, size: 32, offset: 96)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3440, file: !3406, line: 51, baseType: !328, size: 32, offset: 192)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3440, file: !3406, line: 52, baseType: !328, size: 32, offset: 224)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3440, file: !3406, line: 55, baseType: !3464, size: 1024, offset: 256)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 1024, elements: !342)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3440, file: !3406, line: 58, baseType: !3466, size: 2048, offset: 1280)
!3466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 2048, elements: !544)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3440, file: !3406, line: 60, baseType: !3468, size: 384, offset: 3328)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 384, elements: !3469)
!3469 = !{!3470}
!3470 = !DISubrange(count: 12)
!3471 = !DIDerivedType(tag: DW_TAG_member, scope: !3440, file: !3406, line: 62, baseType: !3472, size: 384, offset: 3712)
!3472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3440, file: !3406, line: 62, size: 384, elements: !3473)
!3473 = !{!3474, !3475}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3472, file: !3406, line: 63, baseType: !3468, size: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3472, file: !3406, line: 64, baseType: !3468, size: 384)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3424, file: !3406, line: 351, baseType: !3477, size: 1088)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3406, line: 79, size: 1088, elements: !3478)
!3478 = !{!3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3552}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3477, file: !3406, line: 80, baseType: !328, size: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3477, file: !3406, line: 81, baseType: !328, size: 32, offset: 32)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3477, file: !3406, line: 82, baseType: !328, size: 32, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3477, file: !3406, line: 83, baseType: !328, size: 32, offset: 96)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3477, file: !3406, line: 84, baseType: !328, size: 32, offset: 128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3477, file: !3406, line: 85, baseType: !328, size: 32, offset: 160)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3477, file: !3406, line: 86, baseType: !328, size: 32, offset: 192)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3477, file: !3406, line: 88, baseType: !3437, size: 640, offset: 224)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3477, file: !3406, line: 89, baseType: !380, size: 8, offset: 864)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3477, file: !3406, line: 90, baseType: !380, size: 8, offset: 872)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3477, file: !3406, line: 91, baseType: !380, size: 8, offset: 880)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3477, file: !3406, line: 92, baseType: !380, size: 8, offset: 888)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3477, file: !3406, line: 93, baseType: !380, size: 8, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3477, file: !3406, line: 94, baseType: !380, size: 8, offset: 904)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3477, file: !3406, line: 95, baseType: !3494, size: 64, offset: 960)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3496, line: 11, size: 128, elements: !3497)
!3496 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3497 = !{!3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3495, file: !3496, line: 12, baseType: !574, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3495, file: !3496, line: 13, baseType: !3500, size: 64, offset: 64)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3502, line: 103, size: 1344, elements: !3503)
!3502 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3532, !3533, !3534}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3501, file: !3502, line: 109, baseType: !233, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3501, file: !3502, line: 110, baseType: !233, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3501, file: !3502, line: 111, baseType: !233, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3501, file: !3502, line: 112, baseType: !233, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3501, file: !3502, line: 113, baseType: !233, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3501, file: !3502, line: 114, baseType: !233, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3501, file: !3502, line: 117, baseType: !233, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3501, file: !3502, line: 118, baseType: !233, size: 64, offset: 448)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3501, file: !3502, line: 119, baseType: !233, size: 64, offset: 512)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3501, file: !3502, line: 120, baseType: !233, size: 64, offset: 576)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3501, file: !3502, line: 121, baseType: !233, size: 64, offset: 640)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3501, file: !3502, line: 122, baseType: !233, size: 64, offset: 704)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3501, file: !3502, line: 123, baseType: !233, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3501, file: !3502, line: 124, baseType: !233, size: 64, offset: 832)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3501, file: !3502, line: 125, baseType: !233, size: 64, offset: 896)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3501, file: !3502, line: 139, baseType: !233, size: 64, offset: 960)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3501, file: !3502, line: 142, baseType: !233, size: 64, offset: 1024)
!3521 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3502, line: 144, baseType: !3522, size: 64, offset: 1088)
!3522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3501, file: !3502, line: 144, size: 64, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3522, file: !3502, line: 146, baseType: !387, size: 16)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3522, file: !3502, line: 148, baseType: !332, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3522, file: !3502, line: 150, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3502, line: 59, size: 64, elements: !3528)
!3528 = !{!3529, !3530, !3531}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3527, file: !3502, line: 61, baseType: !332, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3527, file: !3502, line: 63, baseType: !332, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3527, file: !3502, line: 65, baseType: !332, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3501, file: !3502, line: 153, baseType: !233, size: 64, offset: 1152)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3501, file: !3502, line: 154, baseType: !233, size: 64, offset: 1216)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !3501, file: !3502, line: 156, baseType: !3535, size: 64, offset: 1280)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3501, file: !3502, line: 156, size: 64, elements: !3536)
!3536 = !{!3537, !3538, !3539}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3535, file: !3502, line: 158, baseType: !387, size: 16)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3535, file: !3502, line: 160, baseType: !332, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3535, file: !3502, line: 162, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3502, line: 69, size: 64, elements: !3541)
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3540, file: !3502, line: 71, baseType: !332, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3540, file: !3502, line: 73, baseType: !332, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3540, file: !3502, line: 75, baseType: !332, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3540, file: !3502, line: 77, baseType: !332, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3540, file: !3502, line: 80, baseType: !332, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3540, file: !3502, line: 83, baseType: !332, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3540, file: !3502, line: 86, baseType: !332, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3540, file: !3502, line: 88, baseType: !332, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3540, file: !3502, line: 93, baseType: !332, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3540, file: !3502, line: 100, baseType: !332, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3477, file: !3406, line: 96, baseType: !328, size: 32, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3424, file: !3406, line: 352, baseType: !3554, size: 4608, align: 512)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3406, line: 333, size: 4608, align: 512, elements: !3555)
!3555 = !{!3556, !3557, !3564}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3554, file: !3406, line: 334, baseType: !3440, size: 4096, align: 128)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3554, file: !3406, line: 335, baseType: !3558, size: 512, offset: 4096)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3406, line: 312, size: 512, elements: !3559)
!3559 = !{!3560, !3561, !3562}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3558, file: !3406, line: 313, baseType: !332, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3558, file: !3406, line: 314, baseType: !332, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3558, file: !3406, line: 315, baseType: !3563, size: 384, offset: 128)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 384, elements: !815)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3554, file: !3406, line: 336, baseType: !3565, offset: 4608)
!3565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, elements: !172)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3424, file: !3406, line: 353, baseType: !3567, size: 32768)
!3567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 32768, elements: !3568)
!3568 = !{!3569}
!3569 = !DISubrange(count: 4096)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3405, file: !3406, line: 484, baseType: !3411, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3405, file: !3406, line: 491, baseType: !3572, size: 128, offset: 256)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3406, line: 404, size: 128, elements: !3573)
!3573 = !{!3574, !3575, !3576}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3572, file: !3406, line: 424, baseType: !332, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3572, file: !3406, line: 432, baseType: !7, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3572, file: !3406, line: 440, baseType: !7, size: 32, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3405, file: !3406, line: 498, baseType: !3572, size: 128, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3405, file: !3406, line: 508, baseType: !3412, size: 33280, align: 512, offset: 512)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2377, file: !2378, line: 16, baseType: !700, size: 192, offset: 512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2377, file: !2378, line: 17, baseType: !130, size: 32, offset: 704)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !448, file: !44, line: 1240, baseType: !102, size: 64, offset: 6912)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !448, file: !44, line: 1243, baseType: !328, size: 32, offset: 6976)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !448, file: !44, line: 1245, baseType: !786, size: 64, offset: 7040)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !448, file: !44, line: 1246, baseType: !786, size: 64, offset: 7104)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !448, file: !44, line: 1248, baseType: !179, size: 32, offset: 7168)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !448, file: !44, line: 1249, baseType: !3587, size: 64, offset: 7232)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 634, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !448, file: !44, line: 1252, baseType: !3590, size: 256, offset: 7296)
!3590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !342)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !448, file: !44, line: 1253, baseType: !3592, size: 128, offset: 7552)
!3592 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3593, line: 21, baseType: !3594)
!3593 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3593, line: 19, size: 128, elements: !3595)
!3595 = !{!3596}
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3594, file: !3593, line: 20, baseType: !3597, size: 128)
!3597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 128, elements: !2815)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !448, file: !44, line: 1255, baseType: !7, size: 32, offset: 7680)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !448, file: !44, line: 1261, baseType: !640, size: 256, offset: 7744)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !448, file: !44, line: 1267, baseType: !412, size: 64, offset: 8000)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !448, file: !44, line: 1269, baseType: !392, size: 64, offset: 8064)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !448, file: !44, line: 1271, baseType: !3603, size: 448, offset: 8128)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2157, line: 63, size: 448, elements: !3604)
!3604 = !{!3605, !3610, !3611, !3612, !3613, !3614, !3615}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3603, file: !2157, line: 64, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!233, !3609, !2155}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3603, file: !2157, line: 66, baseType: !3606, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3603, file: !2157, line: 69, baseType: !574, size: 64, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3603, file: !2157, line: 70, baseType: !101, size: 32, offset: 192)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3603, file: !2157, line: 71, baseType: !7, size: 32, offset: 224)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3603, file: !2157, line: 74, baseType: !256, size: 128, offset: 256)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3603, file: !2157, line: 85, baseType: !3616, size: 64, offset: 384)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !448, file: !44, line: 1274, baseType: !631, size: 64, offset: 8576)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !448, file: !44, line: 1280, baseType: !631, size: 64, offset: 8640)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !448, file: !44, line: 1283, baseType: !101, size: 32, offset: 8704)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !448, file: !44, line: 1286, baseType: !1492, size: 32, offset: 8736)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !448, file: !44, line: 1289, baseType: !1976, size: 64, offset: 8768)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !448, file: !44, line: 1290, baseType: !687, size: 64, offset: 8832)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !448, file: !44, line: 1297, baseType: !911, size: 64, offset: 8896)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !448, file: !44, line: 1304, baseType: !3625, size: 64, offset: 8960)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3626, line: 49, size: 64, elements: !3627)
!3626 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3627 = !{!3628}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3625, file: !3626, line: 50, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3626, line: 41, size: 512, align: 512, elements: !3631)
!3631 = !{!3632, !3633, !3638}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3630, file: !3626, line: 43, baseType: !356, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3630, file: !3626, line: 45, baseType: !3634, size: 192, offset: 64)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3626, line: 29, size: 192, elements: !3635)
!3635 = !{!3636, !3637}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3634, file: !3626, line: 30, baseType: !256, size: 128)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3634, file: !3626, line: 32, baseType: !574, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3630, file: !3626, line: 46, baseType: !574, size: 64, offset: 256)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !448, file: !44, line: 1305, baseType: !3625, size: 64, offset: 9024)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !448, file: !44, line: 1306, baseType: !136, size: 128, align: 64, offset: 9088)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !448, file: !44, line: 1307, baseType: !1247, size: 256, offset: 9216)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !448, file: !44, line: 1309, baseType: !640, size: 256, offset: 9472)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !448, file: !44, line: 1314, baseType: !101, size: 32, offset: 9728)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !448, file: !44, line: 1317, baseType: !356, size: 32, align: 512, offset: 10240)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !448, file: !44, line: 1318, baseType: !256, size: 128, offset: 10304)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !448, file: !44, line: 1320, baseType: !356, size: 32, offset: 10432)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !448, file: !44, line: 1321, baseType: !256, size: 128, offset: 10496)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !442, file: !443, line: 73, baseType: !101, size: 32, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !442, file: !443, line: 74, baseType: !3650, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !737, line: 42, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !394, file: !296, line: 141, baseType: !3654, size: 64, offset: 704)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DISubroutineType(types: !3656)
!3656 = !{!101, !2217, !828}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !394, file: !296, line: 142, baseType: !3658, size: 64, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!294, !294, !3661}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !295, file: !296, line: 96, baseType: !447, size: 64, offset: 832)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !295, file: !296, line: 97, baseType: !233, size: 64, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !295, file: !296, line: 98, baseType: !102, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !296, line: 100, baseType: !3667, size: 128, offset: 1024)
!3667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !296, line: 100, size: 128, elements: !3668)
!3668 = !{!3669, !3670}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3667, file: !296, line: 101, baseType: !256, size: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3667, file: !296, line: 102, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !295, file: !296, line: 104, baseType: !256, size: 128, offset: 1152)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !295, file: !296, line: 105, baseType: !256, size: 128, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !295, file: !296, line: 113, baseType: !3675, size: 128, offset: 1408)
!3675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !296, line: 109, size: 128, elements: !3676)
!3676 = !{!3677, !3678, !3679}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3675, file: !296, line: 110, baseType: !691, size: 128)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3675, file: !296, line: 111, baseType: !310, size: 128)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3675, file: !296, line: 112, baseType: !136, size: 128, align: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !288, file: !44, line: 1968, baseType: !3681, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!412, !294, !273, !3684}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3686, line: 10, size: 128, elements: !3687)
!3686 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3687 = !{!3688, !3689}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3685, file: !3686, line: 11, baseType: !1532, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3685, file: !3686, line: 12, baseType: !102, size: 64, offset: 64)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !288, file: !44, line: 1969, baseType: !3691, size: 64, offset: 128)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!101, !3650, !273, !101}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !288, file: !44, line: 1970, baseType: !3695, size: 64, offset: 192)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!121, !273, !101, !828}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !288, file: !44, line: 1972, baseType: !3699, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!101, !294, !436, !101}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !288, file: !44, line: 1974, baseType: !3703, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!101, !3650, !273, !294, !277, !828}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !288, file: !44, line: 1976, baseType: !3707, size: 64, offset: 384)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!101, !294, !273, !294}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !288, file: !44, line: 1977, baseType: !3711, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!101, !273, !294}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !288, file: !44, line: 1978, baseType: !3715, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!101, !3650, !273, !294, !412}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !288, file: !44, line: 1980, baseType: !3719, size: 64, offset: 576)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!101, !3650, !273, !294, !277}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !288, file: !44, line: 1982, baseType: !3711, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !288, file: !44, line: 1983, baseType: !3724, size: 64, offset: 704)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!101, !3650, !273, !294, !277, !452}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !288, file: !44, line: 1985, baseType: !3728, size: 64, offset: 768)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!101, !3650, !273, !294, !273, !294, !7}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !288, file: !44, line: 1987, baseType: !3732, size: 64, offset: 832)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!101, !3650, !294, !3735}
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 226, size: 640, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3750, !3759, !3760, !3765, !3766, !3767}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3736, file: !44, line: 227, baseType: !7, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3736, file: !44, line: 228, baseType: !277, size: 16, offset: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !44, line: 241, baseType: !3741, size: 32, offset: 64)
!3741 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3736, file: !44, line: 241, size: 32, elements: !3742)
!3742 = !{!3743, !3744}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3741, file: !44, line: 242, baseType: !157, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3741, file: !44, line: 243, baseType: !3745, size: 32)
!3745 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3746, line: 16, baseType: !3747)
!3746 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3746, line: 14, size: 32, elements: !3748)
!3748 = !{!3749}
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3747, file: !3746, line: 15, baseType: !162, size: 32)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !44, line: 245, baseType: !3751, size: 32, offset: 96)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3736, file: !44, line: 245, size: 32, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3751, file: !44, line: 246, baseType: !166, size: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3751, file: !44, line: 247, baseType: !3755, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3746, line: 20, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3746, line: 18, size: 32, elements: !3757)
!3757 = !{!3758}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3756, file: !3746, line: 19, baseType: !170, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3736, file: !44, line: 249, baseType: !457, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3736, file: !44, line: 250, baseType: !3761, size: 128, offset: 192)
!3761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !787, line: 13, size: 128, elements: !3762)
!3762 = !{!3763, !3764}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3761, file: !787, line: 14, baseType: !786, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3761, file: !787, line: 15, baseType: !574, size: 64, offset: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3736, file: !44, line: 251, baseType: !3761, size: 128, offset: 320)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3736, file: !44, line: 252, baseType: !3761, size: 128, offset: 448)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3736, file: !44, line: 259, baseType: !613, size: 64, offset: 576)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !288, file: !44, line: 1988, baseType: !3769, size: 64, offset: 896)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!101, !3650, !2217, !3772, !328, !7}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3774, line: 22, size: 1280, elements: !3775)
!3774 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3773, file: !3774, line: 23, baseType: !328, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3773, file: !3774, line: 24, baseType: !277, size: 16, offset: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3773, file: !3774, line: 25, baseType: !7, size: 32, offset: 64)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3773, file: !3774, line: 26, baseType: !794, size: 32, offset: 96)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3773, file: !3774, line: 27, baseType: !332, size: 64, offset: 128)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3773, file: !3774, line: 28, baseType: !332, size: 64, offset: 192)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3773, file: !3774, line: 41, baseType: !332, size: 64, offset: 256)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3773, file: !3774, line: 42, baseType: !452, size: 32, offset: 320)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3773, file: !3774, line: 43, baseType: !452, size: 32, offset: 352)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3773, file: !3774, line: 44, baseType: !157, size: 32, offset: 384)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3773, file: !3774, line: 45, baseType: !166, size: 32, offset: 416)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3773, file: !3774, line: 46, baseType: !457, size: 64, offset: 448)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3773, file: !3774, line: 47, baseType: !3761, size: 128, offset: 512)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3773, file: !3774, line: 48, baseType: !3761, size: 128, offset: 640)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3773, file: !3774, line: 49, baseType: !3761, size: 128, offset: 768)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3773, file: !3774, line: 50, baseType: !3761, size: 128, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3773, file: !3774, line: 51, baseType: !332, size: 64, offset: 1024)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3773, file: !3774, line: 52, baseType: !332, size: 64, offset: 1088)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3773, file: !3774, line: 53, baseType: !328, size: 32, offset: 1152)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3773, file: !3774, line: 54, baseType: !328, size: 32, offset: 1184)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3773, file: !3774, line: 55, baseType: !332, size: 64, offset: 1216)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !288, file: !44, line: 1990, baseType: !3798, size: 64, offset: 960)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!571, !294, !436, !230}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !288, file: !44, line: 1991, baseType: !3802, size: 64, offset: 1024)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!101, !273, !3805, !332, !332}
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 55, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !288, file: !44, line: 1993, baseType: !3808, size: 64, offset: 1088)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!101, !273, !101}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !288, file: !44, line: 1994, baseType: !3812, size: 64, offset: 1152)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!101, !273, !294, !613, !7, !277}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !288, file: !44, line: 1997, baseType: !3816, size: 64, offset: 1216)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{!101, !3650, !273, !613, !277}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !288, file: !44, line: 1999, baseType: !3820, size: 64, offset: 1280)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!121, !3650, !294, !101}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !288, file: !44, line: 2001, baseType: !3824, size: 64, offset: 1344)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!101, !3650, !294, !121, !101}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !288, file: !44, line: 2003, baseType: !3828, size: 64, offset: 1408)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!101, !3650, !294, !3831}
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !44, line: 76, flags: DIFlagFwdDecl)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !288, file: !44, line: 2005, baseType: !3834, size: 64, offset: 1472)
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!101, !294, !3831}
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !288, file: !44, line: 2006, baseType: !3838, size: 64, offset: 1536)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!3841, !273}
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !44, line: 3192, size: 192, elements: !3843)
!3843 = !{!3844, !3845}
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3842, file: !44, line: 3193, baseType: !1030, size: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3842, file: !44, line: 3194, baseType: !328, size: 32, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !274, file: !44, line: 655, baseType: !447, size: 64, offset: 448)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !274, file: !44, line: 656, baseType: !269, size: 64, offset: 512)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !274, file: !44, line: 659, baseType: !102, size: 64, offset: 576)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !274, file: !44, line: 663, baseType: !233, size: 64, offset: 640)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !44, line: 671, baseType: !3851, size: 32, offset: 704)
!3851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !44, line: 671, size: 32, elements: !3852)
!3852 = !{!3853, !3855}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3851, file: !44, line: 672, baseType: !3854, size: 32)
!3854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3851, file: !44, line: 673, baseType: !7, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !274, file: !44, line: 675, baseType: !452, size: 32, offset: 736)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !274, file: !44, line: 676, baseType: !457, size: 64, offset: 768)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !274, file: !44, line: 677, baseType: !3761, size: 128, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !274, file: !44, line: 678, baseType: !3761, size: 128, offset: 960)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !274, file: !44, line: 679, baseType: !3761, size: 128, offset: 1088)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !274, file: !44, line: 680, baseType: !356, size: 32, offset: 1216)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !274, file: !44, line: 681, baseType: !152, size: 16, offset: 1248)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !274, file: !44, line: 682, baseType: !380, size: 8, offset: 1264)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !274, file: !44, line: 683, baseType: !380, size: 8, offset: 1272)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !274, file: !44, line: 684, baseType: !2290, size: 64, offset: 1280)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !274, file: !44, line: 691, baseType: !233, size: 64, offset: 1344)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !274, file: !44, line: 692, baseType: !770, size: 320, offset: 1408)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !274, file: !44, line: 694, baseType: !233, size: 64, offset: 1728)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !274, file: !44, line: 695, baseType: !233, size: 64, offset: 1792)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !274, file: !44, line: 697, baseType: !691, size: 128, offset: 1856)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !274, file: !44, line: 698, baseType: !256, size: 128, offset: 1984)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !274, file: !44, line: 707, baseType: !256, size: 128, offset: 2112)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !274, file: !44, line: 708, baseType: !256, size: 128, offset: 2240)
!3874 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !44, line: 709, baseType: !3875, size: 128, offset: 2368)
!3875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !44, line: 709, size: 128, elements: !3876)
!3876 = !{!3877, !3878}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3875, file: !44, line: 710, baseType: !687, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3875, file: !44, line: 711, baseType: !136, size: 128, align: 64)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !274, file: !44, line: 713, baseType: !633, size: 64, offset: 2496)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !274, file: !44, line: 714, baseType: !633, size: 64, offset: 2560)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !274, file: !44, line: 715, baseType: !130, size: 32, offset: 2624)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !274, file: !44, line: 716, baseType: !130, size: 32, offset: 2656)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !274, file: !44, line: 717, baseType: !130, size: 32, offset: 2688)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !274, file: !44, line: 719, baseType: !130, size: 32, offset: 2720)
!3885 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !44, line: 721, baseType: !3886, size: 64, offset: 2752)
!3886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !44, line: 721, size: 64, elements: !3887)
!3887 = !{!3888, !3889}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3886, file: !44, line: 722, baseType: !947, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3886, file: !44, line: 723, baseType: !2044, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !274, file: !44, line: 725, baseType: !3891, size: 64, offset: 2816)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 725, flags: DIFlagFwdDecl)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !274, file: !44, line: 726, baseType: !270, size: 1536, align: 64, offset: 2880)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !274, file: !44, line: 727, baseType: !256, size: 128, offset: 4416)
!3895 = !DIDerivedType(tag: DW_TAG_member, scope: !274, file: !44, line: 728, baseType: !3896, size: 64, offset: 4544)
!3896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !274, file: !44, line: 728, size: 64, elements: !3897)
!3897 = !{!3898, !3899, !3902, !3903}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3896, file: !44, line: 729, baseType: !1439, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3896, file: !44, line: 730, baseType: !3900, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 730, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3896, file: !44, line: 731, baseType: !436, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3896, file: !44, line: 732, baseType: !7, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !274, file: !44, line: 735, baseType: !179, size: 32, offset: 4608)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !274, file: !44, line: 738, baseType: !179, size: 32, offset: 4640)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !274, file: !44, line: 739, baseType: !3587, size: 64, offset: 4672)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !274, file: !44, line: 750, baseType: !102, size: 64, offset: 4736)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !270, file: !44, line: 474, baseType: !1030, size: 128, offset: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !270, file: !44, line: 475, baseType: !770, size: 320, offset: 192)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !270, file: !44, line: 476, baseType: !187, size: 32, offset: 512)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !270, file: !44, line: 477, baseType: !130, size: 32, offset: 544)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !270, file: !44, line: 482, baseType: !2564, size: 128, offset: 576)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !270, file: !44, line: 483, baseType: !233, size: 64, offset: 704)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !270, file: !44, line: 484, baseType: !233, size: 64, offset: 768)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !270, file: !44, line: 485, baseType: !3916, size: 64, offset: 832)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3918)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 404, size: 1280, elements: !3919)
!3919 = !{!3920, !3924, !3994, !3998, !4002, !4008, !4012, !4016, !4021, !4025, !4029, !4033, !4034, !4038, !4042, !4046, !4051, !4055, !4062, !4063}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3918, file: !44, line: 405, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!101, !242, !2056}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3918, file: !44, line: 406, baseType: !3925, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!101, !613, !3928}
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !22, line: 293, size: 1536, elements: !3930)
!3930 = !{!3931, !3961, !3975}
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !22, line: 295, baseType: !3932, size: 512)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !22, line: 295, size: 512, elements: !3933)
!3933 = !{!3934, !3960}
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !22, line: 296, baseType: !3935, size: 448)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3932, file: !22, line: 296, size: 448, elements: !3936)
!3936 = !{!3937, !3938, !3947, !3948, !3949, !3958, !3959}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3935, file: !22, line: 298, baseType: !233, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !22, line: 299, baseType: !3939, size: 128, offset: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !22, line: 299, size: 128, elements: !3940)
!3940 = !{!3941, !3942}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3939, file: !22, line: 300, baseType: !256, size: 128)
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3939, file: !22, line: 302, baseType: !3943, size: 128)
!3943 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3939, file: !22, line: 302, size: 128, elements: !3944)
!3944 = !{!3945, !3946}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3943, file: !22, line: 303, baseType: !102, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3943, file: !22, line: 305, baseType: !7, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3935, file: !22, line: 310, baseType: !269, size: 64, offset: 192)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3935, file: !22, line: 311, baseType: !233, size: 64, offset: 256)
!3949 = !DIDerivedType(tag: DW_TAG_member, scope: !3935, file: !22, line: 312, baseType: !3950, size: 64, offset: 320)
!3950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3935, file: !22, line: 312, size: 64, elements: !3951)
!3951 = !{!3952, !3953}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3950, file: !22, line: 313, baseType: !102, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3950, file: !22, line: 314, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !22, line: 257, baseType: !3955)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 255, size: 64, elements: !3956)
!3956 = !{!3957}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3955, file: !22, line: 256, baseType: !233, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3935, file: !22, line: 316, baseType: !130, size: 32, offset: 384)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3935, file: !22, line: 317, baseType: !130, size: 32, offset: 416)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3932, file: !22, line: 323, baseType: !243, size: 512, align: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !22, line: 325, baseType: !3962, size: 512, offset: 512)
!3962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !22, line: 325, size: 512, elements: !3963)
!3963 = !{!3964, !3974}
!3964 = !DIDerivedType(tag: DW_TAG_member, scope: !3962, file: !22, line: 326, baseType: !3965, size: 320)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3962, file: !22, line: 326, size: 320, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3970, !3971, !3972, !3973}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3965, file: !22, line: 327, baseType: !233, size: 64)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3965, file: !22, line: 328, baseType: !233, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3965, file: !22, line: 329, baseType: !233, size: 64, offset: 128)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3965, file: !22, line: 331, baseType: !130, size: 32, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3965, file: !22, line: 332, baseType: !130, size: 32, offset: 224)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3965, file: !22, line: 333, baseType: !130, size: 32, offset: 256)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3965, file: !22, line: 335, baseType: !7, size: 32, offset: 288)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3962, file: !22, line: 339, baseType: !243, size: 512, align: 128)
!3975 = !DIDerivedType(tag: DW_TAG_member, scope: !3929, file: !22, line: 341, baseType: !3976, size: 512, offset: 1024)
!3976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3929, file: !22, line: 341, size: 512, elements: !3977)
!3977 = !{!3978, !3987, !3993}
!3978 = !DIDerivedType(tag: DW_TAG_member, scope: !3976, file: !22, line: 342, baseType: !3979, size: 384)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3976, file: !22, line: 342, size: 384, elements: !3980)
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3986}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3979, file: !22, line: 343, baseType: !233, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3979, file: !22, line: 344, baseType: !233, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3979, file: !22, line: 346, baseType: !102, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3979, file: !22, line: 347, baseType: !102, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3979, file: !22, line: 348, baseType: !102, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3979, file: !22, line: 349, baseType: !102, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, scope: !3976, file: !22, line: 352, baseType: !3988, size: 256)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3976, file: !22, line: 352, size: 256, elements: !3989)
!3989 = !{!3990, !3991, !3992}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3988, file: !22, line: 353, baseType: !233, size: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3988, file: !22, line: 354, baseType: !233, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3988, file: !22, line: 356, baseType: !256, size: 128, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3976, file: !22, line: 359, baseType: !243, size: 512, align: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3918, file: !44, line: 409, baseType: !3995, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3996, size: 64)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!101, !269, !2056}
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3918, file: !44, line: 412, baseType: !3999, size: 64, offset: 192)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!828, !269, !3928}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3918, file: !44, line: 414, baseType: !4003, size: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !4006}
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 310, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3918, file: !44, line: 416, baseType: !4009, size: 64, offset: 320)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!101, !613, !269, !457, !7, !241, !1455}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3918, file: !44, line: 419, baseType: !4013, size: 64, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{!101, !613, !269, !457, !7, !7, !242, !102}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3918, file: !44, line: 424, baseType: !4017, size: 64, offset: 448)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!4020, !269, !4020}
!4020 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !131, line: 131, baseType: !332)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3918, file: !44, line: 425, baseType: !4022, size: 64, offset: 512)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{null, !3928, !230, !230}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3918, file: !44, line: 426, baseType: !4026, size: 64, offset: 576)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DISubroutineType(types: !4028)
!4028 = !{!828, !3928, !187}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3918, file: !44, line: 427, baseType: !4030, size: 64, offset: 640)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{null, !3928}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3918, file: !44, line: 428, baseType: !966, size: 64, offset: 704)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3918, file: !44, line: 433, baseType: !4035, size: 64, offset: 768)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!101, !269, !3928, !3928, !72}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3918, file: !44, line: 435, baseType: !4039, size: 64, offset: 832)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!101, !3928}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3918, file: !44, line: 436, baseType: !4043, size: 64, offset: 896)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!828, !3928, !230, !230}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3918, file: !44, line: 438, baseType: !4047, size: 64, offset: 960)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !3928, !4050, !4050}
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3918, file: !44, line: 439, baseType: !4052, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!101, !269, !242}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3918, file: !44, line: 442, baseType: !4056, size: 64, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!101, !4059, !613, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 66, flags: DIFlagFwdDecl)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3918, file: !44, line: 444, baseType: !1447, size: 64, offset: 1152)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3918, file: !44, line: 445, baseType: !4064, size: 64, offset: 1216)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!101, !969, !991}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !270, file: !44, line: 486, baseType: !233, size: 64, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !270, file: !44, line: 487, baseType: !770, size: 320, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !270, file: !44, line: 488, baseType: !1492, size: 32, offset: 1280)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !270, file: !44, line: 489, baseType: !356, size: 32, offset: 1312)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !270, file: !44, line: 490, baseType: !256, size: 128, offset: 1344)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !270, file: !44, line: 491, baseType: !102, size: 64, offset: 1472)
!4073 = !DIDerivedType(tag: DW_TAG_member, scope: !250, file: !22, line: 107, baseType: !4074, size: 64, offset: 192)
!4074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !250, file: !22, line: 107, size: 64, elements: !4075)
!4075 = !{!4076, !4077}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4074, file: !22, line: 108, baseType: !233, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !4074, file: !22, line: 109, baseType: !233, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !250, file: !22, line: 117, baseType: !233, size: 64, offset: 256)
!4079 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 119, baseType: !4080, size: 320)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 119, size: 320, elements: !4081)
!4081 = !{!4082, !4083, !4086, !4087, !4088}
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !4080, file: !22, line: 124, baseType: !233, size: 64)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !4080, file: !22, line: 125, baseType: !4084, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !22, line: 125, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !4080, file: !22, line: 126, baseType: !233, size: 64, offset: 128)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !4080, file: !22, line: 127, baseType: !233, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !22, line: 128, baseType: !4089, size: 64, offset: 256)
!4089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !22, line: 128, size: 64, elements: !4090)
!4090 = !{!4091, !4092}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !4089, file: !22, line: 133, baseType: !233, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !4089, file: !22, line: 138, baseType: !631, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 141, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 141, size: 64, elements: !4095)
!4095 = !{!4096}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !4094, file: !22, line: 142, baseType: !233, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, scope: !247, file: !22, line: 144, baseType: !4098, size: 128)
!4098 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !247, file: !22, line: 144, size: 128, elements: !4099)
!4099 = !{!4100, !4171}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !4098, file: !22, line: 146, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !80, line: 126, size: 1216, elements: !4103)
!4103 = !{!4104, !4114, !4135, !4136, !4137, !4138, !4139, !4153, !4154, !4155}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !4102, file: !80, line: 127, baseType: !4105, size: 384)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !80, line: 21, size: 384, elements: !4106)
!4106 = !{!4107, !4108, !4110, !4111, !4112, !4113}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !4105, file: !80, line: 22, baseType: !233, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !4105, file: !80, line: 23, baseType: !4109, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !4105, file: !80, line: 24, baseType: !4109, size: 64, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4105, file: !80, line: 25, baseType: !233, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4105, file: !80, line: 26, baseType: !233, size: 64, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4105, file: !80, line: 27, baseType: !233, size: 64, offset: 320)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4102, file: !80, line: 128, baseType: !4115, size: 128, offset: 384)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !4116, line: 105, size: 128, elements: !4117)
!4116 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!4117 = !{!4118, !4119}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !4115, file: !4116, line: 110, baseType: !233, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4115, file: !4116, line: 118, baseType: !4120, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !4116, line: 95, size: 448, elements: !4122)
!4122 = !{!4123, !4124, !4130, !4131, !4132, !4133, !4134}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4121, file: !4116, line: 96, baseType: !631, size: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4121, file: !4116, line: 97, baseType: !4125, size: 64, offset: 64)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !4116, line: 60, baseType: !4127)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{null, !4129}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !4121, file: !4116, line: 98, baseType: !4125, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !4121, file: !4116, line: 99, baseType: !828, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !4121, file: !4116, line: 100, baseType: !828, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4121, file: !4116, line: 101, baseType: !136, size: 128, align: 64, offset: 256)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4121, file: !4116, line: 102, baseType: !4129, size: 64, offset: 384)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !4102, file: !80, line: 129, baseType: !1668, size: 256, offset: 512)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4102, file: !80, line: 130, baseType: !79, size: 32, offset: 768)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4102, file: !80, line: 131, baseType: !7, size: 32, offset: 800)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !4102, file: !80, line: 132, baseType: !233, size: 64, offset: 832)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4102, file: !80, line: 133, baseType: !4140, size: 64, offset: 896)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4142)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !80, line: 77, size: 192, elements: !4143)
!4143 = !{!4144, !4148, !4149}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !4142, file: !80, line: 83, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{null, !242}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !4142, file: !80, line: 89, baseType: !1313, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !4142, file: !80, line: 100, baseType: !4150, size: 64, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!101, !4101, !233, !233, !101}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4102, file: !80, line: 134, baseType: !102, size: 64, offset: 960)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !4102, file: !80, line: 135, baseType: !101, size: 32, offset: 1024)
!4155 = !DIDerivedType(tag: DW_TAG_member, scope: !4102, file: !80, line: 136, baseType: !4156, size: 128, offset: 1088)
!4156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4102, file: !80, line: 136, size: 128, elements: !4157)
!4157 = !{!4158, !4164}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !4156, file: !80, line: 137, baseType: !4159, size: 128)
!4159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !4160, line: 6, size: 128, elements: !4161)
!4160 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!4161 = !{!4162, !4163}
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4159, file: !4160, line: 7, baseType: !332, size: 64)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4159, file: !4160, line: 8, baseType: !332, size: 64, offset: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, scope: !4156, file: !80, line: 138, baseType: !4165)
!4165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4156, file: !80, line: 138, elements: !4166)
!4166 = !{!4167, !4169}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !4165, file: !80, line: 138, baseType: !4168)
!4168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4165, file: !80, line: 138, elements: !1113)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !4165, file: !80, line: 138, baseType: !4170)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4159, elements: !172)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !4098, file: !22, line: 147, baseType: !102, size: 64, offset: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !247, file: !22, line: 161, baseType: !136, size: 128, align: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !22, line: 164, baseType: !4174, size: 32, offset: 384)
!4174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !22, line: 164, size: 32, elements: !4175)
!4175 = !{!4176, !4177}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4174, file: !22, line: 169, baseType: !130, size: 32)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !4174, file: !22, line: 177, baseType: !7, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !243, file: !22, line: 181, baseType: !130, size: 32, offset: 416)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "page_base", scope: !221, file: !108, line: 62, baseType: !7, size: 32, offset: 384)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "page_len", scope: !221, file: !108, line: 63, baseType: !7, size: 32, offset: 416)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !108, line: 64, baseType: !7, size: 32, offset: 448)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !221, file: !108, line: 69, baseType: !7, size: 32, offset: 480)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !221, file: !108, line: 70, baseType: !7, size: 32, offset: 512)
!4184 = !{!4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4194, !4195, !4196, !4202, !4203}
!4185 = !DILocalVariable(name: "buf", arg: 1, scope: !217, file: !3, line: 92, type: !220)
!4186 = !DILocalVariable(name: "base", arg: 2, scope: !217, file: !3, line: 92, type: !7)
!4187 = !DILocalVariable(name: "inode", arg: 3, scope: !217, file: !3, line: 92, type: !273)
!4188 = !DILocalVariable(name: "acl", arg: 4, scope: !217, file: !3, line: 93, type: !121)
!4189 = !DILocalVariable(name: "encode_entries", arg: 5, scope: !217, file: !3, line: 93, type: !101)
!4190 = !DILocalVariable(name: "typeflag", arg: 6, scope: !217, file: !3, line: 93, type: !101)
!4191 = !DILocalVariable(name: "entries", scope: !217, file: !3, line: 95, type: !101)
!4192 = !DILocalVariable(name: "__UNIQUE_ID___x294", scope: !4193, file: !3, line: 95, type: !101)
!4193 = distinct !DILexicalBlock(scope: !217, file: !3, line: 95, column: 40)
!4194 = !DILocalVariable(name: "__UNIQUE_ID___y295", scope: !4193, file: !3, line: 95, type: !101)
!4195 = !DILocalVariable(name: "nfsacl_desc", scope: !217, file: !3, line: 96, type: !104)
!4196 = !DILocalVariable(name: "aclbuf", scope: !217, file: !3, line: 107, type: !4197)
!4197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfsacl_simple_acl", file: !3, line: 43, size: 512, elements: !4198)
!4198 = !{!4199, !4200}
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "acl", scope: !4197, file: !3, line: 44, baseType: !122, size: 256)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "ace", scope: !4197, file: !3, line: 45, baseType: !4201, size: 256, offset: 256)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !696)
!4202 = !DILocalVariable(name: "err", scope: !217, file: !3, line: 108, type: !101)
!4203 = !DILocalVariable(name: "acl2", scope: !4204, file: !3, line: 114, type: !121)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 113, column: 50)
!4205 = distinct !DILexicalBlock(scope: !217, file: !3, line: 113, column: 6)
!4206 = !DILocation(line: 92, column: 35, scope: !217)
!4207 = !DILocation(line: 92, column: 53, scope: !217)
!4208 = !DILocation(line: 92, column: 73, scope: !217)
!4209 = !DILocation(line: 93, column: 23, scope: !217)
!4210 = !DILocation(line: 93, column: 32, scope: !217)
!4211 = !DILocation(line: 93, column: 52, scope: !217)
!4212 = !DILocation(line: 95, column: 2, scope: !217)
!4213 = !DILocation(line: 95, column: 6, scope: !217)
!4214 = !DILocation(line: 95, column: 17, scope: !217)
!4215 = !DILocation(line: 95, column: 21, scope: !217)
!4216 = !DILocation(line: 95, column: 24, scope: !217)
!4217 = !DILocation(line: 95, column: 29, scope: !217)
!4218 = !DILocation(line: 95, column: 16, scope: !217)
!4219 = !DILocation(line: 95, column: 40, scope: !4193)
!4220 = !DILocation(line: 95, column: 40, scope: !217)
!4221 = !DILocation(line: 96, column: 2, scope: !217)
!4222 = !DILocation(line: 96, column: 28, scope: !217)
!4223 = !DILocation(line: 96, column: 42, scope: !217)
!4224 = !DILocation(line: 97, column: 11, scope: !217)
!4225 = !DILocation(line: 99, column: 17, scope: !217)
!4226 = !DILocation(line: 99, column: 34, scope: !217)
!4227 = !DILocation(line: 102, column: 10, scope: !217)
!4228 = !DILocation(line: 103, column: 15, scope: !217)
!4229 = !DILocation(line: 104, column: 10, scope: !217)
!4230 = !DILocation(line: 104, column: 17, scope: !217)
!4231 = !DILocation(line: 105, column: 10, scope: !217)
!4232 = !DILocation(line: 105, column: 17, scope: !217)
!4233 = !DILocation(line: 107, column: 2, scope: !217)
!4234 = !DILocation(line: 107, column: 27, scope: !217)
!4235 = !DILocation(line: 108, column: 2, scope: !217)
!4236 = !DILocation(line: 108, column: 6, scope: !217)
!4237 = !DILocation(line: 110, column: 6, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !217, file: !3, line: 110, column: 6)
!4239 = !DILocation(line: 110, column: 14, scope: !4238)
!4240 = !DILocation(line: 110, column: 36, scope: !4238)
!4241 = !DILocation(line: 111, column: 22, scope: !4238)
!4242 = !DILocation(line: 111, column: 27, scope: !4238)
!4243 = !DILocation(line: 111, column: 33, scope: !4238)
!4244 = !DILocation(line: 111, column: 6, scope: !4238)
!4245 = !DILocation(line: 110, column: 6, scope: !217)
!4246 = !DILocation(line: 112, column: 3, scope: !4238)
!4247 = !DILocation(line: 113, column: 6, scope: !4205)
!4248 = !DILocation(line: 113, column: 21, scope: !4205)
!4249 = !DILocation(line: 113, column: 24, scope: !4205)
!4250 = !DILocation(line: 113, column: 28, scope: !4205)
!4251 = !DILocation(line: 113, column: 31, scope: !4205)
!4252 = !DILocation(line: 113, column: 36, scope: !4205)
!4253 = !DILocation(line: 113, column: 44, scope: !4205)
!4254 = !DILocation(line: 113, column: 6, scope: !217)
!4255 = !DILocation(line: 114, column: 3, scope: !4204)
!4256 = !DILocation(line: 114, column: 21, scope: !4204)
!4257 = !DILocation(line: 114, column: 36, scope: !4204)
!4258 = !DILocation(line: 120, column: 18, scope: !4204)
!4259 = !DILocation(line: 120, column: 3, scope: !4204)
!4260 = !DILocation(line: 124, column: 3, scope: !4204)
!4261 = !DILocation(line: 124, column: 9, scope: !4204)
!4262 = !DILocation(line: 124, column: 24, scope: !4204)
!4263 = !DILocation(line: 124, column: 29, scope: !4204)
!4264 = !DILocation(line: 125, column: 3, scope: !4204)
!4265 = !DILocation(line: 125, column: 9, scope: !4204)
!4266 = !DILocation(line: 125, column: 24, scope: !4204)
!4267 = !DILocation(line: 125, column: 29, scope: !4204)
!4268 = !DILocation(line: 126, column: 3, scope: !4204)
!4269 = !DILocation(line: 126, column: 9, scope: !4204)
!4270 = !DILocation(line: 126, column: 24, scope: !4204)
!4271 = !DILocation(line: 126, column: 29, scope: !4204)
!4272 = !DILocation(line: 127, column: 3, scope: !4204)
!4273 = !DILocation(line: 127, column: 9, scope: !4204)
!4274 = !DILocation(line: 127, column: 22, scope: !4204)
!4275 = !DILocation(line: 127, column: 28, scope: !4204)
!4276 = !DILocation(line: 128, column: 3, scope: !4204)
!4277 = !DILocation(line: 128, column: 9, scope: !4204)
!4278 = !DILocation(line: 128, column: 24, scope: !4204)
!4279 = !DILocation(line: 128, column: 29, scope: !4204)
!4280 = !DILocation(line: 129, column: 21, scope: !4204)
!4281 = !DILocation(line: 129, column: 15, scope: !4204)
!4282 = !DILocation(line: 129, column: 19, scope: !4204)
!4283 = !DILocation(line: 130, column: 2, scope: !4205)
!4284 = !DILocation(line: 130, column: 2, scope: !4204)
!4285 = !DILocation(line: 131, column: 26, scope: !217)
!4286 = !DILocation(line: 131, column: 31, scope: !217)
!4287 = !DILocation(line: 131, column: 36, scope: !217)
!4288 = !DILocation(line: 131, column: 54, scope: !217)
!4289 = !DILocation(line: 131, column: 8, scope: !217)
!4290 = !DILocation(line: 131, column: 6, scope: !217)
!4291 = !DILocation(line: 132, column: 7, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !217, file: !3, line: 132, column: 6)
!4293 = !DILocation(line: 132, column: 6, scope: !217)
!4294 = !DILocation(line: 133, column: 25, scope: !4292)
!4295 = !DILocation(line: 133, column: 30, scope: !4292)
!4296 = !DILocation(line: 134, column: 18, scope: !4292)
!4297 = !DILocation(line: 134, column: 23, scope: !4292)
!4298 = !DILocation(line: 133, column: 40, scope: !4292)
!4299 = !DILocation(line: 133, column: 11, scope: !4292)
!4300 = !DILocation(line: 133, column: 7, scope: !4292)
!4301 = !DILocation(line: 133, column: 3, scope: !4292)
!4302 = !DILocation(line: 135, column: 9, scope: !217)
!4303 = !DILocation(line: 135, column: 2, scope: !217)
!4304 = !DILocation(line: 136, column: 1, scope: !217)
!4305 = distinct !DISubprogram(name: "xdr_nfsace_encode", scope: !3, file: !3, line: 49, type: !116, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4306)
!4306 = !{!4307, !4308, !4309, !4310, !4312}
!4307 = !DILocalVariable(name: "desc", arg: 1, scope: !4305, file: !3, line: 49, type: !118)
!4308 = !DILocalVariable(name: "elem", arg: 2, scope: !4305, file: !3, line: 49, type: !102)
!4309 = !DILocalVariable(name: "nfsacl_desc", scope: !4305, file: !3, line: 51, type: !103)
!4310 = !DILocalVariable(name: "p", scope: !4305, file: !3, line: 53, type: !4311)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!4312 = !DILocalVariable(name: "entry", scope: !4305, file: !3, line: 55, type: !4313)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!4314 = !DILocation(line: 49, column: 43, scope: !4305)
!4315 = !DILocation(line: 49, column: 55, scope: !4305)
!4316 = !DILocation(line: 51, column: 2, scope: !4305)
!4317 = !DILocation(line: 51, column: 29, scope: !4305)
!4318 = !DILocation(line: 52, column: 33, scope: !4305)
!4319 = !DILocation(line: 53, column: 2, scope: !4305)
!4320 = !DILocation(line: 53, column: 10, scope: !4305)
!4321 = !DILocation(line: 53, column: 14, scope: !4305)
!4322 = !DILocation(line: 55, column: 2, scope: !4305)
!4323 = !DILocation(line: 55, column: 26, scope: !4305)
!4324 = !DILocation(line: 56, column: 4, scope: !4305)
!4325 = !DILocation(line: 56, column: 17, scope: !4305)
!4326 = !DILocation(line: 56, column: 22, scope: !4305)
!4327 = !DILocation(line: 56, column: 32, scope: !4305)
!4328 = !DILocation(line: 56, column: 45, scope: !4305)
!4329 = !DILocation(line: 56, column: 50, scope: !4305)
!4330 = !DILocation(line: 58, column: 9, scope: !4305)
!4331 = !DILocation(line: 58, column: 4, scope: !4305)
!4332 = !DILocation(line: 58, column: 7, scope: !4305)
!4333 = !DILocation(line: 59, column: 9, scope: !4305)
!4334 = !DILocation(line: 59, column: 16, scope: !4305)
!4335 = !DILocation(line: 59, column: 2, scope: !4305)
!4336 = !DILocation(line: 61, column: 11, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4305, file: !3, line: 59, column: 23)
!4338 = !DILocation(line: 61, column: 6, scope: !4337)
!4339 = !DILocation(line: 61, column: 9, scope: !4337)
!4340 = !DILocation(line: 62, column: 4, scope: !4337)
!4341 = !DILocation(line: 64, column: 11, scope: !4337)
!4342 = !DILocation(line: 64, column: 6, scope: !4337)
!4343 = !DILocation(line: 64, column: 9, scope: !4337)
!4344 = !DILocation(line: 65, column: 4, scope: !4337)
!4345 = !DILocation(line: 67, column: 11, scope: !4337)
!4346 = !DILocation(line: 67, column: 6, scope: !4337)
!4347 = !DILocation(line: 67, column: 9, scope: !4337)
!4348 = !DILocation(line: 68, column: 4, scope: !4337)
!4349 = !DILocation(line: 70, column: 11, scope: !4337)
!4350 = !DILocation(line: 70, column: 6, scope: !4337)
!4351 = !DILocation(line: 70, column: 9, scope: !4337)
!4352 = !DILocation(line: 71, column: 4, scope: !4337)
!4353 = !DILocation(line: 73, column: 6, scope: !4337)
!4354 = !DILocation(line: 73, column: 9, scope: !4337)
!4355 = !DILocation(line: 74, column: 4, scope: !4337)
!4356 = !DILocation(line: 76, column: 9, scope: !4305)
!4357 = !DILocation(line: 76, column: 4, scope: !4305)
!4358 = !DILocation(line: 76, column: 7, scope: !4305)
!4359 = !DILocation(line: 78, column: 1, scope: !4305)
!4360 = !DILocation(line: 77, column: 2, scope: !4305)
!4361 = !DISubprogram(name: "xdr_encode_word", scope: !108, file: !108, line: 199, type: !4362, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!101, !4364, !7, !328}
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!4366 = !DISubprogram(name: "posix_acl_init", scope: !123, file: !123, line: 64, type: !4367, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{null, !121, !101}
!4369 = !DISubprogram(name: "xdr_encode_array2", scope: !108, file: !108, line: 213, type: !4370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!101, !4364, !7, !118}
!4372 = distinct !DISubprogram(name: "nfs_stream_encode_acl", scope: !3, file: !3, line: 152, type: !4373, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4390)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!828, !4375, !273, !121, !101, !101}
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_stream", file: !108, line: 221, size: 640, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4383, !4384, !4385, !4386, !4387}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4376, file: !108, line: 222, baseType: !4311, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4376, file: !108, line: 223, baseType: !220, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4376, file: !108, line: 225, baseType: !4311, size: 64, offset: 128)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !4376, file: !108, line: 226, baseType: !4382, size: 64, offset: 192)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !4376, file: !108, line: 227, baseType: !225, size: 128, offset: 256)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "page_ptr", scope: !4376, file: !108, line: 228, baseType: !241, size: 64, offset: 384)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "page_kaddr", scope: !4376, file: !108, line: 229, baseType: !102, size: 64, offset: 448)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "nwords", scope: !4376, file: !108, line: 230, baseType: !7, size: 32, offset: 512)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "rqst", scope: !4376, file: !108, line: 232, baseType: !4388, size: 64, offset: 576)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "rpc_rqst", file: !108, line: 20, flags: DIFlagFwdDecl)
!4390 = !{!4391, !4392, !4393, !4394, !4395, !4396, !4398, !4399, !4401, !4402, !4403, !4404, !4405, !4406}
!4391 = !DILocalVariable(name: "xdr", arg: 1, scope: !4372, file: !3, line: 152, type: !4375)
!4392 = !DILocalVariable(name: "inode", arg: 2, scope: !4372, file: !3, line: 152, type: !273)
!4393 = !DILocalVariable(name: "acl", arg: 3, scope: !4372, file: !3, line: 153, type: !121)
!4394 = !DILocalVariable(name: "encode_entries", arg: 4, scope: !4372, file: !3, line: 153, type: !101)
!4395 = !DILocalVariable(name: "typeflag", arg: 5, scope: !4372, file: !3, line: 154, type: !101)
!4396 = !DILocalVariable(name: "elem_size", scope: !4372, file: !3, line: 156, type: !4397)
!4397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!4398 = !DILocalVariable(name: "entries", scope: !4372, file: !3, line: 157, type: !328)
!4399 = !DILocalVariable(name: "__UNIQUE_ID___x297", scope: !4400, file: !3, line: 157, type: !101)
!4400 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 157, column: 40)
!4401 = !DILocalVariable(name: "__UNIQUE_ID___y298", scope: !4400, file: !3, line: 157, type: !101)
!4402 = !DILocalVariable(name: "nfsacl_desc", scope: !4372, file: !3, line: 158, type: !104)
!4403 = !DILocalVariable(name: "aclbuf", scope: !4372, file: !3, line: 169, type: !4197)
!4404 = !DILocalVariable(name: "base", scope: !4372, file: !3, line: 170, type: !7)
!4405 = !DILocalVariable(name: "err", scope: !4372, file: !3, line: 171, type: !101)
!4406 = !DILocalVariable(name: "acl2", scope: !4407, file: !3, line: 179, type: !121)
!4407 = distinct !DILexicalBlock(scope: !4408, file: !3, line: 178, column: 50)
!4408 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 178, column: 6)
!4409 = !DILocation(line: 152, column: 47, scope: !4372)
!4410 = !DILocation(line: 152, column: 66, scope: !4372)
!4411 = !DILocation(line: 153, column: 25, scope: !4372)
!4412 = !DILocation(line: 153, column: 34, scope: !4372)
!4413 = !DILocation(line: 154, column: 11, scope: !4372)
!4414 = !DILocation(line: 156, column: 2, scope: !4372)
!4415 = !DILocation(line: 156, column: 15, scope: !4372)
!4416 = !DILocation(line: 157, column: 2, scope: !4372)
!4417 = !DILocation(line: 157, column: 6, scope: !4372)
!4418 = !DILocation(line: 157, column: 17, scope: !4372)
!4419 = !DILocation(line: 157, column: 21, scope: !4372)
!4420 = !DILocation(line: 157, column: 24, scope: !4372)
!4421 = !DILocation(line: 157, column: 29, scope: !4372)
!4422 = !DILocation(line: 157, column: 16, scope: !4372)
!4423 = !DILocation(line: 157, column: 40, scope: !4400)
!4424 = !DILocation(line: 157, column: 40, scope: !4372)
!4425 = !DILocation(line: 158, column: 2, scope: !4372)
!4426 = !DILocation(line: 158, column: 28, scope: !4372)
!4427 = !DILocation(line: 158, column: 42, scope: !4372)
!4428 = !DILocation(line: 159, column: 11, scope: !4372)
!4429 = !DILocation(line: 161, column: 17, scope: !4372)
!4430 = !DILocation(line: 161, column: 34, scope: !4372)
!4431 = !DILocation(line: 164, column: 10, scope: !4372)
!4432 = !DILocation(line: 165, column: 15, scope: !4372)
!4433 = !DILocation(line: 166, column: 10, scope: !4372)
!4434 = !DILocation(line: 166, column: 17, scope: !4372)
!4435 = !DILocation(line: 167, column: 10, scope: !4372)
!4436 = !DILocation(line: 167, column: 17, scope: !4372)
!4437 = !DILocation(line: 169, column: 2, scope: !4372)
!4438 = !DILocation(line: 169, column: 27, scope: !4372)
!4439 = !DILocation(line: 170, column: 2, scope: !4372)
!4440 = !DILocation(line: 170, column: 15, scope: !4372)
!4441 = !DILocation(line: 171, column: 2, scope: !4372)
!4442 = !DILocation(line: 171, column: 6, scope: !4372)
!4443 = !DILocation(line: 173, column: 6, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 173, column: 6)
!4445 = !DILocation(line: 173, column: 14, scope: !4444)
!4446 = !DILocation(line: 173, column: 6, scope: !4372)
!4447 = !DILocation(line: 174, column: 3, scope: !4444)
!4448 = !DILocation(line: 175, column: 28, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 175, column: 6)
!4450 = !DILocation(line: 175, column: 33, scope: !4449)
!4451 = !DILocation(line: 175, column: 6, scope: !4449)
!4452 = !DILocation(line: 175, column: 42, scope: !4449)
!4453 = !DILocation(line: 175, column: 6, scope: !4372)
!4454 = !DILocation(line: 176, column: 3, scope: !4449)
!4455 = !DILocation(line: 178, column: 6, scope: !4408)
!4456 = !DILocation(line: 178, column: 21, scope: !4408)
!4457 = !DILocation(line: 178, column: 24, scope: !4408)
!4458 = !DILocation(line: 178, column: 28, scope: !4408)
!4459 = !DILocation(line: 178, column: 31, scope: !4408)
!4460 = !DILocation(line: 178, column: 36, scope: !4408)
!4461 = !DILocation(line: 178, column: 44, scope: !4408)
!4462 = !DILocation(line: 178, column: 6, scope: !4372)
!4463 = !DILocation(line: 179, column: 3, scope: !4407)
!4464 = !DILocation(line: 179, column: 21, scope: !4407)
!4465 = !DILocation(line: 179, column: 36, scope: !4407)
!4466 = !DILocation(line: 185, column: 18, scope: !4407)
!4467 = !DILocation(line: 185, column: 3, scope: !4407)
!4468 = !DILocation(line: 189, column: 3, scope: !4407)
!4469 = !DILocation(line: 189, column: 9, scope: !4407)
!4470 = !DILocation(line: 189, column: 24, scope: !4407)
!4471 = !DILocation(line: 189, column: 29, scope: !4407)
!4472 = !DILocation(line: 190, column: 3, scope: !4407)
!4473 = !DILocation(line: 190, column: 9, scope: !4407)
!4474 = !DILocation(line: 190, column: 24, scope: !4407)
!4475 = !DILocation(line: 190, column: 29, scope: !4407)
!4476 = !DILocation(line: 191, column: 3, scope: !4407)
!4477 = !DILocation(line: 191, column: 9, scope: !4407)
!4478 = !DILocation(line: 191, column: 24, scope: !4407)
!4479 = !DILocation(line: 191, column: 29, scope: !4407)
!4480 = !DILocation(line: 192, column: 3, scope: !4407)
!4481 = !DILocation(line: 192, column: 9, scope: !4407)
!4482 = !DILocation(line: 192, column: 22, scope: !4407)
!4483 = !DILocation(line: 192, column: 28, scope: !4407)
!4484 = !DILocation(line: 193, column: 3, scope: !4407)
!4485 = !DILocation(line: 193, column: 9, scope: !4407)
!4486 = !DILocation(line: 193, column: 24, scope: !4407)
!4487 = !DILocation(line: 193, column: 29, scope: !4407)
!4488 = !DILocation(line: 194, column: 21, scope: !4407)
!4489 = !DILocation(line: 194, column: 15, scope: !4407)
!4490 = !DILocation(line: 194, column: 19, scope: !4407)
!4491 = !DILocation(line: 195, column: 2, scope: !4408)
!4492 = !DILocation(line: 195, column: 2, scope: !4407)
!4493 = !DILocation(line: 197, column: 24, scope: !4372)
!4494 = !DILocation(line: 197, column: 9, scope: !4372)
!4495 = !DILocation(line: 197, column: 7, scope: !4372)
!4496 = !DILocation(line: 198, column: 25, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 198, column: 6)
!4498 = !DILocation(line: 199, column: 35, scope: !4497)
!4499 = !DILocation(line: 199, column: 40, scope: !4497)
!4500 = !DILocation(line: 199, column: 23, scope: !4497)
!4501 = !DILocation(line: 199, column: 21, scope: !4497)
!4502 = !DILocation(line: 198, column: 39, scope: !4497)
!4503 = !DILocation(line: 198, column: 7, scope: !4497)
!4504 = !DILocation(line: 198, column: 6, scope: !4372)
!4505 = !DILocation(line: 200, column: 3, scope: !4497)
!4506 = !DILocation(line: 201, column: 26, scope: !4372)
!4507 = !DILocation(line: 201, column: 31, scope: !4372)
!4508 = !DILocation(line: 201, column: 36, scope: !4372)
!4509 = !DILocation(line: 201, column: 55, scope: !4372)
!4510 = !DILocation(line: 201, column: 8, scope: !4372)
!4511 = !DILocation(line: 201, column: 6, scope: !4372)
!4512 = !DILocation(line: 202, column: 6, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 202, column: 6)
!4514 = !DILocation(line: 202, column: 6, scope: !4372)
!4515 = !DILocation(line: 203, column: 3, scope: !4513)
!4516 = !DILocation(line: 205, column: 2, scope: !4372)
!4517 = !DILocation(line: 206, column: 1, scope: !4372)
!4518 = distinct !DISubprogram(name: "xdr_stream_encode_u32", scope: !108, file: !108, line: 469, type: !4519, scopeLine: 470, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4521)
!4519 = !DISubroutineType(types: !4520)
!4520 = !{!571, !4375, !179}
!4521 = !{!4522, !4523, !4524, !4525}
!4522 = !DILocalVariable(name: "xdr", arg: 1, scope: !4518, file: !108, line: 469, type: !4375)
!4523 = !DILocalVariable(name: "n", arg: 2, scope: !4518, file: !108, line: 469, type: !179)
!4524 = !DILocalVariable(name: "len", scope: !4518, file: !108, line: 471, type: !4397)
!4525 = !DILocalVariable(name: "p", scope: !4518, file: !108, line: 472, type: !4311)
!4526 = !DILocation(line: 469, column: 42, scope: !4518)
!4527 = !DILocation(line: 469, column: 53, scope: !4518)
!4528 = !DILocation(line: 471, column: 2, scope: !4518)
!4529 = !DILocation(line: 471, column: 15, scope: !4518)
!4530 = !DILocation(line: 472, column: 2, scope: !4518)
!4531 = !DILocation(line: 472, column: 10, scope: !4518)
!4532 = !DILocation(line: 472, column: 32, scope: !4518)
!4533 = !DILocation(line: 472, column: 14, scope: !4518)
!4534 = !DILocation(line: 474, column: 6, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4518, file: !108, line: 474, column: 6)
!4536 = !DILocation(line: 474, column: 6, scope: !4518)
!4537 = !DILocation(line: 475, column: 3, scope: !4535)
!4538 = !DILocation(line: 476, column: 7, scope: !4518)
!4539 = !DILocation(line: 476, column: 3, scope: !4518)
!4540 = !DILocation(line: 476, column: 5, scope: !4518)
!4541 = !DILocation(line: 477, column: 2, scope: !4518)
!4542 = !DILocation(line: 478, column: 1, scope: !4518)
!4543 = !DISubprogram(name: "xdr_stream_pos", scope: !108, file: !108, line: 255, type: !4544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4544 = !DISubroutineType(types: !4545)
!4545 = !{!7, !4546}
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4376)
!4548 = !DISubprogram(name: "xdr_reserve_space", scope: !108, file: !108, line: 247, type: !4549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!4311, !4375, !230}
!4551 = distinct !DISubprogram(name: "nfsacl_decode", scope: !3, file: !3, line: 336, type: !4552, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4555)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!101, !220, !7, !1766, !4554}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!4555 = !{!4556, !4557, !4558, !4559, !4560, !4561, !4562}
!4556 = !DILocalVariable(name: "buf", arg: 1, scope: !4551, file: !3, line: 336, type: !220)
!4557 = !DILocalVariable(name: "base", arg: 2, scope: !4551, file: !3, line: 336, type: !7)
!4558 = !DILocalVariable(name: "aclcnt", arg: 3, scope: !4551, file: !3, line: 336, type: !1766)
!4559 = !DILocalVariable(name: "pacl", arg: 4, scope: !4551, file: !3, line: 337, type: !4554)
!4560 = !DILocalVariable(name: "nfsacl_desc", scope: !4551, file: !3, line: 339, type: !182)
!4561 = !DILocalVariable(name: "entries", scope: !4551, file: !3, line: 345, type: !328)
!4562 = !DILocalVariable(name: "err", scope: !4551, file: !3, line: 346, type: !101)
!4563 = !DILocation(line: 336, column: 35, scope: !4551)
!4564 = !DILocation(line: 336, column: 53, scope: !4551)
!4565 = !DILocation(line: 336, column: 73, scope: !4551)
!4566 = !DILocation(line: 337, column: 24, scope: !4551)
!4567 = !DILocation(line: 339, column: 2, scope: !4551)
!4568 = !DILocation(line: 339, column: 28, scope: !4551)
!4569 = !DILocation(line: 339, column: 42, scope: !4551)
!4570 = !DILocation(line: 340, column: 11, scope: !4551)
!4571 = !DILocation(line: 342, column: 13, scope: !4551)
!4572 = !DILocation(line: 345, column: 2, scope: !4551)
!4573 = !DILocation(line: 345, column: 6, scope: !4551)
!4574 = !DILocation(line: 346, column: 2, scope: !4551)
!4575 = !DILocation(line: 346, column: 6, scope: !4551)
!4576 = !DILocation(line: 348, column: 22, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 348, column: 6)
!4578 = !DILocation(line: 348, column: 27, scope: !4577)
!4579 = !DILocation(line: 348, column: 6, scope: !4577)
!4580 = !DILocation(line: 348, column: 43, scope: !4577)
!4581 = !DILocation(line: 349, column: 6, scope: !4577)
!4582 = !DILocation(line: 349, column: 14, scope: !4577)
!4583 = !DILocation(line: 348, column: 6, scope: !4551)
!4584 = !DILocation(line: 350, column: 3, scope: !4577)
!4585 = !DILocation(line: 351, column: 34, scope: !4551)
!4586 = !DILocation(line: 351, column: 14, scope: !4551)
!4587 = !DILocation(line: 351, column: 19, scope: !4551)
!4588 = !DILocation(line: 351, column: 32, scope: !4551)
!4589 = !DILocation(line: 352, column: 26, scope: !4551)
!4590 = !DILocation(line: 352, column: 31, scope: !4551)
!4591 = !DILocation(line: 352, column: 36, scope: !4551)
!4592 = !DILocation(line: 352, column: 54, scope: !4551)
!4593 = !DILocation(line: 352, column: 8, scope: !4551)
!4594 = !DILocation(line: 352, column: 6, scope: !4551)
!4595 = !DILocation(line: 353, column: 6, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 353, column: 6)
!4597 = !DILocation(line: 353, column: 6, scope: !4551)
!4598 = !DILocation(line: 354, column: 10, scope: !4596)
!4599 = !DILocation(line: 354, column: 3, scope: !4596)
!4600 = !DILocation(line: 355, column: 6, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 355, column: 6)
!4602 = !DILocation(line: 355, column: 6, scope: !4551)
!4603 = !DILocation(line: 356, column: 7, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 356, column: 7)
!4605 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 355, column: 12)
!4606 = !DILocation(line: 356, column: 30, scope: !4604)
!4607 = !DILocation(line: 356, column: 35, scope: !4604)
!4608 = !DILocation(line: 356, column: 15, scope: !4604)
!4609 = !DILocation(line: 356, column: 45, scope: !4604)
!4610 = !DILocation(line: 357, column: 41, scope: !4604)
!4611 = !DILocation(line: 357, column: 7, scope: !4604)
!4612 = !DILocation(line: 357, column: 46, scope: !4604)
!4613 = !DILocation(line: 356, column: 7, scope: !4605)
!4614 = !DILocation(line: 358, column: 34, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 357, column: 52)
!4616 = !DILocation(line: 358, column: 4, scope: !4615)
!4617 = !DILocation(line: 359, column: 4, scope: !4615)
!4618 = !DILocation(line: 361, column: 23, scope: !4605)
!4619 = !DILocation(line: 361, column: 4, scope: !4605)
!4620 = !DILocation(line: 361, column: 9, scope: !4605)
!4621 = !DILocation(line: 362, column: 2, scope: !4605)
!4622 = !DILocation(line: 363, column: 6, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 363, column: 6)
!4624 = !DILocation(line: 363, column: 6, scope: !4551)
!4625 = !DILocation(line: 364, column: 13, scope: !4623)
!4626 = !DILocation(line: 364, column: 4, scope: !4623)
!4627 = !DILocation(line: 364, column: 11, scope: !4623)
!4628 = !DILocation(line: 364, column: 3, scope: !4623)
!4629 = !DILocation(line: 365, column: 25, scope: !4551)
!4630 = !DILocation(line: 365, column: 30, scope: !4551)
!4631 = !DILocation(line: 366, column: 18, scope: !4551)
!4632 = !DILocation(line: 366, column: 23, scope: !4551)
!4633 = !DILocation(line: 365, column: 40, scope: !4551)
!4634 = !DILocation(line: 365, column: 11, scope: !4551)
!4635 = !DILocation(line: 365, column: 2, scope: !4551)
!4636 = !DILocation(line: 367, column: 1, scope: !4551)
!4637 = distinct !DISubprogram(name: "xdr_nfsace_decode", scope: !3, file: !3, line: 217, type: !116, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4638)
!4638 = !{!4639, !4640, !4641, !4642, !4643, !4644}
!4639 = !DILocalVariable(name: "desc", arg: 1, scope: !4637, file: !3, line: 217, type: !118)
!4640 = !DILocalVariable(name: "elem", arg: 2, scope: !4637, file: !3, line: 217, type: !102)
!4641 = !DILocalVariable(name: "nfsacl_desc", scope: !4637, file: !3, line: 219, type: !181)
!4642 = !DILocalVariable(name: "p", scope: !4637, file: !3, line: 221, type: !4311)
!4643 = !DILocalVariable(name: "entry", scope: !4637, file: !3, line: 222, type: !4313)
!4644 = !DILocalVariable(name: "id", scope: !4637, file: !3, line: 223, type: !7)
!4645 = !DILocation(line: 217, column: 43, scope: !4637)
!4646 = !DILocation(line: 217, column: 55, scope: !4637)
!4647 = !DILocation(line: 219, column: 2, scope: !4637)
!4648 = !DILocation(line: 219, column: 29, scope: !4637)
!4649 = !DILocation(line: 220, column: 33, scope: !4637)
!4650 = !DILocation(line: 221, column: 2, scope: !4637)
!4651 = !DILocation(line: 221, column: 10, scope: !4637)
!4652 = !DILocation(line: 221, column: 14, scope: !4637)
!4653 = !DILocation(line: 222, column: 2, scope: !4637)
!4654 = !DILocation(line: 222, column: 26, scope: !4637)
!4655 = !DILocation(line: 223, column: 2, scope: !4637)
!4656 = !DILocation(line: 223, column: 15, scope: !4637)
!4657 = !DILocation(line: 225, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 225, column: 6)
!4659 = !DILocation(line: 225, column: 20, scope: !4658)
!4660 = !DILocation(line: 225, column: 6, scope: !4637)
!4661 = !DILocation(line: 226, column: 7, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 226, column: 7)
!4663 = distinct !DILexicalBlock(scope: !4658, file: !3, line: 225, column: 25)
!4664 = !DILocation(line: 226, column: 13, scope: !4662)
!4665 = !DILocation(line: 226, column: 23, scope: !4662)
!4666 = !DILocation(line: 226, column: 7, scope: !4663)
!4667 = !DILocation(line: 227, column: 4, scope: !4662)
!4668 = !DILocation(line: 228, column: 38, scope: !4663)
!4669 = !DILocation(line: 228, column: 44, scope: !4663)
!4670 = !DILocation(line: 228, column: 22, scope: !4663)
!4671 = !DILocation(line: 228, column: 3, scope: !4663)
!4672 = !DILocation(line: 228, column: 16, scope: !4663)
!4673 = !DILocation(line: 228, column: 20, scope: !4663)
!4674 = !DILocation(line: 229, column: 8, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 229, column: 7)
!4676 = !DILocation(line: 229, column: 21, scope: !4675)
!4677 = !DILocation(line: 229, column: 7, scope: !4663)
!4678 = !DILocation(line: 230, column: 4, scope: !4675)
!4679 = !DILocation(line: 231, column: 3, scope: !4663)
!4680 = !DILocation(line: 231, column: 16, scope: !4663)
!4681 = !DILocation(line: 231, column: 22, scope: !4663)
!4682 = !DILocation(line: 232, column: 2, scope: !4663)
!4683 = !DILocation(line: 234, column: 11, scope: !4637)
!4684 = !DILocation(line: 234, column: 24, scope: !4637)
!4685 = !DILocation(line: 234, column: 29, scope: !4637)
!4686 = !DILocation(line: 234, column: 39, scope: !4637)
!4687 = !DILocation(line: 234, column: 52, scope: !4637)
!4688 = !DILocation(line: 234, column: 57, scope: !4637)
!4689 = !DILocation(line: 234, column: 8, scope: !4637)
!4690 = !DILocation(line: 235, column: 17, scope: !4637)
!4691 = !DILocation(line: 235, column: 29, scope: !4637)
!4692 = !DILocation(line: 235, column: 2, scope: !4637)
!4693 = !DILocation(line: 235, column: 9, scope: !4637)
!4694 = !DILocation(line: 235, column: 15, scope: !4637)
!4695 = !DILocation(line: 236, column: 7, scope: !4637)
!4696 = !DILocation(line: 236, column: 5, scope: !4637)
!4697 = !DILocation(line: 237, column: 18, scope: !4637)
!4698 = !DILocation(line: 237, column: 2, scope: !4637)
!4699 = !DILocation(line: 237, column: 9, scope: !4637)
!4700 = !DILocation(line: 237, column: 16, scope: !4637)
!4701 = !DILocation(line: 239, column: 9, scope: !4637)
!4702 = !DILocation(line: 239, column: 16, scope: !4637)
!4703 = !DILocation(line: 239, column: 2, scope: !4637)
!4704 = !DILocation(line: 241, column: 4, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4637, file: !3, line: 239, column: 23)
!4706 = !DILocation(line: 241, column: 11, scope: !4705)
!4707 = !DILocation(line: 241, column: 19, scope: !4705)
!4708 = !DILocation(line: 241, column: 44, scope: !4705)
!4709 = !DILocation(line: 242, column: 19, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 242, column: 8)
!4711 = !DILocation(line: 242, column: 26, scope: !4710)
!4712 = !DILocation(line: 242, column: 9, scope: !4710)
!4713 = !DILocation(line: 242, column: 8, scope: !4705)
!4714 = !DILocation(line: 243, column: 5, scope: !4710)
!4715 = !DILocation(line: 244, column: 4, scope: !4705)
!4716 = !DILocation(line: 246, column: 4, scope: !4705)
!4717 = !DILocation(line: 246, column: 11, scope: !4705)
!4718 = !DILocation(line: 246, column: 19, scope: !4705)
!4719 = !DILocation(line: 246, column: 44, scope: !4705)
!4720 = !DILocation(line: 247, column: 19, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 247, column: 8)
!4722 = !DILocation(line: 247, column: 26, scope: !4721)
!4723 = !DILocation(line: 247, column: 9, scope: !4721)
!4724 = !DILocation(line: 247, column: 8, scope: !4705)
!4725 = !DILocation(line: 248, column: 5, scope: !4721)
!4726 = !DILocation(line: 249, column: 4, scope: !4705)
!4727 = !DILocation(line: 253, column: 8, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 253, column: 8)
!4729 = !DILocation(line: 253, column: 15, scope: !4728)
!4730 = !DILocation(line: 253, column: 22, scope: !4728)
!4731 = !DILocation(line: 253, column: 8, scope: !4705)
!4732 = !DILocation(line: 254, column: 5, scope: !4728)
!4733 = !DILocation(line: 255, column: 4, scope: !4705)
!4734 = !DILocation(line: 258, column: 4, scope: !4705)
!4735 = !DILocation(line: 258, column: 11, scope: !4705)
!4736 = !DILocation(line: 258, column: 18, scope: !4705)
!4737 = !DILocation(line: 259, column: 4, scope: !4705)
!4738 = !DILocation(line: 261, column: 4, scope: !4705)
!4739 = !DILocation(line: 264, column: 2, scope: !4637)
!4740 = !DILocation(line: 265, column: 1, scope: !4637)
!4741 = !DISubprogram(name: "xdr_decode_word", scope: !108, file: !108, line: 200, type: !4742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!101, !4364, !7, !2714}
!4744 = !DISubprogram(name: "xdr_decode_array2", scope: !108, file: !108, line: 211, type: !4370, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4745 = distinct !DISubprogram(name: "posix_acl_from_nfsacl", scope: !3, file: !3, line: 290, type: !4746, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4748)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!101, !121}
!4748 = !{!4749, !4750, !4751, !4752, !4753}
!4749 = !DILocalVariable(name: "acl", arg: 1, scope: !4745, file: !3, line: 290, type: !121)
!4750 = !DILocalVariable(name: "pa", scope: !4745, file: !3, line: 292, type: !4313)
!4751 = !DILocalVariable(name: "pe", scope: !4745, file: !3, line: 292, type: !4313)
!4752 = !DILocalVariable(name: "group_obj", scope: !4745, file: !3, line: 293, type: !4313)
!4753 = !DILocalVariable(name: "mask", scope: !4745, file: !3, line: 293, type: !4313)
!4754 = !DILocation(line: 290, column: 41, scope: !4745)
!4755 = !DILocation(line: 292, column: 2, scope: !4745)
!4756 = !DILocation(line: 292, column: 26, scope: !4745)
!4757 = !DILocation(line: 292, column: 31, scope: !4745)
!4758 = !DILocation(line: 293, column: 10, scope: !4745)
!4759 = !DILocation(line: 293, column: 29, scope: !4745)
!4760 = !DILocation(line: 295, column: 7, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 295, column: 6)
!4762 = !DILocation(line: 295, column: 6, scope: !4745)
!4763 = !DILocation(line: 296, column: 3, scope: !4761)
!4764 = !DILocation(line: 298, column: 7, scope: !4745)
!4765 = !DILocation(line: 298, column: 12, scope: !4745)
!4766 = !DILocation(line: 298, column: 23, scope: !4745)
!4767 = !DILocation(line: 298, column: 28, scope: !4745)
!4768 = !DILocation(line: 298, column: 2, scope: !4745)
!4769 = !DILocation(line: 302, column: 2, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 302, column: 2)
!4771 = !DILocation(line: 302, column: 2, scope: !4772)
!4772 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 302, column: 2)
!4773 = !DILocation(line: 303, column: 10, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 302, column: 33)
!4775 = !DILocation(line: 303, column: 14, scope: !4774)
!4776 = !DILocation(line: 303, column: 3, scope: !4774)
!4777 = !DILocation(line: 307, column: 17, scope: !4778)
!4778 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 303, column: 21)
!4779 = !DILocation(line: 307, column: 15, scope: !4778)
!4780 = !DILocation(line: 308, column: 5, scope: !4778)
!4781 = !DILocation(line: 310, column: 12, scope: !4778)
!4782 = !DILocation(line: 310, column: 10, scope: !4778)
!4783 = !DILocation(line: 310, column: 5, scope: !4778)
!4784 = !DILocation(line: 315, column: 2, scope: !4774)
!4785 = distinct !{!4785, !4769, !4786, !4787, !4788}
!4786 = !DILocation(line: 315, column: 2, scope: !4770)
!4787 = !{!"llvm.loop.mustprogress"}
!4788 = !{!"llvm.loop.unroll.disable"}
!4789 = !DILocation(line: 316, column: 6, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4745, file: !3, line: 316, column: 6)
!4791 = !DILocation(line: 316, column: 11, scope: !4790)
!4792 = !DILocation(line: 316, column: 19, scope: !4790)
!4793 = !DILocation(line: 316, column: 24, scope: !4790)
!4794 = !DILocation(line: 316, column: 27, scope: !4790)
!4795 = !DILocation(line: 316, column: 37, scope: !4790)
!4796 = !DILocation(line: 316, column: 40, scope: !4790)
!4797 = !DILocation(line: 316, column: 45, scope: !4790)
!4798 = !DILocation(line: 317, column: 6, scope: !4790)
!4799 = !DILocation(line: 317, column: 12, scope: !4790)
!4800 = !DILocation(line: 317, column: 22, scope: !4790)
!4801 = !DILocation(line: 317, column: 33, scope: !4790)
!4802 = !DILocation(line: 317, column: 19, scope: !4790)
!4803 = !DILocation(line: 316, column: 6, scope: !4745)
!4804 = !DILocation(line: 319, column: 11, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 317, column: 41)
!4806 = !DILocation(line: 319, column: 17, scope: !4805)
!4807 = !DILocation(line: 319, column: 21, scope: !4805)
!4808 = !DILocation(line: 319, column: 31, scope: !4805)
!4809 = !DILocation(line: 319, column: 38, scope: !4805)
!4810 = !DILocation(line: 319, column: 43, scope: !4805)
!4811 = !DILocation(line: 319, column: 36, scope: !4805)
!4812 = !DILocation(line: 319, column: 28, scope: !4805)
!4813 = !DILocation(line: 319, column: 55, scope: !4805)
!4814 = !DILocation(line: 319, column: 3, scope: !4805)
!4815 = !DILocation(line: 321, column: 3, scope: !4805)
!4816 = !DILocation(line: 321, column: 8, scope: !4805)
!4817 = !DILocation(line: 321, column: 16, scope: !4805)
!4818 = !DILocation(line: 322, column: 2, scope: !4805)
!4819 = !DILocation(line: 323, column: 2, scope: !4745)
!4820 = !DILocation(line: 324, column: 1, scope: !4745)
!4821 = distinct !DISubprogram(name: "posix_acl_release", scope: !123, file: !123, line: 55, type: !4822, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4824)
!4822 = !DISubroutineType(types: !4823)
!4823 = !{null, !121}
!4824 = !{!4825, !4826}
!4825 = !DILocalVariable(name: "acl", arg: 1, scope: !4821, file: !123, line: 55, type: !121)
!4826 = !DILocalVariable(name: "___p", scope: !4827, file: !123, line: 58, type: !121)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !123, line: 58, column: 3)
!4828 = distinct !DILexicalBlock(scope: !4821, file: !123, line: 57, column: 6)
!4829 = !DILocation(line: 55, column: 37, scope: !4821)
!4830 = !DILocation(line: 57, column: 6, scope: !4828)
!4831 = !DILocation(line: 57, column: 10, scope: !4828)
!4832 = !DILocation(line: 57, column: 36, scope: !4828)
!4833 = !DILocation(line: 57, column: 41, scope: !4828)
!4834 = !DILocation(line: 57, column: 13, scope: !4828)
!4835 = !DILocation(line: 57, column: 6, scope: !4821)
!4836 = !DILocation(line: 58, column: 3, scope: !4828)
!4837 = !DILocation(line: 58, column: 3, scope: !4827)
!4838 = !DILocation(line: 58, column: 3, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4827, file: !123, line: 58, column: 3)
!4840 = !DILocation(line: 58, column: 3, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4839, file: !123, line: 58, column: 3)
!4842 = !DILocation(line: 58, column: 3, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4841, file: !123, line: 58, column: 3)
!4844 = !DILocation(line: 59, column: 1, scope: !4821)
!4845 = distinct !DISubprogram(name: "nfs_stream_decode_acl", scope: !3, file: !3, line: 383, type: !4846, scopeLine: 385, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4848)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!828, !4375, !1766, !4554}
!4848 = !{!4849, !4850, !4851, !4852, !4853, !4854, !4855}
!4849 = !DILocalVariable(name: "xdr", arg: 1, scope: !4845, file: !3, line: 383, type: !4375)
!4850 = !DILocalVariable(name: "aclcnt", arg: 2, scope: !4845, file: !3, line: 383, type: !1766)
!4851 = !DILocalVariable(name: "pacl", arg: 3, scope: !4845, file: !3, line: 384, type: !4554)
!4852 = !DILocalVariable(name: "elem_size", scope: !4845, file: !3, line: 386, type: !4397)
!4853 = !DILocalVariable(name: "nfsacl_desc", scope: !4845, file: !3, line: 387, type: !182)
!4854 = !DILocalVariable(name: "base", scope: !4845, file: !3, line: 393, type: !7)
!4855 = !DILocalVariable(name: "entries", scope: !4845, file: !3, line: 394, type: !328)
!4856 = !DILocation(line: 383, column: 47, scope: !4845)
!4857 = !DILocation(line: 383, column: 66, scope: !4845)
!4858 = !DILocation(line: 384, column: 26, scope: !4845)
!4859 = !DILocation(line: 386, column: 2, scope: !4845)
!4860 = !DILocation(line: 386, column: 15, scope: !4845)
!4861 = !DILocation(line: 387, column: 2, scope: !4845)
!4862 = !DILocation(line: 387, column: 28, scope: !4845)
!4863 = !DILocation(line: 387, column: 42, scope: !4845)
!4864 = !DILocation(line: 388, column: 11, scope: !4845)
!4865 = !DILocation(line: 390, column: 13, scope: !4845)
!4866 = !DILocation(line: 393, column: 2, scope: !4845)
!4867 = !DILocation(line: 393, column: 15, scope: !4845)
!4868 = !DILocation(line: 394, column: 2, scope: !4845)
!4869 = !DILocation(line: 394, column: 6, scope: !4845)
!4870 = !DILocation(line: 396, column: 28, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 396, column: 6)
!4872 = !DILocation(line: 396, column: 6, scope: !4871)
!4873 = !DILocation(line: 396, column: 43, scope: !4871)
!4874 = !DILocation(line: 396, column: 6, scope: !4845)
!4875 = !DILocation(line: 397, column: 3, scope: !4871)
!4876 = !DILocation(line: 398, column: 6, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 398, column: 6)
!4878 = !DILocation(line: 398, column: 14, scope: !4877)
!4879 = !DILocation(line: 398, column: 6, scope: !4845)
!4880 = !DILocation(line: 399, column: 3, scope: !4877)
!4881 = !DILocation(line: 401, column: 24, scope: !4845)
!4882 = !DILocation(line: 401, column: 9, scope: !4845)
!4883 = !DILocation(line: 401, column: 7, scope: !4845)
!4884 = !DILocation(line: 402, column: 25, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 402, column: 6)
!4886 = !DILocation(line: 402, column: 53, scope: !4885)
!4887 = !DILocation(line: 402, column: 51, scope: !4885)
!4888 = !DILocation(line: 402, column: 39, scope: !4885)
!4889 = !DILocation(line: 402, column: 7, scope: !4885)
!4890 = !DILocation(line: 402, column: 6, scope: !4845)
!4891 = !DILocation(line: 403, column: 3, scope: !4885)
!4892 = !DILocation(line: 404, column: 34, scope: !4845)
!4893 = !DILocation(line: 404, column: 14, scope: !4845)
!4894 = !DILocation(line: 404, column: 19, scope: !4845)
!4895 = !DILocation(line: 404, column: 32, scope: !4845)
!4896 = !DILocation(line: 405, column: 24, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 405, column: 6)
!4898 = !DILocation(line: 405, column: 29, scope: !4897)
!4899 = !DILocation(line: 405, column: 34, scope: !4897)
!4900 = !DILocation(line: 405, column: 53, scope: !4897)
!4901 = !DILocation(line: 405, column: 6, scope: !4897)
!4902 = !DILocation(line: 405, column: 6, scope: !4845)
!4903 = !DILocation(line: 406, column: 3, scope: !4897)
!4904 = !DILocation(line: 408, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 408, column: 6)
!4906 = !DILocation(line: 408, column: 6, scope: !4845)
!4907 = !DILocation(line: 409, column: 7, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 409, column: 7)
!4909 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 408, column: 12)
!4910 = !DILocation(line: 409, column: 30, scope: !4908)
!4911 = !DILocation(line: 409, column: 35, scope: !4908)
!4912 = !DILocation(line: 409, column: 15, scope: !4908)
!4913 = !DILocation(line: 409, column: 45, scope: !4908)
!4914 = !DILocation(line: 410, column: 41, scope: !4908)
!4915 = !DILocation(line: 410, column: 7, scope: !4908)
!4916 = !DILocation(line: 410, column: 46, scope: !4908)
!4917 = !DILocation(line: 409, column: 7, scope: !4909)
!4918 = !DILocation(line: 411, column: 34, scope: !4919)
!4919 = distinct !DILexicalBlock(scope: !4908, file: !3, line: 410, column: 52)
!4920 = !DILocation(line: 411, column: 4, scope: !4919)
!4921 = !DILocation(line: 412, column: 4, scope: !4919)
!4922 = !DILocation(line: 414, column: 23, scope: !4909)
!4923 = !DILocation(line: 414, column: 4, scope: !4909)
!4924 = !DILocation(line: 414, column: 9, scope: !4909)
!4925 = !DILocation(line: 415, column: 2, scope: !4909)
!4926 = !DILocation(line: 416, column: 6, scope: !4927)
!4927 = distinct !DILexicalBlock(scope: !4845, file: !3, line: 416, column: 6)
!4928 = !DILocation(line: 416, column: 6, scope: !4845)
!4929 = !DILocation(line: 417, column: 13, scope: !4927)
!4930 = !DILocation(line: 417, column: 4, scope: !4927)
!4931 = !DILocation(line: 417, column: 11, scope: !4927)
!4932 = !DILocation(line: 417, column: 3, scope: !4927)
!4933 = !DILocation(line: 418, column: 2, scope: !4845)
!4934 = !DILocation(line: 419, column: 1, scope: !4845)
!4935 = distinct !DISubprogram(name: "xdr_stream_decode_u32", scope: !108, file: !108, line: 672, type: !4936, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4938)
!4936 = !DISubroutineType(types: !4937)
!4937 = !{!571, !4375, !188}
!4938 = !{!4939, !4940, !4941, !4942}
!4939 = !DILocalVariable(name: "xdr", arg: 1, scope: !4935, file: !108, line: 672, type: !4375)
!4940 = !DILocalVariable(name: "ptr", arg: 2, scope: !4935, file: !108, line: 672, type: !188)
!4941 = !DILocalVariable(name: "count", scope: !4935, file: !108, line: 674, type: !4397)
!4942 = !DILocalVariable(name: "p", scope: !4935, file: !108, line: 675, type: !4311)
!4943 = !DILocation(line: 672, column: 42, scope: !4935)
!4944 = !DILocation(line: 672, column: 54, scope: !4935)
!4945 = !DILocation(line: 674, column: 2, scope: !4935)
!4946 = !DILocation(line: 674, column: 15, scope: !4935)
!4947 = !DILocation(line: 675, column: 2, scope: !4935)
!4948 = !DILocation(line: 675, column: 10, scope: !4935)
!4949 = !DILocation(line: 675, column: 32, scope: !4935)
!4950 = !DILocation(line: 675, column: 14, scope: !4935)
!4951 = !DILocation(line: 677, column: 6, scope: !4952)
!4952 = distinct !DILexicalBlock(scope: !4935, file: !108, line: 677, column: 6)
!4953 = !DILocation(line: 677, column: 6, scope: !4935)
!4954 = !DILocation(line: 678, column: 3, scope: !4952)
!4955 = !DILocation(line: 679, column: 22, scope: !4935)
!4956 = !DILocation(line: 679, column: 9, scope: !4935)
!4957 = !DILocation(line: 679, column: 3, scope: !4935)
!4958 = !DILocation(line: 679, column: 7, scope: !4935)
!4959 = !DILocation(line: 680, column: 2, scope: !4935)
!4960 = !DILocation(line: 681, column: 1, scope: !4935)
!4961 = !DISubprogram(name: "xdr_inline_decode", scope: !108, file: !108, line: 262, type: !4549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4962 = distinct !DISubprogram(name: "from_kuid", scope: !158, file: !158, line: 153, type: !4963, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4965)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!162, !911, !157}
!4965 = !{!4966, !4967}
!4966 = !DILocalVariable(name: "to", arg: 1, scope: !4962, file: !158, line: 153, type: !911)
!4967 = !DILocalVariable(name: "kuid", arg: 2, scope: !4962, file: !158, line: 153, type: !157)
!4968 = !DILocation(line: 153, column: 54, scope: !4962)
!4969 = !DILocation(line: 153, column: 65, scope: !4962)
!4970 = !DILocation(line: 155, column: 9, scope: !4962)
!4971 = !DILocation(line: 155, column: 2, scope: !4962)
!4972 = distinct !DISubprogram(name: "from_kgid", scope: !158, file: !158, line: 158, type: !4973, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4975)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!170, !911, !166}
!4975 = !{!4976, !4977}
!4976 = !DILocalVariable(name: "to", arg: 1, scope: !4972, file: !158, line: 158, type: !911)
!4977 = !DILocalVariable(name: "kgid", arg: 2, scope: !4972, file: !158, line: 158, type: !166)
!4978 = !DILocation(line: 158, column: 54, scope: !4972)
!4979 = !DILocation(line: 158, column: 65, scope: !4972)
!4980 = !DILocation(line: 160, column: 9, scope: !4972)
!4981 = !DILocation(line: 160, column: 2, scope: !4972)
!4982 = distinct !DISubprogram(name: "__kuid_val", scope: !158, file: !158, line: 34, type: !4983, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4985)
!4983 = !DISubroutineType(types: !4984)
!4984 = !{!162, !157}
!4985 = !{!4986}
!4986 = !DILocalVariable(name: "uid", arg: 1, scope: !4982, file: !158, line: 34, type: !157)
!4987 = !DILocation(line: 34, column: 39, scope: !4982)
!4988 = !DILocation(line: 36, column: 13, scope: !4982)
!4989 = !DILocation(line: 36, column: 2, scope: !4982)
!4990 = distinct !DISubprogram(name: "__kgid_val", scope: !158, file: !158, line: 39, type: !4991, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4993)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!170, !166}
!4993 = !{!4994}
!4994 = !DILocalVariable(name: "gid", arg: 1, scope: !4990, file: !158, line: 39, type: !166)
!4995 = !DILocation(line: 39, column: 39, scope: !4990)
!4996 = !DILocation(line: 41, column: 13, scope: !4990)
!4997 = !DILocation(line: 41, column: 2, scope: !4990)
!4998 = !DISubprogram(name: "posix_acl_alloc", scope: !123, file: !123, line: 65, type: !4999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4999 = !DISubroutineType(types: !5000)
!5000 = !{!121, !101, !187}
!5001 = distinct !DISubprogram(name: "make_kuid", scope: !158, file: !158, line: 143, type: !5002, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5004)
!5002 = !DISubroutineType(types: !5003)
!5003 = !{!157, !911, !162}
!5004 = !{!5005, !5006}
!5005 = !DILocalVariable(name: "from", arg: 1, scope: !5001, file: !158, line: 143, type: !911)
!5006 = !DILocalVariable(name: "uid", arg: 2, scope: !5001, file: !158, line: 143, type: !162)
!5007 = !DILocation(line: 143, column: 55, scope: !5001)
!5008 = !DILocation(line: 143, column: 67, scope: !5001)
!5009 = !DILocation(line: 145, column: 9, scope: !5001)
!5010 = !DILocation(line: 145, column: 2, scope: !5001)
!5011 = distinct !DISubprogram(name: "uid_valid", scope: !158, file: !158, line: 111, type: !5012, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5014)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!828, !157}
!5014 = !{!5015}
!5015 = !DILocalVariable(name: "uid", arg: 1, scope: !5011, file: !158, line: 111, type: !157)
!5016 = !DILocation(line: 111, column: 37, scope: !5011)
!5017 = !DILocation(line: 113, column: 9, scope: !5011)
!5018 = !DILocation(line: 113, column: 25, scope: !5011)
!5019 = !DILocation(line: 113, column: 2, scope: !5011)
!5020 = distinct !DISubprogram(name: "make_kgid", scope: !158, file: !158, line: 148, type: !5021, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5023)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!166, !911, !170}
!5023 = !{!5024, !5025}
!5024 = !DILocalVariable(name: "from", arg: 1, scope: !5020, file: !158, line: 148, type: !911)
!5025 = !DILocalVariable(name: "gid", arg: 2, scope: !5020, file: !158, line: 148, type: !170)
!5026 = !DILocation(line: 148, column: 55, scope: !5020)
!5027 = !DILocation(line: 148, column: 67, scope: !5020)
!5028 = !DILocation(line: 150, column: 9, scope: !5020)
!5029 = !DILocation(line: 150, column: 2, scope: !5020)
!5030 = distinct !DISubprogram(name: "gid_valid", scope: !158, file: !158, line: 116, type: !5031, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5033)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!828, !166}
!5033 = !{!5034}
!5034 = !DILocalVariable(name: "gid", arg: 1, scope: !5030, file: !158, line: 116, type: !166)
!5035 = !DILocation(line: 116, column: 37, scope: !5030)
!5036 = !DILocation(line: 118, column: 9, scope: !5030)
!5037 = !DILocation(line: 118, column: 25, scope: !5030)
!5038 = !DILocation(line: 118, column: 2, scope: !5030)
!5039 = !DISubprogram(name: "sort", scope: !5040, file: !5040, line: 12, type: !5041, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5040 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!5041 = !DISubroutineType(types: !5042)
!5042 = !{null, !102, !230, !230, !5043, !5047}
!5043 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !131, line: 245, baseType: !5044)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!101, !1208, !1208}
!5047 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !131, line: 242, baseType: !5048)
!5048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5049, size: 64)
!5049 = !DISubroutineType(types: !5050)
!5050 = !{null, !102, !102, !101}
!5051 = distinct !DISubprogram(name: "cmp_acl_entry", scope: !3, file: !3, line: 268, type: !5045, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5052)
!5052 = !{!5053, !5054, !5055, !5058}
!5053 = !DILocalVariable(name: "x", arg: 1, scope: !5051, file: !3, line: 268, type: !1208)
!5054 = !DILocalVariable(name: "y", arg: 2, scope: !5051, file: !3, line: 268, type: !1208)
!5055 = !DILocalVariable(name: "a", scope: !5051, file: !3, line: 270, type: !5056)
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!5058 = !DILocalVariable(name: "b", scope: !5051, file: !3, line: 270, type: !5056)
!5059 = !DILocation(line: 268, column: 27, scope: !5051)
!5060 = !DILocation(line: 268, column: 42, scope: !5051)
!5061 = !DILocation(line: 270, column: 2, scope: !5051)
!5062 = !DILocation(line: 270, column: 32, scope: !5051)
!5063 = !DILocation(line: 270, column: 36, scope: !5051)
!5064 = !DILocation(line: 270, column: 40, scope: !5051)
!5065 = !DILocation(line: 270, column: 44, scope: !5051)
!5066 = !DILocation(line: 272, column: 6, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 272, column: 6)
!5068 = !DILocation(line: 272, column: 9, scope: !5067)
!5069 = !DILocation(line: 272, column: 18, scope: !5067)
!5070 = !DILocation(line: 272, column: 21, scope: !5067)
!5071 = !DILocation(line: 272, column: 15, scope: !5067)
!5072 = !DILocation(line: 272, column: 6, scope: !5051)
!5073 = !DILocation(line: 273, column: 10, scope: !5067)
!5074 = !DILocation(line: 273, column: 13, scope: !5067)
!5075 = !DILocation(line: 273, column: 21, scope: !5067)
!5076 = !DILocation(line: 273, column: 24, scope: !5067)
!5077 = !DILocation(line: 273, column: 19, scope: !5067)
!5078 = !DILocation(line: 273, column: 3, scope: !5067)
!5079 = !DILocation(line: 274, column: 12, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 274, column: 11)
!5081 = !DILocation(line: 274, column: 15, scope: !5080)
!5082 = !DILocation(line: 274, column: 21, scope: !5080)
!5083 = !DILocation(line: 274, column: 34, scope: !5080)
!5084 = !DILocation(line: 274, column: 44, scope: !5080)
!5085 = !DILocation(line: 274, column: 47, scope: !5080)
!5086 = !DILocation(line: 274, column: 54, scope: !5080)
!5087 = !DILocation(line: 274, column: 57, scope: !5080)
!5088 = !DILocation(line: 274, column: 37, scope: !5080)
!5089 = !DILocation(line: 274, column: 11, scope: !5067)
!5090 = !DILocation(line: 275, column: 3, scope: !5080)
!5091 = !DILocation(line: 276, column: 12, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 276, column: 11)
!5093 = !DILocation(line: 276, column: 15, scope: !5092)
!5094 = !DILocation(line: 276, column: 21, scope: !5092)
!5095 = !DILocation(line: 276, column: 34, scope: !5092)
!5096 = !DILocation(line: 276, column: 44, scope: !5092)
!5097 = !DILocation(line: 276, column: 47, scope: !5092)
!5098 = !DILocation(line: 276, column: 54, scope: !5092)
!5099 = !DILocation(line: 276, column: 57, scope: !5092)
!5100 = !DILocation(line: 276, column: 37, scope: !5092)
!5101 = !DILocation(line: 276, column: 11, scope: !5080)
!5102 = !DILocation(line: 277, column: 3, scope: !5092)
!5103 = !DILocation(line: 278, column: 12, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5092, file: !3, line: 278, column: 11)
!5105 = !DILocation(line: 278, column: 15, scope: !5104)
!5106 = !DILocation(line: 278, column: 21, scope: !5104)
!5107 = !DILocation(line: 278, column: 35, scope: !5104)
!5108 = !DILocation(line: 278, column: 45, scope: !5104)
!5109 = !DILocation(line: 278, column: 48, scope: !5104)
!5110 = !DILocation(line: 278, column: 55, scope: !5104)
!5111 = !DILocation(line: 278, column: 58, scope: !5104)
!5112 = !DILocation(line: 278, column: 38, scope: !5104)
!5113 = !DILocation(line: 278, column: 11, scope: !5092)
!5114 = !DILocation(line: 279, column: 3, scope: !5104)
!5115 = !DILocation(line: 280, column: 12, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5104, file: !3, line: 280, column: 11)
!5117 = !DILocation(line: 280, column: 15, scope: !5116)
!5118 = !DILocation(line: 280, column: 21, scope: !5116)
!5119 = !DILocation(line: 280, column: 35, scope: !5116)
!5120 = !DILocation(line: 280, column: 45, scope: !5116)
!5121 = !DILocation(line: 280, column: 48, scope: !5116)
!5122 = !DILocation(line: 280, column: 55, scope: !5116)
!5123 = !DILocation(line: 280, column: 58, scope: !5116)
!5124 = !DILocation(line: 280, column: 38, scope: !5116)
!5125 = !DILocation(line: 280, column: 11, scope: !5104)
!5126 = !DILocation(line: 281, column: 3, scope: !5116)
!5127 = !DILocation(line: 283, column: 3, scope: !5116)
!5128 = !DILocation(line: 284, column: 1, scope: !5051)
!5129 = distinct !DISubprogram(name: "uid_gt", scope: !158, file: !158, line: 71, type: !5130, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5132)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!828, !157, !157}
!5132 = !{!5133, !5134}
!5133 = !DILocalVariable(name: "left", arg: 1, scope: !5129, file: !158, line: 71, type: !157)
!5134 = !DILocalVariable(name: "right", arg: 2, scope: !5129, file: !158, line: 71, type: !157)
!5135 = !DILocation(line: 71, column: 34, scope: !5129)
!5136 = !DILocation(line: 71, column: 47, scope: !5129)
!5137 = !DILocation(line: 73, column: 9, scope: !5129)
!5138 = !DILocation(line: 73, column: 28, scope: !5129)
!5139 = !DILocation(line: 73, column: 26, scope: !5129)
!5140 = !DILocation(line: 73, column: 2, scope: !5129)
!5141 = distinct !DISubprogram(name: "uid_lt", scope: !158, file: !158, line: 91, type: !5130, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5142)
!5142 = !{!5143, !5144}
!5143 = !DILocalVariable(name: "left", arg: 1, scope: !5141, file: !158, line: 91, type: !157)
!5144 = !DILocalVariable(name: "right", arg: 2, scope: !5141, file: !158, line: 91, type: !157)
!5145 = !DILocation(line: 91, column: 34, scope: !5141)
!5146 = !DILocation(line: 91, column: 47, scope: !5141)
!5147 = !DILocation(line: 93, column: 9, scope: !5141)
!5148 = !DILocation(line: 93, column: 28, scope: !5141)
!5149 = !DILocation(line: 93, column: 26, scope: !5141)
!5150 = !DILocation(line: 93, column: 2, scope: !5141)
!5151 = distinct !DISubprogram(name: "gid_gt", scope: !158, file: !158, line: 76, type: !5152, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5154)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!828, !166, !166}
!5154 = !{!5155, !5156}
!5155 = !DILocalVariable(name: "left", arg: 1, scope: !5151, file: !158, line: 76, type: !166)
!5156 = !DILocalVariable(name: "right", arg: 2, scope: !5151, file: !158, line: 76, type: !166)
!5157 = !DILocation(line: 76, column: 34, scope: !5151)
!5158 = !DILocation(line: 76, column: 47, scope: !5151)
!5159 = !DILocation(line: 78, column: 9, scope: !5151)
!5160 = !DILocation(line: 78, column: 28, scope: !5151)
!5161 = !DILocation(line: 78, column: 26, scope: !5151)
!5162 = !DILocation(line: 78, column: 2, scope: !5151)
!5163 = distinct !DISubprogram(name: "gid_lt", scope: !158, file: !158, line: 96, type: !5152, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5164)
!5164 = !{!5165, !5166}
!5165 = !DILocalVariable(name: "left", arg: 1, scope: !5163, file: !158, line: 96, type: !166)
!5166 = !DILocalVariable(name: "right", arg: 2, scope: !5163, file: !158, line: 96, type: !166)
!5167 = !DILocation(line: 96, column: 34, scope: !5163)
!5168 = !DILocation(line: 96, column: 47, scope: !5163)
!5169 = !DILocation(line: 98, column: 9, scope: !5163)
!5170 = !DILocation(line: 98, column: 28, scope: !5163)
!5171 = !DILocation(line: 98, column: 26, scope: !5163)
!5172 = !DILocation(line: 98, column: 2, scope: !5163)
!5173 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !93, file: !93, line: 331, type: !5174, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5177)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!828, !5176}
!5176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!5177 = !{!5178}
!5178 = !DILocalVariable(name: "r", arg: 1, scope: !5173, file: !93, line: 331, type: !5176)
!5179 = !DILocation(line: 331, column: 67, scope: !5173)
!5180 = !DILocation(line: 333, column: 33, scope: !5173)
!5181 = !DILocation(line: 333, column: 9, scope: !5173)
!5182 = !DILocation(line: 333, column: 2, scope: !5173)
!5183 = !DISubprogram(name: "kvfree_call_rcu", scope: !5184, file: !5184, line: 37, type: !5185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5184 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!5185 = !DISubroutineType(types: !5186)
!5186 = !{null, !139, !102}
!5187 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !93, file: !93, line: 313, type: !5188, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5190)
!5188 = !DISubroutineType(types: !5189)
!5189 = !{!828, !5176, !1814}
!5190 = !{!5191, !5192}
!5191 = !DILocalVariable(name: "r", arg: 1, scope: !5187, file: !93, line: 313, type: !5176)
!5192 = !DILocalVariable(name: "oldp", arg: 2, scope: !5187, file: !93, line: 313, type: !1814)
!5193 = !DILocation(line: 313, column: 69, scope: !5187)
!5194 = !DILocation(line: 313, column: 77, scope: !5187)
!5195 = !DILocation(line: 315, column: 36, scope: !5187)
!5196 = !DILocation(line: 315, column: 39, scope: !5187)
!5197 = !DILocation(line: 315, column: 9, scope: !5187)
!5198 = !DILocation(line: 315, column: 2, scope: !5187)
!5199 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !93, file: !93, line: 270, type: !5200, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5202)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!828, !101, !5176, !1814}
!5202 = !{!5203, !5204, !5205, !5206}
!5203 = !DILocalVariable(name: "i", arg: 1, scope: !5199, file: !93, line: 270, type: !101)
!5204 = !DILocalVariable(name: "r", arg: 2, scope: !5199, file: !93, line: 270, type: !5176)
!5205 = !DILocalVariable(name: "oldp", arg: 3, scope: !5199, file: !93, line: 270, type: !1814)
!5206 = !DILocalVariable(name: "old", scope: !5199, file: !93, line: 272, type: !101)
!5207 = !DILocation(line: 270, column: 61, scope: !5199)
!5208 = !DILocation(line: 270, column: 76, scope: !5199)
!5209 = !DILocation(line: 270, column: 84, scope: !5199)
!5210 = !DILocation(line: 272, column: 2, scope: !5199)
!5211 = !DILocation(line: 272, column: 6, scope: !5199)
!5212 = !DILocation(line: 272, column: 37, scope: !5199)
!5213 = !DILocation(line: 272, column: 41, scope: !5199)
!5214 = !DILocation(line: 272, column: 44, scope: !5199)
!5215 = !DILocation(line: 272, column: 12, scope: !5199)
!5216 = !DILocation(line: 274, column: 6, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5199, file: !93, line: 274, column: 6)
!5218 = !DILocation(line: 274, column: 6, scope: !5199)
!5219 = !DILocation(line: 275, column: 11, scope: !5217)
!5220 = !DILocation(line: 275, column: 4, scope: !5217)
!5221 = !DILocation(line: 275, column: 9, scope: !5217)
!5222 = !DILocation(line: 275, column: 3, scope: !5217)
!5223 = !DILocation(line: 277, column: 6, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5199, file: !93, line: 277, column: 6)
!5225 = !DILocation(line: 277, column: 13, scope: !5224)
!5226 = !DILocation(line: 277, column: 10, scope: !5224)
!5227 = !DILocation(line: 277, column: 6, scope: !5199)
!5228 = !DILocation(line: 278, column: 3, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5224, file: !93, line: 277, column: 16)
!5230 = !DILocation(line: 278, column: 3, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5229, file: !93, line: 278, column: 3)
!5232 = !DILocation(line: 278, column: 3, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5231, file: !93, line: 278, column: 3)
!5234 = !DILocation(line: 278, column: 3, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5231, file: !93, line: 278, column: 3)
!5236 = !DILocation(line: 278, column: 3, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5235, file: !93, line: 278, column: 3)
!5238 = !{i64 2149927353}
!5239 = !DILocation(line: 279, column: 3, scope: !5229)
!5240 = !DILocation(line: 282, column: 6, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5199, file: !93, line: 282, column: 6)
!5242 = !DILocation(line: 282, column: 6, scope: !5199)
!5243 = !DILocation(line: 283, column: 26, scope: !5241)
!5244 = !DILocation(line: 283, column: 3, scope: !5241)
!5245 = !DILocation(line: 285, column: 2, scope: !5199)
!5246 = !DILocation(line: 286, column: 1, scope: !5199)
!5247 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5248, file: !5248, line: 397, type: !5249, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5252)
!5248 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5249 = !DISubroutineType(types: !5250)
!5250 = !{!101, !101, !5251}
!5251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!5252 = !{!5253, !5254}
!5253 = !DILocalVariable(name: "i", arg: 1, scope: !5247, file: !5248, line: 397, type: !101)
!5254 = !DILocalVariable(name: "v", arg: 2, scope: !5247, file: !5248, line: 397, type: !5251)
!5255 = !DILocation(line: 397, column: 30, scope: !5247)
!5256 = !DILocation(line: 397, column: 43, scope: !5247)
!5257 = !DILocation(line: 399, column: 2, scope: !5247)
!5258 = !DILocation(line: 399, column: 2, scope: !5259)
!5259 = distinct !DILexicalBlock(scope: !5247, file: !5248, line: 399, column: 2)
!5260 = !DILocation(line: 400, column: 31, scope: !5247)
!5261 = !DILocation(line: 400, column: 2, scope: !5247)
!5262 = !DILocation(line: 401, column: 38, scope: !5247)
!5263 = !DILocation(line: 401, column: 41, scope: !5247)
!5264 = !DILocation(line: 401, column: 9, scope: !5247)
!5265 = !DILocation(line: 401, column: 2, scope: !5247)
!5266 = !DISubprogram(name: "refcount_warn_saturate", scope: !93, file: !93, line: 127, type: !5267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5267 = !DISubroutineType(types: !5268)
!5268 = !{null, !5176, !92}
!5269 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5270, file: !5270, line: 94, type: !5271, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5276)
!5270 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !5273, !230}
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5275)
!5275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5276 = !{!5277, !5278}
!5277 = !DILocalVariable(name: "v", arg: 1, scope: !5269, file: !5270, line: 94, type: !5273)
!5278 = !DILocalVariable(name: "size", arg: 2, scope: !5269, file: !5270, line: 94, type: !230)
!5279 = !DILocation(line: 94, column: 79, scope: !5269)
!5280 = !DILocation(line: 94, column: 89, scope: !5269)
!5281 = !DILocation(line: 96, column: 20, scope: !5269)
!5282 = !DILocation(line: 96, column: 23, scope: !5269)
!5283 = !DILocation(line: 96, column: 2, scope: !5269)
!5284 = !DILocation(line: 97, column: 2, scope: !5269)
!5285 = !DILocation(line: 98, column: 1, scope: !5269)
!5286 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !5287, file: !5287, line: 928, type: !5249, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5288)
!5287 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!5288 = !{!5289, !5290}
!5289 = !DILocalVariable(name: "i", arg: 1, scope: !5286, file: !5287, line: 928, type: !101)
!5290 = !DILocalVariable(name: "v", arg: 2, scope: !5286, file: !5287, line: 928, type: !5251)
!5291 = !DILocation(line: 928, column: 34, scope: !5286)
!5292 = !DILocation(line: 928, column: 47, scope: !5286)
!5293 = !DILocation(line: 936, column: 31, scope: !5286)
!5294 = !DILocation(line: 936, column: 34, scope: !5286)
!5295 = !DILocation(line: 936, column: 9, scope: !5286)
!5296 = !DILocation(line: 936, column: 2, scope: !5286)
!5297 = distinct !DISubprogram(name: "kasan_check_write", scope: !5298, file: !5298, line: 44, type: !5299, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5301)
!5298 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!828, !5273, !7}
!5301 = !{!5302, !5303}
!5302 = !DILocalVariable(name: "p", arg: 1, scope: !5297, file: !5298, line: 44, type: !5273)
!5303 = !DILocalVariable(name: "size", arg: 2, scope: !5297, file: !5298, line: 44, type: !7)
!5304 = !DILocation(line: 44, column: 59, scope: !5297)
!5305 = !DILocation(line: 44, column: 75, scope: !5297)
!5306 = !DILocation(line: 46, column: 2, scope: !5297)
!5307 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5308, file: !5308, line: 229, type: !5309, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5311)
!5308 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5309 = !DISubroutineType(types: !5310)
!5310 = !{null, !5273, !230, !101}
!5311 = !{!5312, !5313, !5314}
!5312 = !DILocalVariable(name: "ptr", arg: 1, scope: !5307, file: !5308, line: 229, type: !5273)
!5313 = !DILocalVariable(name: "size", arg: 2, scope: !5307, file: !5308, line: 229, type: !230)
!5314 = !DILocalVariable(name: "type", arg: 3, scope: !5307, file: !5308, line: 230, type: !101)
!5315 = !DILocation(line: 229, column: 60, scope: !5307)
!5316 = !DILocation(line: 229, column: 72, scope: !5307)
!5317 = !DILocation(line: 230, column: 15, scope: !5307)
!5318 = !DILocation(line: 230, column: 23, scope: !5307)
!5319 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5320, file: !5320, line: 101, type: !5249, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5321)
!5320 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!5321 = !{!5322, !5323, !5324}
!5322 = !DILocalVariable(name: "i", arg: 1, scope: !5319, file: !5320, line: 101, type: !101)
!5323 = !DILocalVariable(name: "v", arg: 2, scope: !5319, file: !5320, line: 101, type: !5251)
!5324 = !DILocalVariable(name: "__ret", scope: !5325, file: !5320, line: 103, type: !101)
!5325 = distinct !DILexicalBlock(scope: !5319, file: !5320, line: 103, column: 9)
!5326 = !DILocation(line: 101, column: 54, scope: !5319)
!5327 = !DILocation(line: 101, column: 67, scope: !5319)
!5328 = !DILocation(line: 103, column: 9, scope: !5325)
!5329 = !{i64 2148804275, i64 2148804314, i64 2148804335, i64 2148804372, i64 2148804395, i64 2148804404}
!5330 = !DILocation(line: 103, column: 9, scope: !5319)
!5331 = !DILocation(line: 103, column: 2, scope: !5319)
!5332 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !5333, file: !5333, line: 81, type: !5334, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5338)
!5333 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e83ca9c46c7eccd1fa31a0d39b270d0a")
!5334 = !DISubroutineType(types: !5335)
!5335 = !{!179, !5336}
!5336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5337, size: 64)
!5337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!5338 = !{!5339}
!5339 = !DILocalVariable(name: "p", arg: 1, scope: !5332, file: !5333, line: 81, type: !5336)
!5340 = !DILocation(line: 81, column: 59, scope: !5332)
!5341 = !DILocation(line: 83, column: 28, scope: !5332)
!5342 = !DILocation(line: 83, column: 9, scope: !5332)
!5343 = !DILocation(line: 83, column: 2, scope: !5332)
!5344 = distinct !DISubprogram(name: "__swab32p", scope: !5345, file: !5345, line: 184, type: !5346, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5350)
!5345 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bf848bfd87e1420f98055e17aff4f269")
!5346 = !DISubroutineType(types: !5347)
!5347 = !{!179, !5348}
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!5350 = !{!5351}
!5351 = !DILocalVariable(name: "p", arg: 1, scope: !5344, file: !5345, line: 184, type: !5348)
!5352 = !DILocation(line: 184, column: 53, scope: !5344)
!5353 = !DILocation(line: 189, column: 9, scope: !5344)
!5354 = !DILocation(line: 189, column: 2, scope: !5344)
