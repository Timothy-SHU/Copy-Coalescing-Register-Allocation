; ModuleID = 'net/sunrpc/auth_gss/gss_krb5_mech.c'
source_filename = "net/sunrpc/auth_gss/gss_krb5_mech.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_rpcsec_gss_krb5__352_663_init_kerberos_module\22, \22a\22\09\09"
module asm "__initcall__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6:\09\09\09"
module asm ".long\09__initstub__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.gss_api_mech = type { %struct.list_head, ptr, %struct.rpcsec_gss_oid, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.gss_api_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pf_desc = type { i32, i32, i32, ptr, ptr, ptr, i8 }
%struct.gss_krb5_enctype = type { i32, i32, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.krb5_ctx = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], [32 x i8], %struct.atomic_t, %struct.atomic64_t, i64, %struct.xdr_netobj }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.xdr_netobj = type { i32, ptr }
%struct.gss_ctx = type { ptr, ptr, i32, i32 }
%struct.crypto_sync_skcipher = type { %struct.crypto_skcipher }
%struct.crypto_skcipher = type { i32, %struct.crypto_tfm }
%struct.crypto_tfm = type { %struct.refcount_struct, i32, i32, ptr, ptr, [0 x ptr] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.crypto_tfm }

@__UNIQUE_ID_alias343 = internal constant [40 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-krb5\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_alias344 = internal constant [41 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-krb5i\00", section ".modinfo", align 1, !dbg !5334
@__UNIQUE_ID_alias345 = internal constant [41 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-krb5p\00", section ".modinfo", align 1, !dbg !5339
@__UNIQUE_ID_alias346 = internal constant [42 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-390003\00", section ".modinfo", align 1, !dbg !5341
@__UNIQUE_ID_alias347 = internal constant [42 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-390004\00", section ".modinfo", align 1, !dbg !5346
@__UNIQUE_ID_alias348 = internal constant [42 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-390005\00", section ".modinfo", align 1, !dbg !5348
@__UNIQUE_ID_alias349 = internal constant [56 x i8] c"rpcsec_gss_krb5.alias=rpc-auth-gss-1.2.840.113554.1.2.2\00", section ".modinfo", align 1, !dbg !5350
@gss_kerberos_mech = internal global %struct.gss_api_mech { %struct.list_head zeroinitializer, ptr null, %struct.rpcsec_gss_oid { i32 9, [32 x i8] c"*\86H\86\F7\12\01\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, ptr @.str, ptr @gss_kerberos_ops, i32 3, ptr @gss_kerberos_pfs, ptr @gss_krb5_enctype_priority_list }, align 8, !dbg !5372
@__UNIQUE_ID_file350 = internal constant [57 x i8] c"rpcsec_gss_krb5.file=net/sunrpc/auth_gss/rpcsec_gss_krb5\00", section ".modinfo", align 1, !dbg !5353
@__UNIQUE_ID_license351 = internal constant [28 x i8] c"rpcsec_gss_krb5.license=GPL\00", section ".modinfo", align 1, !dbg !5358
@__UNIQUE_ID___addressable___initstub__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6353 = internal global ptr @__initstub__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6, section ".discard.addressable", align 8, !dbg !5363
@__exitcall_cleanup_kerberos_module = internal global ptr @cleanup_kerberos_module, section ".exitcall.exit", align 8, !dbg !5365
@.str = private unnamed_addr constant [5 x i8] c"krb5\00", align 1, !dbg !5369
@gss_kerberos_ops = internal constant %struct.gss_api_ops { ptr @gss_krb5_import_sec_context, ptr @gss_krb5_get_mic, ptr @gss_krb5_verify_mic, ptr @gss_krb5_wrap, ptr @gss_krb5_unwrap, ptr @gss_krb5_delete_sec_context }, align 8, !dbg !5740
@gss_kerberos_pfs = internal global [3 x %struct.pf_desc] [%struct.pf_desc { i32 390003, i32 0, i32 1, ptr @.str, ptr null, ptr null, i8 0 }, %struct.pf_desc { i32 390004, i32 0, i32 2, ptr @.str.2, ptr null, ptr null, i8 1 }, %struct.pf_desc { i32 390005, i32 0, i32 3, ptr @.str.3, ptr null, ptr null, i8 1 }], align 16, !dbg !5963
@gss_krb5_enctype_priority_list = internal global [64 x i8] zeroinitializer, align 16, !dbg !5966
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5742
@supported_gss_krb5_enctypes = internal constant [0 x %struct.gss_krb5_enctype] zeroinitializer, align 8, !dbg !5747
@.str.2 = private unnamed_addr constant [6 x i8] c"krb5i\00", align 1, !dbg !5959
@.str.3 = private unnamed_addr constant [6 x i8] c"krb5p\00", align 1, !dbg !5961
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to register kerberos gss mechanism!\0A\00", align 1, !dbg !5969
@gss_krb5_prepare_enctype_priority_list.gss_krb5_enctypes = internal constant [0 x i32] zeroinitializer, align 4, !dbg !5974
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5984
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1, !dbg !5987
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !5989
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias343, ptr @__UNIQUE_ID_alias344, ptr @__UNIQUE_ID_alias345, ptr @__UNIQUE_ID_alias346, ptr @__UNIQUE_ID_alias347, ptr @__UNIQUE_ID_alias348, ptr @__UNIQUE_ID_alias349, ptr @cleanup_kerberos_module, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__UNIQUE_ID___addressable___initstub__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6353, ptr @__exitcall_cleanup_kerberos_module], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @cleanup_kerberos_module() #0 section ".exit.text" align 16 !dbg !6004 {
entry:
  call void @gss_mech_unregister(ptr noundef @gss_kerberos_mech) #18, !dbg !6005
  ret void, !dbg !6006
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6007 dso_local void @gss_mech_unregister(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6() #0 section ".init.text" align 16 !dbg !6010 {
entry:
  %call = call i32 @init_kerberos_module() #19, !dbg !6011
  ret i32 %call, !dbg !6011
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_kerberos_module() #0 section ".init.text" align 16 !dbg !6012 {
entry:
  %status = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #20, !dbg !6015
  call void @llvm.dbg.declare(metadata ptr %status, metadata !6014, metadata !DIExpression()), !dbg !6016
  call void @gss_krb5_prepare_enctype_priority_list() #18, !dbg !6017
  %call = call i32 @gss_mech_register(ptr noundef @gss_kerberos_mech) #18, !dbg !6018
  store i32 %call, ptr %status, align 4, !dbg !6019
  %0 = load i32, ptr %status, align 4, !dbg !6020
  %tobool = icmp ne i32 %0, 0, !dbg !6020
  br i1 %tobool, label %if.then, label %if.end, !dbg !6022

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6023

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !6025

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6025

do.end:                                           ; preds = %do.cond
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #19, !dbg !6023
  store i32 %call1, ptr %tmp, align 4, !dbg !6025
  %1 = load i32, ptr %tmp, align 4, !dbg !6023
  br label %if.end, !dbg !6027

if.end:                                           ; preds = %do.end, %entry
  %2 = load i32, ptr %status, align 4, !dbg !6028
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #20, !dbg !6029
  ret i32 %2, !dbg !6030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_krb5_import_sec_context(ptr noundef %p, i64 noundef %len, ptr noundef %ctx_id, ptr noundef %endtime, i32 noundef %gfp_mask) #2 align 16 !dbg !6031 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %ctx_id.addr = alloca ptr, align 8
  %endtime.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %end = alloca ptr, align 8
  %ctx = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6033, metadata !DIExpression()), !dbg !6041
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6034, metadata !DIExpression()), !dbg !6042
  store ptr %ctx_id, ptr %ctx_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx_id.addr, metadata !6035, metadata !DIExpression()), !dbg !6043
  store ptr %endtime, ptr %endtime.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %endtime.addr, metadata !6036, metadata !DIExpression()), !dbg !6044
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6037, metadata !DIExpression()), !dbg !6045
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #20, !dbg !6046
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6038, metadata !DIExpression()), !dbg !6047
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6048
  %1 = load i64, ptr %len.addr, align 8, !dbg !6049
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !6050
  store ptr %add.ptr, ptr %end, align 8, !dbg !6047
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx) #20, !dbg !6051
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !6039, metadata !DIExpression()), !dbg !6052
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6053
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6040, metadata !DIExpression()), !dbg !6054
  %2 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6055
  %call = call noalias ptr @kzalloc(i64 noundef 208, i32 noundef %2) #21, !dbg !6056
  store ptr %call, ptr %ctx, align 8, !dbg !6057
  %3 = load ptr, ptr %ctx, align 8, !dbg !6058
  %cmp = icmp eq ptr %3, null, !dbg !6060
  br i1 %cmp, label %if.then, label %if.end, !dbg !6061

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6062

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8, !dbg !6063
  %5 = load ptr, ptr %end, align 8, !dbg !6064
  %6 = load ptr, ptr %ctx, align 8, !dbg !6065
  %7 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6066
  %call1 = call i32 @gss_import_v2_context(ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) #18, !dbg !6067
  store i32 %call1, ptr %ret, align 4, !dbg !6068
  %8 = load ptr, ptr %ctx, align 8, !dbg !6069
  %Ksess = getelementptr inbounds %struct.krb5_ctx, ptr %8, i32 0, i32 14, !dbg !6070
  call void @memzero_explicit(ptr noundef %Ksess, i64 noundef 32) #18, !dbg !6071
  %9 = load i32, ptr %ret, align 4, !dbg !6072
  %tobool = icmp ne i32 %9, 0, !dbg !6072
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !6074

if.then2:                                         ; preds = %if.end
  %10 = load ptr, ptr %ctx, align 8, !dbg !6075
  call void @kfree(ptr noundef %10) #18, !dbg !6077
  %11 = load i32, ptr %ret, align 4, !dbg !6078
  store i32 %11, ptr %retval, align 4, !dbg !6079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6079

if.end3:                                          ; preds = %if.end
  %12 = load ptr, ptr %ctx, align 8, !dbg !6080
  %13 = load ptr, ptr %ctx_id.addr, align 8, !dbg !6081
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %13, i32 0, i32 1, !dbg !6082
  store ptr %12, ptr %internal_ctx_id, align 8, !dbg !6083
  %14 = load ptr, ptr %endtime.addr, align 8, !dbg !6084
  %tobool4 = icmp ne ptr %14, null, !dbg !6084
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !6086

if.then5:                                         ; preds = %if.end3
  %15 = load ptr, ptr %ctx, align 8, !dbg !6087
  %endtime6 = getelementptr inbounds %struct.krb5_ctx, ptr %15, i32 0, i32 18, !dbg !6088
  %16 = load i64, ptr %endtime6, align 8, !dbg !6088
  %17 = load ptr, ptr %endtime.addr, align 8, !dbg !6089
  store i64 %16, ptr %17, align 8, !dbg !6090
  br label %if.end7, !dbg !6091

if.end7:                                          ; preds = %if.then5, %if.end3
  store i32 0, ptr %retval, align 4, !dbg !6092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6092

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6093
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx) #20, !dbg !6093
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #20, !dbg !6093
  %18 = load i32, ptr %retval, align 4, !dbg !6093
  ret i32 %18, !dbg !6093
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_krb5_get_mic(ptr noundef %gctx, ptr noundef %text, ptr noundef %token) #2 align 16 !dbg !6094 {
entry:
  %gctx.addr = alloca ptr, align 8
  %text.addr = alloca ptr, align 8
  %token.addr = alloca ptr, align 8
  %kctx = alloca ptr, align 8
  store ptr %gctx, ptr %gctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gctx.addr, metadata !6096, metadata !DIExpression()), !dbg !6100
  store ptr %text, ptr %text.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %text.addr, metadata !6097, metadata !DIExpression()), !dbg !6101
  store ptr %token, ptr %token.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %token.addr, metadata !6098, metadata !DIExpression()), !dbg !6102
  call void @llvm.lifetime.start.p0(i64 8, ptr %kctx) #20, !dbg !6103
  call void @llvm.dbg.declare(metadata ptr %kctx, metadata !6099, metadata !DIExpression()), !dbg !6104
  %0 = load ptr, ptr %gctx.addr, align 8, !dbg !6105
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %0, i32 0, i32 1, !dbg !6106
  %1 = load ptr, ptr %internal_ctx_id, align 8, !dbg !6106
  store ptr %1, ptr %kctx, align 8, !dbg !6104
  %2 = load ptr, ptr %kctx, align 8, !dbg !6107
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %2, i32 0, i32 3, !dbg !6108
  %3 = load ptr, ptr %gk5e, align 8, !dbg !6108
  %get_mic = getelementptr inbounds %struct.gss_krb5_enctype, ptr %3, i32 0, i32 18, !dbg !6109
  %4 = load ptr, ptr %get_mic, align 8, !dbg !6109
  %5 = load ptr, ptr %kctx, align 8, !dbg !6110
  %6 = load ptr, ptr %text.addr, align 8, !dbg !6111
  %7 = load ptr, ptr %token.addr, align 8, !dbg !6112
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18, !dbg !6107
  call void @llvm.lifetime.end.p0(i64 8, ptr %kctx) #20, !dbg !6113
  ret i32 %call, !dbg !6114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_krb5_verify_mic(ptr noundef %gctx, ptr noundef %message_buffer, ptr noundef %read_token) #2 align 16 !dbg !6115 {
entry:
  %gctx.addr = alloca ptr, align 8
  %message_buffer.addr = alloca ptr, align 8
  %read_token.addr = alloca ptr, align 8
  %kctx = alloca ptr, align 8
  store ptr %gctx, ptr %gctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gctx.addr, metadata !6117, metadata !DIExpression()), !dbg !6121
  store ptr %message_buffer, ptr %message_buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %message_buffer.addr, metadata !6118, metadata !DIExpression()), !dbg !6122
  store ptr %read_token, ptr %read_token.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %read_token.addr, metadata !6119, metadata !DIExpression()), !dbg !6123
  call void @llvm.lifetime.start.p0(i64 8, ptr %kctx) #20, !dbg !6124
  call void @llvm.dbg.declare(metadata ptr %kctx, metadata !6120, metadata !DIExpression()), !dbg !6125
  %0 = load ptr, ptr %gctx.addr, align 8, !dbg !6126
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %0, i32 0, i32 1, !dbg !6127
  %1 = load ptr, ptr %internal_ctx_id, align 8, !dbg !6127
  store ptr %1, ptr %kctx, align 8, !dbg !6125
  %2 = load ptr, ptr %kctx, align 8, !dbg !6128
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %2, i32 0, i32 3, !dbg !6129
  %3 = load ptr, ptr %gk5e, align 8, !dbg !6129
  %verify_mic = getelementptr inbounds %struct.gss_krb5_enctype, ptr %3, i32 0, i32 19, !dbg !6130
  %4 = load ptr, ptr %verify_mic, align 8, !dbg !6130
  %5 = load ptr, ptr %kctx, align 8, !dbg !6131
  %6 = load ptr, ptr %message_buffer.addr, align 8, !dbg !6132
  %7 = load ptr, ptr %read_token.addr, align 8, !dbg !6133
  %call = call i32 %4(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18, !dbg !6128
  call void @llvm.lifetime.end.p0(i64 8, ptr %kctx) #20, !dbg !6134
  ret i32 %call, !dbg !6135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_krb5_wrap(ptr noundef %gctx, i32 noundef %offset, ptr noundef %buf, ptr noundef %pages) #2 align 16 !dbg !6136 {
entry:
  %gctx.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %pages.addr = alloca ptr, align 8
  %kctx = alloca ptr, align 8
  store ptr %gctx, ptr %gctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gctx.addr, metadata !6138, metadata !DIExpression()), !dbg !6143
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6139, metadata !DIExpression()), !dbg !6144
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6140, metadata !DIExpression()), !dbg !6145
  store ptr %pages, ptr %pages.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pages.addr, metadata !6141, metadata !DIExpression()), !dbg !6146
  call void @llvm.lifetime.start.p0(i64 8, ptr %kctx) #20, !dbg !6147
  call void @llvm.dbg.declare(metadata ptr %kctx, metadata !6142, metadata !DIExpression()), !dbg !6148
  %0 = load ptr, ptr %gctx.addr, align 8, !dbg !6149
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %0, i32 0, i32 1, !dbg !6150
  %1 = load ptr, ptr %internal_ctx_id, align 8, !dbg !6150
  store ptr %1, ptr %kctx, align 8, !dbg !6148
  %2 = load ptr, ptr %kctx, align 8, !dbg !6151
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %2, i32 0, i32 3, !dbg !6152
  %3 = load ptr, ptr %gk5e, align 8, !dbg !6152
  %wrap = getelementptr inbounds %struct.gss_krb5_enctype, ptr %3, i32 0, i32 20, !dbg !6153
  %4 = load ptr, ptr %wrap, align 8, !dbg !6153
  %5 = load ptr, ptr %kctx, align 8, !dbg !6154
  %6 = load i32, ptr %offset.addr, align 4, !dbg !6155
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !6156
  %8 = load ptr, ptr %pages.addr, align 8, !dbg !6157
  %call = call i32 %4(ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) #18, !dbg !6151
  call void @llvm.lifetime.end.p0(i64 8, ptr %kctx) #20, !dbg !6158
  ret i32 %call, !dbg !6159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_krb5_unwrap(ptr noundef %gctx, i32 noundef %offset, i32 noundef %len, ptr noundef %buf) #2 align 16 !dbg !6160 {
entry:
  %gctx.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  %len.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %kctx = alloca ptr, align 8
  store ptr %gctx, ptr %gctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %gctx.addr, metadata !6162, metadata !DIExpression()), !dbg !6167
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !6163, metadata !DIExpression()), !dbg !6168
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6164, metadata !DIExpression()), !dbg !6169
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6165, metadata !DIExpression()), !dbg !6170
  call void @llvm.lifetime.start.p0(i64 8, ptr %kctx) #20, !dbg !6171
  call void @llvm.dbg.declare(metadata ptr %kctx, metadata !6166, metadata !DIExpression()), !dbg !6172
  %0 = load ptr, ptr %gctx.addr, align 8, !dbg !6173
  %internal_ctx_id = getelementptr inbounds %struct.gss_ctx, ptr %0, i32 0, i32 1, !dbg !6174
  %1 = load ptr, ptr %internal_ctx_id, align 8, !dbg !6174
  store ptr %1, ptr %kctx, align 8, !dbg !6172
  %2 = load ptr, ptr %kctx, align 8, !dbg !6175
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %2, i32 0, i32 3, !dbg !6176
  %3 = load ptr, ptr %gk5e, align 8, !dbg !6176
  %unwrap = getelementptr inbounds %struct.gss_krb5_enctype, ptr %3, i32 0, i32 21, !dbg !6177
  %4 = load ptr, ptr %unwrap, align 8, !dbg !6177
  %5 = load ptr, ptr %kctx, align 8, !dbg !6178
  %6 = load i32, ptr %offset.addr, align 4, !dbg !6179
  %7 = load i32, ptr %len.addr, align 4, !dbg !6180
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !6181
  %9 = load ptr, ptr %gctx.addr, align 8, !dbg !6182
  %slack = getelementptr inbounds %struct.gss_ctx, ptr %9, i32 0, i32 2, !dbg !6183
  %10 = load ptr, ptr %gctx.addr, align 8, !dbg !6184
  %align = getelementptr inbounds %struct.gss_ctx, ptr %10, i32 0, i32 3, !dbg !6185
  %call = call i32 %4(ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %slack, ptr noundef %align) #18, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 8, ptr %kctx) #20, !dbg !6186
  ret i32 %call, !dbg !6187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gss_krb5_delete_sec_context(ptr noundef %internal_ctx) #2 align 16 !dbg !6188 {
entry:
  %internal_ctx.addr = alloca ptr, align 8
  %kctx = alloca ptr, align 8
  store ptr %internal_ctx, ptr %internal_ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %internal_ctx.addr, metadata !6190, metadata !DIExpression()), !dbg !6192
  call void @llvm.lifetime.start.p0(i64 8, ptr %kctx) #20, !dbg !6193
  call void @llvm.dbg.declare(metadata ptr %kctx, metadata !6191, metadata !DIExpression()), !dbg !6194
  %0 = load ptr, ptr %internal_ctx.addr, align 8, !dbg !6195
  store ptr %0, ptr %kctx, align 8, !dbg !6194
  %1 = load ptr, ptr %kctx, align 8, !dbg !6196
  %seq = getelementptr inbounds %struct.krb5_ctx, ptr %1, i32 0, i32 5, !dbg !6197
  %2 = load ptr, ptr %seq, align 8, !dbg !6197
  call void @crypto_free_sync_skcipher(ptr noundef %2) #18, !dbg !6198
  %3 = load ptr, ptr %kctx, align 8, !dbg !6199
  %enc = getelementptr inbounds %struct.krb5_ctx, ptr %3, i32 0, i32 4, !dbg !6200
  %4 = load ptr, ptr %enc, align 8, !dbg !6200
  call void @crypto_free_sync_skcipher(ptr noundef %4) #18, !dbg !6201
  %5 = load ptr, ptr %kctx, align 8, !dbg !6202
  %acceptor_enc = getelementptr inbounds %struct.krb5_ctx, ptr %5, i32 0, i32 6, !dbg !6203
  %6 = load ptr, ptr %acceptor_enc, align 8, !dbg !6203
  call void @crypto_free_sync_skcipher(ptr noundef %6) #18, !dbg !6204
  %7 = load ptr, ptr %kctx, align 8, !dbg !6205
  %initiator_enc = getelementptr inbounds %struct.krb5_ctx, ptr %7, i32 0, i32 7, !dbg !6206
  %8 = load ptr, ptr %initiator_enc, align 8, !dbg !6206
  call void @crypto_free_sync_skcipher(ptr noundef %8) #18, !dbg !6207
  %9 = load ptr, ptr %kctx, align 8, !dbg !6208
  %acceptor_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %9, i32 0, i32 8, !dbg !6209
  %10 = load ptr, ptr %acceptor_enc_aux, align 8, !dbg !6209
  call void @crypto_free_sync_skcipher(ptr noundef %10) #18, !dbg !6210
  %11 = load ptr, ptr %kctx, align 8, !dbg !6211
  %initiator_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %11, i32 0, i32 9, !dbg !6212
  %12 = load ptr, ptr %initiator_enc_aux, align 8, !dbg !6212
  call void @crypto_free_sync_skcipher(ptr noundef %12) #18, !dbg !6213
  %13 = load ptr, ptr %kctx, align 8, !dbg !6214
  %acceptor_sign = getelementptr inbounds %struct.krb5_ctx, ptr %13, i32 0, i32 10, !dbg !6215
  %14 = load ptr, ptr %acceptor_sign, align 8, !dbg !6215
  call void @crypto_free_ahash(ptr noundef %14) #18, !dbg !6216
  %15 = load ptr, ptr %kctx, align 8, !dbg !6217
  %initiator_sign = getelementptr inbounds %struct.krb5_ctx, ptr %15, i32 0, i32 11, !dbg !6218
  %16 = load ptr, ptr %initiator_sign, align 8, !dbg !6218
  call void @crypto_free_ahash(ptr noundef %16) #18, !dbg !6219
  %17 = load ptr, ptr %kctx, align 8, !dbg !6220
  %acceptor_integ = getelementptr inbounds %struct.krb5_ctx, ptr %17, i32 0, i32 13, !dbg !6221
  %18 = load ptr, ptr %acceptor_integ, align 8, !dbg !6221
  call void @crypto_free_ahash(ptr noundef %18) #18, !dbg !6222
  %19 = load ptr, ptr %kctx, align 8, !dbg !6223
  %initiator_integ = getelementptr inbounds %struct.krb5_ctx, ptr %19, i32 0, i32 12, !dbg !6224
  %20 = load ptr, ptr %initiator_integ, align 8, !dbg !6224
  call void @crypto_free_ahash(ptr noundef %20) #18, !dbg !6225
  %21 = load ptr, ptr %kctx, align 8, !dbg !6226
  %mech_used = getelementptr inbounds %struct.krb5_ctx, ptr %21, i32 0, i32 19, !dbg !6227
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %mech_used, i32 0, i32 1, !dbg !6228
  %22 = load ptr, ptr %data, align 8, !dbg !6228
  call void @kfree(ptr noundef %22) #18, !dbg !6229
  %23 = load ptr, ptr %kctx, align 8, !dbg !6230
  call void @kfree(ptr noundef %23) #18, !dbg !6231
  call void @llvm.lifetime.end.p0(i64 8, ptr %kctx) #20, !dbg !6232
  ret void, !dbg !6232
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !6233 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6237, metadata !DIExpression()), !dbg !6239
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6238, metadata !DIExpression()), !dbg !6240
  %0 = load i64, ptr %size.addr, align 8, !dbg !6241
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6242
  %or = or i32 %1, 256, !dbg !6243
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !6244
  ret ptr %call, !dbg !6245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_import_v2_context(ptr noundef %p, ptr noundef %end, ptr noundef %ctx, i32 noundef %gfp_mask) #2 align 16 !dbg !6246 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %ctx.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %seq_send64 = alloca i64, align 8
  %keylen = alloca i32, align 4
  %time32 = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6250, metadata !DIExpression()), !dbg !6260
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6251, metadata !DIExpression()), !dbg !6261
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6252, metadata !DIExpression()), !dbg !6262
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6253, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq_send64) #20, !dbg !6264
  call void @llvm.dbg.declare(metadata ptr %seq_send64, metadata !6254, metadata !DIExpression()), !dbg !6265
  call void @llvm.lifetime.start.p0(i64 4, ptr %keylen) #20, !dbg !6266
  call void @llvm.dbg.declare(metadata ptr %keylen, metadata !6255, metadata !DIExpression()), !dbg !6267
  call void @llvm.lifetime.start.p0(i64 4, ptr %time32) #20, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %time32, metadata !6256, metadata !DIExpression()), !dbg !6269
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6257, metadata !DIExpression()), !dbg !6271
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6272
  %1 = load ptr, ptr %end.addr, align 8, !dbg !6273
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !6274
  %flags = getelementptr inbounds %struct.krb5_ctx, ptr %2, i32 0, i32 2, !dbg !6275
  %call = call ptr @simple_get_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %flags, i64 noundef 4) #18, !dbg !6276
  store ptr %call, ptr %p.addr, align 8, !dbg !6277
  %3 = load ptr, ptr %p.addr, align 8, !dbg !6278
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #18, !dbg !6280
  br i1 %call1, label %if.then, label %if.end, !dbg !6281

if.then:                                          ; preds = %entry
  br label %out_err, !dbg !6282

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !6283
  %flags2 = getelementptr inbounds %struct.krb5_ctx, ptr %4, i32 0, i32 2, !dbg !6284
  %5 = load i32, ptr %flags2, align 8, !dbg !6284
  %and = and i32 %5, 1, !dbg !6285
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6286
  %initiate = getelementptr inbounds %struct.krb5_ctx, ptr %6, i32 0, i32 0, !dbg !6287
  store i32 %and, ptr %initiate, align 8, !dbg !6288
  %7 = load ptr, ptr %p.addr, align 8, !dbg !6289
  %8 = load ptr, ptr %end.addr, align 8, !dbg !6290
  %call3 = call ptr @simple_get_bytes(ptr noundef %7, ptr noundef %8, ptr noundef %time32, i64 noundef 4) #18, !dbg !6291
  store ptr %call3, ptr %p.addr, align 8, !dbg !6292
  %9 = load ptr, ptr %p.addr, align 8, !dbg !6293
  %call4 = call zeroext i1 @IS_ERR(ptr noundef %9) #18, !dbg !6295
  br i1 %call4, label %if.then5, label %if.end6, !dbg !6296

if.then5:                                         ; preds = %if.end
  br label %out_err, !dbg !6297

if.end6:                                          ; preds = %if.end
  %10 = load i32, ptr %time32, align 4, !dbg !6298
  %conv = zext i32 %10 to i64, !dbg !6299
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !6300
  %endtime = getelementptr inbounds %struct.krb5_ctx, ptr %11, i32 0, i32 18, !dbg !6301
  store i64 %conv, ptr %endtime, align 8, !dbg !6302
  %12 = load ptr, ptr %p.addr, align 8, !dbg !6303
  %13 = load ptr, ptr %end.addr, align 8, !dbg !6304
  %call7 = call ptr @simple_get_bytes(ptr noundef %12, ptr noundef %13, ptr noundef %seq_send64, i64 noundef 8) #18, !dbg !6305
  store ptr %call7, ptr %p.addr, align 8, !dbg !6306
  %14 = load ptr, ptr %p.addr, align 8, !dbg !6307
  %call8 = call zeroext i1 @IS_ERR(ptr noundef %14) #18, !dbg !6309
  br i1 %call8, label %if.then9, label %if.end10, !dbg !6310

if.then9:                                         ; preds = %if.end6
  br label %out_err, !dbg !6311

if.end10:                                         ; preds = %if.end6
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !6312
  %seq_send6411 = getelementptr inbounds %struct.krb5_ctx, ptr %15, i32 0, i32 17, !dbg !6313
  %16 = load i64, ptr %seq_send64, align 8, !dbg !6314
  call void @atomic64_set(ptr noundef %seq_send6411, i64 noundef %16) #18, !dbg !6315
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !6316
  %seq_send = getelementptr inbounds %struct.krb5_ctx, ptr %17, i32 0, i32 16, !dbg !6317
  %18 = load i64, ptr %seq_send64, align 8, !dbg !6318
  %conv12 = trunc i64 %18 to i32, !dbg !6318
  call void @atomic_set(ptr noundef %seq_send, i32 noundef %conv12) #18, !dbg !6319
  %19 = load i64, ptr %seq_send64, align 8, !dbg !6320
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !6322
  %seq_send13 = getelementptr inbounds %struct.krb5_ctx, ptr %20, i32 0, i32 16, !dbg !6323
  %call14 = call i32 @atomic_read(ptr noundef %seq_send13) #18, !dbg !6324
  %conv15 = sext i32 %call14 to i64, !dbg !6324
  %cmp = icmp ne i64 %19, %conv15, !dbg !6325
  br i1 %cmp, label %if.then17, label %if.end19, !dbg !6326

if.then17:                                        ; preds = %if.end10
  br label %do.body, !dbg !6327

do.body:                                          ; preds = %if.then17
  br label %do.cond, !dbg !6329

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6329

do.end:                                           ; preds = %do.cond
  %call18 = call ptr @ERR_PTR(i64 noundef -22) #18, !dbg !6331
  store ptr %call18, ptr %p.addr, align 8, !dbg !6332
  br label %out_err, !dbg !6333

if.end19:                                         ; preds = %if.end10
  %21 = load ptr, ptr %p.addr, align 8, !dbg !6334
  %22 = load ptr, ptr %end.addr, align 8, !dbg !6335
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !6336
  %enctype = getelementptr inbounds %struct.krb5_ctx, ptr %23, i32 0, i32 1, !dbg !6337
  %call20 = call ptr @simple_get_bytes(ptr noundef %21, ptr noundef %22, ptr noundef %enctype, i64 noundef 4) #18, !dbg !6338
  store ptr %call20, ptr %p.addr, align 8, !dbg !6339
  %24 = load ptr, ptr %p.addr, align 8, !dbg !6340
  %call21 = call zeroext i1 @IS_ERR(ptr noundef %24) #18, !dbg !6342
  br i1 %call21, label %if.then22, label %if.end23, !dbg !6343

if.then22:                                        ; preds = %if.end19
  br label %out_err, !dbg !6344

if.end23:                                         ; preds = %if.end19
  %25 = load ptr, ptr %ctx.addr, align 8, !dbg !6345
  %enctype24 = getelementptr inbounds %struct.krb5_ctx, ptr %25, i32 0, i32 1, !dbg !6346
  %26 = load i32, ptr %enctype24, align 4, !dbg !6346
  %call25 = call ptr @gss_krb5_lookup_enctype(i32 noundef %26) #18, !dbg !6347
  %27 = load ptr, ptr %ctx.addr, align 8, !dbg !6348
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %27, i32 0, i32 3, !dbg !6349
  store ptr %call25, ptr %gk5e, align 8, !dbg !6350
  %28 = load ptr, ptr %ctx.addr, align 8, !dbg !6351
  %gk5e26 = getelementptr inbounds %struct.krb5_ctx, ptr %28, i32 0, i32 3, !dbg !6353
  %29 = load ptr, ptr %gk5e26, align 8, !dbg !6353
  %cmp27 = icmp eq ptr %29, null, !dbg !6354
  br i1 %cmp27, label %if.then29, label %if.end34, !dbg !6355

if.then29:                                        ; preds = %if.end23
  br label %do.body30, !dbg !6356

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !6358

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !6358

do.end32:                                         ; preds = %do.cond31
  %call33 = call ptr @ERR_PTR(i64 noundef -22) #18, !dbg !6360
  store ptr %call33, ptr %p.addr, align 8, !dbg !6361
  br label %out_err, !dbg !6362

if.end34:                                         ; preds = %if.end23
  %30 = load ptr, ptr %ctx.addr, align 8, !dbg !6363
  %gk5e35 = getelementptr inbounds %struct.krb5_ctx, ptr %30, i32 0, i32 3, !dbg !6364
  %31 = load ptr, ptr %gk5e35, align 8, !dbg !6364
  %keylength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %31, i32 0, i32 11, !dbg !6365
  %32 = load i32, ptr %keylength, align 8, !dbg !6365
  store i32 %32, ptr %keylen, align 4, !dbg !6366
  %33 = load ptr, ptr %p.addr, align 8, !dbg !6367
  %34 = load ptr, ptr %end.addr, align 8, !dbg !6368
  %35 = load ptr, ptr %ctx.addr, align 8, !dbg !6369
  %Ksess = getelementptr inbounds %struct.krb5_ctx, ptr %35, i32 0, i32 14, !dbg !6370
  %arraydecay = getelementptr inbounds [32 x i8], ptr %Ksess, i64 0, i64 0, !dbg !6369
  %36 = load i32, ptr %keylen, align 4, !dbg !6371
  %conv36 = sext i32 %36 to i64, !dbg !6371
  %call37 = call ptr @simple_get_bytes(ptr noundef %33, ptr noundef %34, ptr noundef %arraydecay, i64 noundef %conv36) #18, !dbg !6372
  store ptr %call37, ptr %p.addr, align 8, !dbg !6373
  %37 = load ptr, ptr %p.addr, align 8, !dbg !6374
  %call38 = call zeroext i1 @IS_ERR(ptr noundef %37) #18, !dbg !6376
  br i1 %call38, label %if.then39, label %if.end40, !dbg !6377

if.then39:                                        ; preds = %if.end34
  br label %out_err, !dbg !6378

if.end40:                                         ; preds = %if.end34
  %38 = load ptr, ptr %p.addr, align 8, !dbg !6379
  %39 = load ptr, ptr %end.addr, align 8, !dbg !6381
  %cmp41 = icmp ne ptr %38, %39, !dbg !6382
  br i1 %cmp41, label %if.then43, label %if.end45, !dbg !6383

if.then43:                                        ; preds = %if.end40
  %call44 = call ptr @ERR_PTR(i64 noundef -22) #18, !dbg !6384
  store ptr %call44, ptr %p.addr, align 8, !dbg !6386
  br label %out_err, !dbg !6387

if.end45:                                         ; preds = %if.end40
  %40 = load i32, ptr getelementptr inbounds (%struct.gss_api_mech, ptr @gss_kerberos_mech, i32 0, i32 2), align 8, !dbg !6388
  %conv46 = zext i32 %40 to i64, !dbg !6389
  %41 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6390
  %call47 = call ptr @kmemdup(ptr noundef getelementptr inbounds (%struct.gss_api_mech, ptr @gss_kerberos_mech, i32 0, i32 2, i32 1), i64 noundef %conv46, i32 noundef %41) #22, !dbg !6391
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !6392
  %mech_used = getelementptr inbounds %struct.krb5_ctx, ptr %42, i32 0, i32 19, !dbg !6393
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %mech_used, i32 0, i32 1, !dbg !6394
  store ptr %call47, ptr %data, align 8, !dbg !6395
  %43 = load ptr, ptr %ctx.addr, align 8, !dbg !6396
  %mech_used48 = getelementptr inbounds %struct.krb5_ctx, ptr %43, i32 0, i32 19, !dbg !6396
  %data49 = getelementptr inbounds %struct.xdr_netobj, ptr %mech_used48, i32 0, i32 1, !dbg !6396
  %44 = load ptr, ptr %data49, align 8, !dbg !6396
  %cmp50 = icmp eq ptr %44, null, !dbg !6396
  %lnot = xor i1 %cmp50, true, !dbg !6396
  %lnot52 = xor i1 %lnot, true, !dbg !6396
  %lnot.ext = zext i1 %lnot52 to i32, !dbg !6396
  %conv53 = sext i32 %lnot.ext to i64, !dbg !6396
  %expval = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !6396
  %tobool = icmp ne i64 %expval, 0, !dbg !6396
  br i1 %tobool, label %if.then54, label %if.end56, !dbg !6398

if.then54:                                        ; preds = %if.end45
  %call55 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !6399
  store ptr %call55, ptr %p.addr, align 8, !dbg !6401
  br label %out_err, !dbg !6402

if.end56:                                         ; preds = %if.end45
  %45 = load i32, ptr getelementptr inbounds (%struct.gss_api_mech, ptr @gss_kerberos_mech, i32 0, i32 2), align 8, !dbg !6403
  %46 = load ptr, ptr %ctx.addr, align 8, !dbg !6404
  %mech_used57 = getelementptr inbounds %struct.krb5_ctx, ptr %46, i32 0, i32 19, !dbg !6405
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %mech_used57, i32 0, i32 0, !dbg !6406
  store i32 %45, ptr %len, align 8, !dbg !6407
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !6408
  %48 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6409
  %call58 = call i32 @gss_krb5_import_ctx_v2(ptr noundef %47, i32 noundef %48) #18, !dbg !6410
  store i32 %call58, ptr %ret, align 4, !dbg !6411
  %49 = load i32, ptr %ret, align 4, !dbg !6412
  %tobool59 = icmp ne i32 %49, 0, !dbg !6412
  br i1 %tobool59, label %if.then60, label %if.end63, !dbg !6414

if.then60:                                        ; preds = %if.end56
  %50 = load i32, ptr %ret, align 4, !dbg !6415
  %conv61 = sext i32 %50 to i64, !dbg !6415
  %call62 = call ptr @ERR_PTR(i64 noundef %conv61) #18, !dbg !6417
  store ptr %call62, ptr %p.addr, align 8, !dbg !6418
  br label %out_free, !dbg !6419

if.end63:                                         ; preds = %if.end56
  store i32 0, ptr %retval, align 4, !dbg !6420
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6420

out_free:                                         ; preds = %if.then60
  call void @llvm.dbg.label(metadata !6258), !dbg !6421
  %51 = load ptr, ptr %ctx.addr, align 8, !dbg !6422
  %mech_used64 = getelementptr inbounds %struct.krb5_ctx, ptr %51, i32 0, i32 19, !dbg !6423
  %data65 = getelementptr inbounds %struct.xdr_netobj, ptr %mech_used64, i32 0, i32 1, !dbg !6424
  %52 = load ptr, ptr %data65, align 8, !dbg !6424
  call void @kfree(ptr noundef %52) #18, !dbg !6425
  br label %out_err, !dbg !6425

out_err:                                          ; preds = %out_free, %if.then54, %if.then43, %if.then39, %do.end32, %if.then22, %do.end, %if.then9, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !6259), !dbg !6426
  %53 = load ptr, ptr %p.addr, align 8, !dbg !6427
  %call66 = call i64 @PTR_ERR(ptr noundef %53) #18, !dbg !6428
  %conv67 = trunc i64 %call66 to i32, !dbg !6428
  store i32 %conv67, ptr %retval, align 4, !dbg !6429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6429

cleanup:                                          ; preds = %out_err, %if.end63
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 4, ptr %time32) #20, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 4, ptr %keylen) #20, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq_send64) #20, !dbg !6430
  %54 = load i32, ptr %retval, align 4, !dbg !6430
  ret i32 %54, !dbg !6430
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @memzero_explicit(ptr noundef %s, i64 noundef %count) #6 align 16 !dbg !6431 {
entry:
  %s.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6436, metadata !DIExpression()), !dbg !6438
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6437, metadata !DIExpression()), !dbg !6439
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6440
  %1 = load i64, ptr %count.addr, align 8, !dbg !6441
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %1, i1 false), !dbg !6442
  %2 = load ptr, ptr %s.addr, align 8, !dbg !6443
  call void asm sideeffect "", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %2) #20, !dbg !6443, !srcloc !6444
  ret void, !dbg !6445
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6446 dso_local void @kfree(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !6449 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6451, metadata !DIExpression()), !dbg !6456
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6452, metadata !DIExpression()), !dbg !6457
  %0 = load i64, ptr %size.addr, align 8, !dbg !6458
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6459
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6460

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6461
  %tobool = icmp ne i64 %2, 0, !dbg !6461
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6462

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #20, !dbg !6463
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6453, metadata !DIExpression()), !dbg !6464
  %3 = load i64, ptr %size.addr, align 8, !dbg !6465
  %cmp = icmp ugt i64 %3, 8192, !dbg !6467
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6468

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6469
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6470
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !6471
  store ptr %call, ptr %retval, align 8, !dbg !6472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6472

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6473
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !6473
  store i32 %call2, ptr %index, align 4, !dbg !6474
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6475
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6476
  %9 = ptrtoint ptr %8 to i64, !dbg !6476
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !6477
  %idxprom = zext i32 %call3 to i64, !dbg !6478
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6478
  %10 = load i32, ptr %index, align 4, !dbg !6479
  %idxprom4 = zext i32 %10 to i64, !dbg !6478
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6478
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6478
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6480
  %13 = load i64, ptr %size.addr, align 8, !dbg !6481
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !6482
  store ptr %call6, ptr %retval, align 8, !dbg !6483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6483

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #20, !dbg !6484
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6485
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6486
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !6487
  store ptr %call8, ptr %retval, align 8, !dbg !6488
  br label %return, !dbg !6488

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6489
  ret ptr %16, !dbg !6489
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6490 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6491 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6495, metadata !DIExpression()), !dbg !6497
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6496, metadata !DIExpression()), !dbg !6498
  %0 = load i64, ptr %size.addr, align 8, !dbg !6499
  %tobool = icmp ne i64 %0, 0, !dbg !6499
  br i1 %tobool, label %if.end, label %if.then, !dbg !6501

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6502
  br label %return, !dbg !6502

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6503
  %cmp = icmp ule i64 %1, 8, !dbg !6505
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6506

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6507
  br label %return, !dbg !6507

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6508
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6510
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6511

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6512
  %cmp4 = icmp ule i64 %3, 96, !dbg !6513
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6514

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6515
  br label %return, !dbg !6515

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6516
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6518
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6519

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6520
  %cmp9 = icmp ule i64 %5, 192, !dbg !6521
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6522

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6523
  br label %return, !dbg !6523

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6524
  %cmp12 = icmp ule i64 %6, 8, !dbg !6526
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6527

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6528
  br label %return, !dbg !6528

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6529
  %cmp15 = icmp ule i64 %7, 16, !dbg !6531
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6532

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6533
  br label %return, !dbg !6533

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6534
  %cmp18 = icmp ule i64 %8, 32, !dbg !6536
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6537

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6538
  br label %return, !dbg !6538

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6539
  %cmp21 = icmp ule i64 %9, 64, !dbg !6541
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6542

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6543
  br label %return, !dbg !6543

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6544
  %cmp24 = icmp ule i64 %10, 128, !dbg !6546
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6547

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6548
  br label %return, !dbg !6548

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6549
  %cmp27 = icmp ule i64 %11, 256, !dbg !6551
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6552

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6553
  br label %return, !dbg !6553

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6554
  %cmp30 = icmp ule i64 %12, 512, !dbg !6556
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6557

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6558
  br label %return, !dbg !6558

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6559
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6561
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6562

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6563
  br label %return, !dbg !6563

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6564
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6566
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6567

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6568
  br label %return, !dbg !6568

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6569
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6571
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6572

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6573
  br label %return, !dbg !6573

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6574
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6576
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6577

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6578
  br label %return, !dbg !6578

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6579
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6581
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6582

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6583
  br label %return, !dbg !6583

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6584
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6586
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6587

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6588
  br label %return, !dbg !6588

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6589
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6591
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6592

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6593
  br label %return, !dbg !6593

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6594
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6596
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6597

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6598
  br label %return, !dbg !6598

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6599
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6601
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6602

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6603
  br label %return, !dbg !6603

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6604
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6606
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6607

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6608
  br label %return, !dbg !6608

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6609
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6611
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6612

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6613
  br label %return, !dbg !6613

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6614
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6616
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6617

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6618
  br label %return, !dbg !6618

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6619, !range !6621, !noundef !541
  %tobool69 = trunc i8 %25 to i1, !dbg !6619
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6622

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6623

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #24, !dbg !6624, !srcloc !6627
  unreachable, !dbg !6624

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6628

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6629

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6630

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6632

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6630

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #20, !dbg !6634, !srcloc !6636
  br label %do.end75, !dbg !6634

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6630

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6637
  br label %return, !dbg !6637

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6638
  ret i32 %26, !dbg !6638
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6639 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6642 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6647, metadata !DIExpression()), !dbg !6649
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6650
  %and = and i32 %0, 17, !dbg !6650
  %cmp = icmp eq i32 %and, 0, !dbg !6650
  %lnot = xor i1 %cmp, true, !dbg !6650
  %lnot1 = xor i1 %lnot, true, !dbg !6650
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6650
  %conv = sext i32 %lnot.ext to i64, !dbg !6650
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6650
  %tobool = icmp ne i64 %expval, 0, !dbg !6650
  br i1 %tobool, label %if.then, label %if.end, !dbg !6652

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6653
  br label %return, !dbg !6653

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6654
  %and2 = and i32 %1, 1, !dbg !6656
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6656
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6657

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6658
  br label %return, !dbg !6658

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6659
  br label %return, !dbg !6659

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6661
  ret i32 %2, !dbg !6661
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6662 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6663 dso_local void @__compiletime_assert_117() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @simple_get_bytes(ptr noundef %p, ptr noundef %end, ptr noundef %res, i64 noundef %len) #6 align 16 !dbg !6664 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %end.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %q = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6669, metadata !DIExpression()), !dbg !6674
  store ptr %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !6670, metadata !DIExpression()), !dbg !6675
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6671, metadata !DIExpression()), !dbg !6676
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6672, metadata !DIExpression()), !dbg !6677
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #20, !dbg !6678
  call void @llvm.dbg.declare(metadata ptr %q, metadata !6673, metadata !DIExpression()), !dbg !6679
  %0 = load ptr, ptr %p.addr, align 8, !dbg !6680
  %1 = load i64, ptr %len.addr, align 8, !dbg !6681
  %add.ptr = getelementptr i8, ptr %0, i64 %1, !dbg !6682
  store ptr %add.ptr, ptr %q, align 8, !dbg !6679
  %2 = load ptr, ptr %q, align 8, !dbg !6683
  %3 = load ptr, ptr %end.addr, align 8, !dbg !6683
  %cmp = icmp ugt ptr %2, %3, !dbg !6683
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6683

lor.rhs:                                          ; preds = %entry
  %4 = load ptr, ptr %q, align 8, !dbg !6683
  %5 = load ptr, ptr %p.addr, align 8, !dbg !6683
  %cmp1 = icmp ult ptr %4, %5, !dbg !6683
  br label %lor.end, !dbg !6683

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lnot = xor i1 %6, true, !dbg !6683
  %lnot2 = xor i1 %lnot, true, !dbg !6683
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6683
  %conv = sext i32 %lnot.ext to i64, !dbg !6683
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6683
  %tobool = icmp ne i64 %expval, 0, !dbg !6683
  br i1 %tobool, label %if.then, label %if.end, !dbg !6685

if.then:                                          ; preds = %lor.end
  %call = call ptr @ERR_PTR(i64 noundef -14) #18, !dbg !6686
  store ptr %call, ptr %retval, align 8, !dbg !6687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6687

if.end:                                           ; preds = %lor.end
  %7 = load ptr, ptr %res.addr, align 8, !dbg !6688
  %8 = load ptr, ptr %p.addr, align 8, !dbg !6689
  %9 = load i64, ptr %len.addr, align 8, !dbg !6690
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %8, i64 %9, i1 false), !dbg !6691
  %10 = load ptr, ptr %q, align 8, !dbg !6692
  store ptr %10, ptr %retval, align 8, !dbg !6693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6693

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #20, !dbg !6694
  %11 = load ptr, ptr %retval, align 8, !dbg !6694
  ret ptr %11, !dbg !6694
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #6 align 16 !dbg !6695 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6700, metadata !DIExpression()), !dbg !6701
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6702
  %1 = ptrtoint ptr %0 to i64, !dbg !6702
  %2 = inttoptr i64 %1 to ptr, !dbg !6702
  %3 = ptrtoint ptr %2 to i64, !dbg !6702
  %cmp = icmp uge i64 %3, -4095, !dbg !6702
  %lnot = xor i1 %cmp, true, !dbg !6702
  %lnot1 = xor i1 %lnot, true, !dbg !6702
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6702
  %conv = sext i32 %lnot.ext to i64, !dbg !6702
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6702
  %tobool = icmp ne i64 %expval, 0, !dbg !6702
  ret i1 %tobool, !dbg !6703
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic64_set(ptr noundef %v, i64 noundef %i) #10 align 16 !dbg !6704 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6710, metadata !DIExpression()), !dbg !6712
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6711, metadata !DIExpression()), !dbg !6713
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6714
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #18, !dbg !6715
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6716
  %2 = load i64, ptr %i.addr, align 8, !dbg !6717
  call void @raw_atomic64_set(ptr noundef %1, i64 noundef %2) #18, !dbg !6718
  ret void, !dbg !6719
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !6720 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6725, metadata !DIExpression()), !dbg !6727
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !6726, metadata !DIExpression()), !dbg !6728
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6729
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #18, !dbg !6730
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6731
  %2 = load i32, ptr %i.addr, align 4, !dbg !6732
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #18, !dbg !6733
  ret void, !dbg !6734
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #10 align 16 !dbg !6735 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6741, metadata !DIExpression()), !dbg !6742
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6743
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #18, !dbg !6744
  %1 = load ptr, ptr %v.addr, align 8, !dbg !6745
  %call = call i32 @raw_atomic_read(ptr noundef %1) #18, !dbg !6746
  ret i32 %call, !dbg !6747
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !6748 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !6752, metadata !DIExpression()), !dbg !6753
  %0 = load i64, ptr %error.addr, align 8, !dbg !6754
  %1 = inttoptr i64 %0 to ptr, !dbg !6755
  ret ptr %1, !dbg !6756
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @gss_krb5_lookup_enctype(i32 noundef %etype) #2 align 16 !dbg !6757 {
entry:
  %retval = alloca ptr, align 8
  %etype.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %etype, ptr %etype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %etype.addr, metadata !6761, metadata !DIExpression()), !dbg !6763
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #20, !dbg !6764
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6762, metadata !DIExpression()), !dbg !6765
  store i64 0, ptr %i, align 8, !dbg !6766
  br label %for.cond, !dbg !6768

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !6769
  %cmp = icmp ult i64 %0, 0, !dbg !6771
  br i1 %cmp, label %for.body, label %for.end, !dbg !6772

for.body:                                         ; preds = %for.cond
  %1 = load i64, ptr %i, align 8, !dbg !6773
  %arrayidx = getelementptr [0 x %struct.gss_krb5_enctype], ptr @supported_gss_krb5_enctypes, i64 0, i64 %1, !dbg !6775
  %etype1 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %arrayidx, i32 0, i32 0, !dbg !6776
  %2 = load i32, ptr %etype1, align 8, !dbg !6776
  %3 = load i32, ptr %etype.addr, align 4, !dbg !6777
  %cmp2 = icmp eq i32 %2, %3, !dbg !6778
  br i1 %cmp2, label %if.then, label %if.end, !dbg !6779

if.then:                                          ; preds = %for.body
  %4 = load i64, ptr %i, align 8, !dbg !6780
  %arrayidx3 = getelementptr [0 x %struct.gss_krb5_enctype], ptr @supported_gss_krb5_enctypes, i64 0, i64 %4, !dbg !6781
  store ptr %arrayidx3, ptr %retval, align 8, !dbg !6782
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6782

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !6777

for.inc:                                          ; preds = %if.end
  %5 = load i64, ptr %i, align 8, !dbg !6783
  %inc = add i64 %5, 1, !dbg !6783
  store i64 %inc, ptr %i, align 8, !dbg !6783
  br label %for.cond, !dbg !6784, !llvm.loop !6785

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !6789
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6789

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #20, !dbg !6790
  %6 = load ptr, ptr %retval, align 8, !dbg !6790
  ret ptr %6, !dbg !6790
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6791 dso_local ptr @kmemdup(ptr noundef, i64 noundef, i32 noundef) #14

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @gss_krb5_import_ctx_v2(ptr noundef %ctx, i32 noundef %gfp_mask) #2 align 16 !dbg !6794 {
entry:
  %retval = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %gfp_mask.addr = alloca i32, align 4
  %keyin = alloca %struct.xdr_netobj, align 8
  %keyout = alloca %struct.xdr_netobj, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !6798, metadata !DIExpression()), !dbg !6805
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !6799, metadata !DIExpression()), !dbg !6806
  call void @llvm.lifetime.start.p0(i64 16, ptr %keyin) #20, !dbg !6807
  call void @llvm.dbg.declare(metadata ptr %keyin, metadata !6800, metadata !DIExpression()), !dbg !6808
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %keyin, i32 0, i32 0, !dbg !6809
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !6810
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %0, i32 0, i32 3, !dbg !6811
  %1 = load ptr, ptr %gk5e, align 8, !dbg !6811
  %keylength = getelementptr inbounds %struct.gss_krb5_enctype, ptr %1, i32 0, i32 11, !dbg !6812
  %2 = load i32, ptr %keylength, align 8, !dbg !6812
  store i32 %2, ptr %len, align 8, !dbg !6809
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %keyin, i32 0, i32 1, !dbg !6809
  %3 = load ptr, ptr %ctx.addr, align 8, !dbg !6813
  %Ksess = getelementptr inbounds %struct.krb5_ctx, ptr %3, i32 0, i32 14, !dbg !6814
  %arraydecay = getelementptr inbounds [32 x i8], ptr %Ksess, i64 0, i64 0, !dbg !6813
  store ptr %arraydecay, ptr %data, align 8, !dbg !6809
  call void @llvm.lifetime.start.p0(i64 16, ptr %keyout) #20, !dbg !6815
  call void @llvm.dbg.declare(metadata ptr %keyout, metadata !6801, metadata !DIExpression()), !dbg !6816
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #20, !dbg !6817
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6802, metadata !DIExpression()), !dbg !6818
  store i32 -22, ptr %ret, align 4, !dbg !6818
  %4 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6819
  %call = call noalias ptr @kmalloc(i64 noundef 32, i32 noundef %4) #21, !dbg !6820
  %data1 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 1, !dbg !6821
  store ptr %call, ptr %data1, align 8, !dbg !6822
  %data2 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 1, !dbg !6823
  %5 = load ptr, ptr %data2, align 8, !dbg !6823
  %tobool = icmp ne ptr %5, null, !dbg !6825
  br i1 %tobool, label %if.end, label %if.then, !dbg !6826

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6827

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !6828
  %gk5e3 = getelementptr inbounds %struct.krb5_ctx, ptr %6, i32 0, i32 3, !dbg !6829
  %7 = load ptr, ptr %gk5e3, align 8, !dbg !6829
  %Ke_length = getelementptr inbounds %struct.gss_krb5_enctype, ptr %7, i32 0, i32 13, !dbg !6830
  %8 = load i32, ptr %Ke_length, align 8, !dbg !6830
  %len4 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 0, !dbg !6831
  store i32 %8, ptr %len4, align 8, !dbg !6832
  %9 = load ptr, ptr %ctx.addr, align 8, !dbg !6833
  %10 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6835
  %call5 = call i32 @krb5_derive_key(ptr noundef %9, ptr noundef %keyin, ptr noundef %keyout, i32 noundef 24, i8 noundef zeroext -86, i32 noundef %10) #18, !dbg !6836
  %tobool6 = icmp ne i32 %call5, 0, !dbg !6836
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6837

if.then7:                                         ; preds = %if.end
  br label %out, !dbg !6838

if.end8:                                          ; preds = %if.end
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !6839
  %gk5e9 = getelementptr inbounds %struct.krb5_ctx, ptr %11, i32 0, i32 3, !dbg !6840
  %12 = load ptr, ptr %gk5e9, align 8, !dbg !6840
  %encrypt_name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %12, i32 0, i32 3, !dbg !6841
  %13 = load ptr, ptr %encrypt_name, align 8, !dbg !6841
  %call10 = call ptr @gss_krb5_alloc_cipher_v2(ptr noundef %13, ptr noundef %keyout) #18, !dbg !6842
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !6843
  %initiator_enc = getelementptr inbounds %struct.krb5_ctx, ptr %14, i32 0, i32 7, !dbg !6844
  store ptr %call10, ptr %initiator_enc, align 8, !dbg !6845
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !6846
  %initiator_enc11 = getelementptr inbounds %struct.krb5_ctx, ptr %15, i32 0, i32 7, !dbg !6848
  %16 = load ptr, ptr %initiator_enc11, align 8, !dbg !6848
  %cmp = icmp eq ptr %16, null, !dbg !6849
  br i1 %cmp, label %if.then12, label %if.end13, !dbg !6850

if.then12:                                        ; preds = %if.end8
  br label %out, !dbg !6851

if.end13:                                         ; preds = %if.end8
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !6852
  %gk5e14 = getelementptr inbounds %struct.krb5_ctx, ptr %17, i32 0, i32 3, !dbg !6854
  %18 = load ptr, ptr %gk5e14, align 8, !dbg !6854
  %aux_cipher = getelementptr inbounds %struct.gss_krb5_enctype, ptr %18, i32 0, i32 4, !dbg !6855
  %19 = load ptr, ptr %aux_cipher, align 8, !dbg !6855
  %tobool15 = icmp ne ptr %19, null, !dbg !6852
  br i1 %tobool15, label %if.then16, label %if.end24, !dbg !6856

if.then16:                                        ; preds = %if.end13
  %20 = load ptr, ptr %ctx.addr, align 8, !dbg !6857
  %gk5e17 = getelementptr inbounds %struct.krb5_ctx, ptr %20, i32 0, i32 3, !dbg !6859
  %21 = load ptr, ptr %gk5e17, align 8, !dbg !6859
  %aux_cipher18 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %21, i32 0, i32 4, !dbg !6860
  %22 = load ptr, ptr %aux_cipher18, align 8, !dbg !6860
  %call19 = call ptr @gss_krb5_alloc_cipher_v2(ptr noundef %22, ptr noundef %keyout) #18, !dbg !6861
  %23 = load ptr, ptr %ctx.addr, align 8, !dbg !6862
  %initiator_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %23, i32 0, i32 9, !dbg !6863
  store ptr %call19, ptr %initiator_enc_aux, align 8, !dbg !6864
  %24 = load ptr, ptr %ctx.addr, align 8, !dbg !6865
  %initiator_enc_aux20 = getelementptr inbounds %struct.krb5_ctx, ptr %24, i32 0, i32 9, !dbg !6867
  %25 = load ptr, ptr %initiator_enc_aux20, align 8, !dbg !6867
  %cmp21 = icmp eq ptr %25, null, !dbg !6868
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6869

if.then22:                                        ; preds = %if.then16
  br label %out_free, !dbg !6870

if.end23:                                         ; preds = %if.then16
  br label %if.end24, !dbg !6871

if.end24:                                         ; preds = %if.end23, %if.end13
  %26 = load ptr, ptr %ctx.addr, align 8, !dbg !6872
  %27 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6874
  %call25 = call i32 @krb5_derive_key(ptr noundef %26, ptr noundef %keyin, ptr noundef %keyout, i32 noundef 22, i8 noundef zeroext -86, i32 noundef %27) #18, !dbg !6875
  %tobool26 = icmp ne i32 %call25, 0, !dbg !6875
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !6876

if.then27:                                        ; preds = %if.end24
  br label %out_free, !dbg !6877

if.end28:                                         ; preds = %if.end24
  %28 = load ptr, ptr %ctx.addr, align 8, !dbg !6878
  %gk5e29 = getelementptr inbounds %struct.krb5_ctx, ptr %28, i32 0, i32 3, !dbg !6879
  %29 = load ptr, ptr %gk5e29, align 8, !dbg !6879
  %encrypt_name30 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %29, i32 0, i32 3, !dbg !6880
  %30 = load ptr, ptr %encrypt_name30, align 8, !dbg !6880
  %call31 = call ptr @gss_krb5_alloc_cipher_v2(ptr noundef %30, ptr noundef %keyout) #18, !dbg !6881
  %31 = load ptr, ptr %ctx.addr, align 8, !dbg !6882
  %acceptor_enc = getelementptr inbounds %struct.krb5_ctx, ptr %31, i32 0, i32 6, !dbg !6883
  store ptr %call31, ptr %acceptor_enc, align 8, !dbg !6884
  %32 = load ptr, ptr %ctx.addr, align 8, !dbg !6885
  %acceptor_enc32 = getelementptr inbounds %struct.krb5_ctx, ptr %32, i32 0, i32 6, !dbg !6887
  %33 = load ptr, ptr %acceptor_enc32, align 8, !dbg !6887
  %cmp33 = icmp eq ptr %33, null, !dbg !6888
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6889

if.then34:                                        ; preds = %if.end28
  br label %out_free, !dbg !6890

if.end35:                                         ; preds = %if.end28
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !6891
  %gk5e36 = getelementptr inbounds %struct.krb5_ctx, ptr %34, i32 0, i32 3, !dbg !6893
  %35 = load ptr, ptr %gk5e36, align 8, !dbg !6893
  %aux_cipher37 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %35, i32 0, i32 4, !dbg !6894
  %36 = load ptr, ptr %aux_cipher37, align 8, !dbg !6894
  %tobool38 = icmp ne ptr %36, null, !dbg !6891
  br i1 %tobool38, label %if.then39, label %if.end47, !dbg !6895

if.then39:                                        ; preds = %if.end35
  %37 = load ptr, ptr %ctx.addr, align 8, !dbg !6896
  %gk5e40 = getelementptr inbounds %struct.krb5_ctx, ptr %37, i32 0, i32 3, !dbg !6898
  %38 = load ptr, ptr %gk5e40, align 8, !dbg !6898
  %aux_cipher41 = getelementptr inbounds %struct.gss_krb5_enctype, ptr %38, i32 0, i32 4, !dbg !6899
  %39 = load ptr, ptr %aux_cipher41, align 8, !dbg !6899
  %call42 = call ptr @gss_krb5_alloc_cipher_v2(ptr noundef %39, ptr noundef %keyout) #18, !dbg !6900
  %40 = load ptr, ptr %ctx.addr, align 8, !dbg !6901
  %acceptor_enc_aux = getelementptr inbounds %struct.krb5_ctx, ptr %40, i32 0, i32 8, !dbg !6902
  store ptr %call42, ptr %acceptor_enc_aux, align 8, !dbg !6903
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !6904
  %acceptor_enc_aux43 = getelementptr inbounds %struct.krb5_ctx, ptr %41, i32 0, i32 8, !dbg !6906
  %42 = load ptr, ptr %acceptor_enc_aux43, align 8, !dbg !6906
  %cmp44 = icmp eq ptr %42, null, !dbg !6907
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !6908

if.then45:                                        ; preds = %if.then39
  br label %out_free, !dbg !6909

if.end46:                                         ; preds = %if.then39
  br label %if.end47, !dbg !6910

if.end47:                                         ; preds = %if.end46, %if.end35
  %43 = load ptr, ptr %ctx.addr, align 8, !dbg !6911
  %gk5e48 = getelementptr inbounds %struct.krb5_ctx, ptr %43, i32 0, i32 3, !dbg !6912
  %44 = load ptr, ptr %gk5e48, align 8, !dbg !6912
  %Kc_length = getelementptr inbounds %struct.gss_krb5_enctype, ptr %44, i32 0, i32 12, !dbg !6913
  %45 = load i32, ptr %Kc_length, align 4, !dbg !6913
  %len49 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 0, !dbg !6914
  store i32 %45, ptr %len49, align 8, !dbg !6915
  %46 = load ptr, ptr %ctx.addr, align 8, !dbg !6916
  %47 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6918
  %call50 = call i32 @krb5_derive_key(ptr noundef %46, ptr noundef %keyin, ptr noundef %keyout, i32 noundef 25, i8 noundef zeroext -103, i32 noundef %47) #18, !dbg !6919
  %tobool51 = icmp ne i32 %call50, 0, !dbg !6919
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !6920

if.then52:                                        ; preds = %if.end47
  br label %out_free, !dbg !6921

if.end53:                                         ; preds = %if.end47
  %48 = load ptr, ptr %ctx.addr, align 8, !dbg !6922
  %call54 = call ptr @gss_krb5_alloc_hash_v2(ptr noundef %48, ptr noundef %keyout) #18, !dbg !6923
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !6924
  %initiator_sign = getelementptr inbounds %struct.krb5_ctx, ptr %49, i32 0, i32 11, !dbg !6925
  store ptr %call54, ptr %initiator_sign, align 8, !dbg !6926
  %50 = load ptr, ptr %ctx.addr, align 8, !dbg !6927
  %initiator_sign55 = getelementptr inbounds %struct.krb5_ctx, ptr %50, i32 0, i32 11, !dbg !6929
  %51 = load ptr, ptr %initiator_sign55, align 8, !dbg !6929
  %cmp56 = icmp eq ptr %51, null, !dbg !6930
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !6931

if.then57:                                        ; preds = %if.end53
  br label %out_free, !dbg !6932

if.end58:                                         ; preds = %if.end53
  %52 = load ptr, ptr %ctx.addr, align 8, !dbg !6933
  %53 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6935
  %call59 = call i32 @krb5_derive_key(ptr noundef %52, ptr noundef %keyin, ptr noundef %keyout, i32 noundef 23, i8 noundef zeroext -103, i32 noundef %53) #18, !dbg !6936
  %tobool60 = icmp ne i32 %call59, 0, !dbg !6936
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !6937

if.then61:                                        ; preds = %if.end58
  br label %out_free, !dbg !6938

if.end62:                                         ; preds = %if.end58
  %54 = load ptr, ptr %ctx.addr, align 8, !dbg !6939
  %call63 = call ptr @gss_krb5_alloc_hash_v2(ptr noundef %54, ptr noundef %keyout) #18, !dbg !6940
  %55 = load ptr, ptr %ctx.addr, align 8, !dbg !6941
  %acceptor_sign = getelementptr inbounds %struct.krb5_ctx, ptr %55, i32 0, i32 10, !dbg !6942
  store ptr %call63, ptr %acceptor_sign, align 8, !dbg !6943
  %56 = load ptr, ptr %ctx.addr, align 8, !dbg !6944
  %acceptor_sign64 = getelementptr inbounds %struct.krb5_ctx, ptr %56, i32 0, i32 10, !dbg !6946
  %57 = load ptr, ptr %acceptor_sign64, align 8, !dbg !6946
  %cmp65 = icmp eq ptr %57, null, !dbg !6947
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !6948

if.then66:                                        ; preds = %if.end62
  br label %out_free, !dbg !6949

if.end67:                                         ; preds = %if.end62
  %58 = load ptr, ptr %ctx.addr, align 8, !dbg !6950
  %gk5e68 = getelementptr inbounds %struct.krb5_ctx, ptr %58, i32 0, i32 3, !dbg !6951
  %59 = load ptr, ptr %gk5e68, align 8, !dbg !6951
  %Ki_length = getelementptr inbounds %struct.gss_krb5_enctype, ptr %59, i32 0, i32 14, !dbg !6952
  %60 = load i32, ptr %Ki_length, align 4, !dbg !6952
  %len69 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 0, !dbg !6953
  store i32 %60, ptr %len69, align 8, !dbg !6954
  %61 = load ptr, ptr %ctx.addr, align 8, !dbg !6955
  %62 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6957
  %call70 = call i32 @krb5_derive_key(ptr noundef %61, ptr noundef %keyin, ptr noundef %keyout, i32 noundef 24, i8 noundef zeroext 85, i32 noundef %62) #18, !dbg !6958
  %tobool71 = icmp ne i32 %call70, 0, !dbg !6958
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !6959

if.then72:                                        ; preds = %if.end67
  br label %out_free, !dbg !6960

if.end73:                                         ; preds = %if.end67
  %63 = load ptr, ptr %ctx.addr, align 8, !dbg !6961
  %call74 = call ptr @gss_krb5_alloc_hash_v2(ptr noundef %63, ptr noundef %keyout) #18, !dbg !6962
  %64 = load ptr, ptr %ctx.addr, align 8, !dbg !6963
  %initiator_integ = getelementptr inbounds %struct.krb5_ctx, ptr %64, i32 0, i32 12, !dbg !6964
  store ptr %call74, ptr %initiator_integ, align 8, !dbg !6965
  %65 = load ptr, ptr %ctx.addr, align 8, !dbg !6966
  %initiator_integ75 = getelementptr inbounds %struct.krb5_ctx, ptr %65, i32 0, i32 12, !dbg !6968
  %66 = load ptr, ptr %initiator_integ75, align 8, !dbg !6968
  %cmp76 = icmp eq ptr %66, null, !dbg !6969
  br i1 %cmp76, label %if.then77, label %if.end78, !dbg !6970

if.then77:                                        ; preds = %if.end73
  br label %out_free, !dbg !6971

if.end78:                                         ; preds = %if.end73
  %67 = load ptr, ptr %ctx.addr, align 8, !dbg !6972
  %68 = load i32, ptr %gfp_mask.addr, align 4, !dbg !6974
  %call79 = call i32 @krb5_derive_key(ptr noundef %67, ptr noundef %keyin, ptr noundef %keyout, i32 noundef 22, i8 noundef zeroext 85, i32 noundef %68) #18, !dbg !6975
  %tobool80 = icmp ne i32 %call79, 0, !dbg !6975
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !6976

if.then81:                                        ; preds = %if.end78
  br label %out_free, !dbg !6977

if.end82:                                         ; preds = %if.end78
  %69 = load ptr, ptr %ctx.addr, align 8, !dbg !6978
  %call83 = call ptr @gss_krb5_alloc_hash_v2(ptr noundef %69, ptr noundef %keyout) #18, !dbg !6979
  %70 = load ptr, ptr %ctx.addr, align 8, !dbg !6980
  %acceptor_integ = getelementptr inbounds %struct.krb5_ctx, ptr %70, i32 0, i32 13, !dbg !6981
  store ptr %call83, ptr %acceptor_integ, align 8, !dbg !6982
  %71 = load ptr, ptr %ctx.addr, align 8, !dbg !6983
  %acceptor_integ84 = getelementptr inbounds %struct.krb5_ctx, ptr %71, i32 0, i32 13, !dbg !6985
  %72 = load ptr, ptr %acceptor_integ84, align 8, !dbg !6985
  %cmp85 = icmp eq ptr %72, null, !dbg !6986
  br i1 %cmp85, label %if.then86, label %if.end87, !dbg !6987

if.then86:                                        ; preds = %if.end82
  br label %out_free, !dbg !6988

if.end87:                                         ; preds = %if.end82
  store i32 0, ptr %ret, align 4, !dbg !6989
  br label %out, !dbg !6990

out:                                              ; preds = %out_free, %if.end87, %if.then12, %if.then7
  call void @llvm.dbg.label(metadata !6803), !dbg !6991
  %data88 = getelementptr inbounds %struct.xdr_netobj, ptr %keyout, i32 0, i32 1, !dbg !6992
  %73 = load ptr, ptr %data88, align 8, !dbg !6992
  call void @kfree_sensitive(ptr noundef %73) #18, !dbg !6993
  %74 = load i32, ptr %ret, align 4, !dbg !6994
  store i32 %74, ptr %retval, align 4, !dbg !6995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6995

out_free:                                         ; preds = %if.then86, %if.then81, %if.then77, %if.then72, %if.then66, %if.then61, %if.then57, %if.then52, %if.then45, %if.then34, %if.then27, %if.then22
  call void @llvm.dbg.label(metadata !6804), !dbg !6996
  %75 = load ptr, ptr %ctx.addr, align 8, !dbg !6997
  %acceptor_integ89 = getelementptr inbounds %struct.krb5_ctx, ptr %75, i32 0, i32 13, !dbg !6998
  %76 = load ptr, ptr %acceptor_integ89, align 8, !dbg !6998
  call void @crypto_free_ahash(ptr noundef %76) #18, !dbg !6999
  %77 = load ptr, ptr %ctx.addr, align 8, !dbg !7000
  %initiator_integ90 = getelementptr inbounds %struct.krb5_ctx, ptr %77, i32 0, i32 12, !dbg !7001
  %78 = load ptr, ptr %initiator_integ90, align 8, !dbg !7001
  call void @crypto_free_ahash(ptr noundef %78) #18, !dbg !7002
  %79 = load ptr, ptr %ctx.addr, align 8, !dbg !7003
  %acceptor_sign91 = getelementptr inbounds %struct.krb5_ctx, ptr %79, i32 0, i32 10, !dbg !7004
  %80 = load ptr, ptr %acceptor_sign91, align 8, !dbg !7004
  call void @crypto_free_ahash(ptr noundef %80) #18, !dbg !7005
  %81 = load ptr, ptr %ctx.addr, align 8, !dbg !7006
  %initiator_sign92 = getelementptr inbounds %struct.krb5_ctx, ptr %81, i32 0, i32 11, !dbg !7007
  %82 = load ptr, ptr %initiator_sign92, align 8, !dbg !7007
  call void @crypto_free_ahash(ptr noundef %82) #18, !dbg !7008
  %83 = load ptr, ptr %ctx.addr, align 8, !dbg !7009
  %acceptor_enc_aux93 = getelementptr inbounds %struct.krb5_ctx, ptr %83, i32 0, i32 8, !dbg !7010
  %84 = load ptr, ptr %acceptor_enc_aux93, align 8, !dbg !7010
  call void @crypto_free_sync_skcipher(ptr noundef %84) #18, !dbg !7011
  %85 = load ptr, ptr %ctx.addr, align 8, !dbg !7012
  %acceptor_enc94 = getelementptr inbounds %struct.krb5_ctx, ptr %85, i32 0, i32 6, !dbg !7013
  %86 = load ptr, ptr %acceptor_enc94, align 8, !dbg !7013
  call void @crypto_free_sync_skcipher(ptr noundef %86) #18, !dbg !7014
  %87 = load ptr, ptr %ctx.addr, align 8, !dbg !7015
  %initiator_enc_aux95 = getelementptr inbounds %struct.krb5_ctx, ptr %87, i32 0, i32 9, !dbg !7016
  %88 = load ptr, ptr %initiator_enc_aux95, align 8, !dbg !7016
  call void @crypto_free_sync_skcipher(ptr noundef %88) #18, !dbg !7017
  %89 = load ptr, ptr %ctx.addr, align 8, !dbg !7018
  %initiator_enc96 = getelementptr inbounds %struct.krb5_ctx, ptr %89, i32 0, i32 7, !dbg !7019
  %90 = load ptr, ptr %initiator_enc96, align 8, !dbg !7019
  call void @crypto_free_sync_skcipher(ptr noundef %90) #18, !dbg !7020
  br label %out, !dbg !7021

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #20, !dbg !7022
  call void @llvm.lifetime.end.p0(i64 16, ptr %keyout) #20, !dbg !7022
  call void @llvm.lifetime.end.p0(i64 16, ptr %keyin) #20, !dbg !7022
  %91 = load i32, ptr %retval, align 4, !dbg !7022
  ret i32 %91, !dbg !7022
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #6 align 16 !dbg !7023 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7027, metadata !DIExpression()), !dbg !7028
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !7029
  %1 = ptrtoint ptr %0 to i64, !dbg !7030
  ret i64 %1, !dbg !7031
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !7032 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7040, metadata !DIExpression()), !dbg !7042
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7041, metadata !DIExpression()), !dbg !7043
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7044
  %1 = load i64, ptr %size.addr, align 8, !dbg !7045
  %conv = trunc i64 %1 to i32, !dbg !7045
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !7046
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7047
  %3 = load i64, ptr %size.addr, align 8, !dbg !7047
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !7047
  ret void, !dbg !7048
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #10 align 16 !dbg !7049 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7052, metadata !DIExpression()), !dbg !7054
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7053, metadata !DIExpression()), !dbg !7055
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7056
  %1 = load i64, ptr %i.addr, align 8, !dbg !7057
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #18, !dbg !7058
  ret void, !dbg !7059
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7060 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7065, metadata !DIExpression()), !dbg !7067
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7066, metadata !DIExpression()), !dbg !7068
  ret i1 true, !dbg !7069
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !7070 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7075, metadata !DIExpression()), !dbg !7078
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7076, metadata !DIExpression()), !dbg !7079
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7077, metadata !DIExpression()), !dbg !7080
  ret void, !dbg !7081
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #10 align 16 !dbg !7082 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7085, metadata !DIExpression()), !dbg !7087
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7086, metadata !DIExpression()), !dbg !7088
  br label %do.body, !dbg !7089

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !7090
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7090
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !7090
  store volatile i64 %0, ptr %counter, align 8, !dbg !7090
  br label %do.end, !dbg !7090

do.end:                                           ; preds = %do.body
  ret void, !dbg !7092
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !7093 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7095, metadata !DIExpression()), !dbg !7097
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7096, metadata !DIExpression()), !dbg !7098
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7099
  %1 = load i32, ptr %i.addr, align 4, !dbg !7100
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #18, !dbg !7101
  ret void, !dbg !7102
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #10 align 16 !dbg !7103 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7106, metadata !DIExpression()), !dbg !7108
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7107, metadata !DIExpression()), !dbg !7109
  br label %do.body, !dbg !7110

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !7111
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7111
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !7111
  store volatile i32 %0, ptr %counter, align 4, !dbg !7111
  br label %do.end, !dbg !7111

do.end:                                           ; preds = %do.body
  ret void, !dbg !7113
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !7114 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7116, metadata !DIExpression()), !dbg !7118
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7117, metadata !DIExpression()), !dbg !7119
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7120
  %1 = load i64, ptr %size.addr, align 8, !dbg !7121
  %conv = trunc i64 %1 to i32, !dbg !7121
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !7122
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7123
  %3 = load i64, ptr %size.addr, align 8, !dbg !7123
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !7123
  ret void, !dbg !7124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #10 align 16 !dbg !7125 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7127, metadata !DIExpression()), !dbg !7128
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7129
  %call = call i32 @arch_atomic_read(ptr noundef %0) #18, !dbg !7130
  ret i32 %call, !dbg !7131
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !7132 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7134, metadata !DIExpression()), !dbg !7136
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7135, metadata !DIExpression()), !dbg !7137
  ret i1 true, !dbg !7138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #10 align 16 !dbg !7139 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7141, metadata !DIExpression()), !dbg !7142
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7143
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7143
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7143
  ret i32 %1, !dbg !7144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @krb5_derive_key(ptr noundef %kctx, ptr noundef %inkey, ptr noundef %outkey, i32 noundef %usage, i8 noundef zeroext %seed, i32 noundef %gfp_mask) #6 align 16 !dbg !7145 {
entry:
  %kctx.addr = alloca ptr, align 8
  %inkey.addr = alloca ptr, align 8
  %outkey.addr = alloca ptr, align 8
  %usage.addr = alloca i32, align 4
  %seed.addr = alloca i8, align 1
  %gfp_mask.addr = alloca i32, align 4
  %gk5e = alloca ptr, align 8
  %label_data = alloca [5 x i8], align 1
  %label = alloca %struct.xdr_netobj, align 8
  %p = alloca ptr, align 8
  store ptr %kctx, ptr %kctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kctx.addr, metadata !7149, metadata !DIExpression()), !dbg !7160
  store ptr %inkey, ptr %inkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inkey.addr, metadata !7150, metadata !DIExpression()), !dbg !7161
  store ptr %outkey, ptr %outkey.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %outkey.addr, metadata !7151, metadata !DIExpression()), !dbg !7162
  store i32 %usage, ptr %usage.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usage.addr, metadata !7152, metadata !DIExpression()), !dbg !7163
  store i8 %seed, ptr %seed.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !7153, metadata !DIExpression()), !dbg !7164
  store i32 %gfp_mask, ptr %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp_mask.addr, metadata !7154, metadata !DIExpression()), !dbg !7165
  call void @llvm.lifetime.start.p0(i64 8, ptr %gk5e) #20, !dbg !7166
  call void @llvm.dbg.declare(metadata ptr %gk5e, metadata !7155, metadata !DIExpression()), !dbg !7167
  %0 = load ptr, ptr %kctx.addr, align 8, !dbg !7168
  %gk5e1 = getelementptr inbounds %struct.krb5_ctx, ptr %0, i32 0, i32 3, !dbg !7169
  %1 = load ptr, ptr %gk5e1, align 8, !dbg !7169
  store ptr %1, ptr %gk5e, align 8, !dbg !7167
  call void @llvm.lifetime.start.p0(i64 5, ptr %label_data) #20, !dbg !7170
  call void @llvm.dbg.declare(metadata ptr %label_data, metadata !7156, metadata !DIExpression()), !dbg !7171
  call void @llvm.lifetime.start.p0(i64 16, ptr %label) #20, !dbg !7172
  call void @llvm.dbg.declare(metadata ptr %label, metadata !7158, metadata !DIExpression()), !dbg !7173
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %label, i32 0, i32 0, !dbg !7174
  store i32 5, ptr %len, align 8, !dbg !7174
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %label, i32 0, i32 1, !dbg !7174
  %arraydecay = getelementptr inbounds [5 x i8], ptr %label_data, i64 0, i64 0, !dbg !7175
  store ptr %arraydecay, ptr %data, align 8, !dbg !7174
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #20, !dbg !7176
  call void @llvm.dbg.declare(metadata ptr %p, metadata !7159, metadata !DIExpression()), !dbg !7177
  %arraydecay2 = getelementptr inbounds [5 x i8], ptr %label_data, i64 0, i64 0, !dbg !7178
  store ptr %arraydecay2, ptr %p, align 8, !dbg !7177
  %2 = load i32, ptr %usage.addr, align 4, !dbg !7179
  %3 = call i32 @llvm.bswap.i32(i32 %2), !dbg !7179
  %4 = load ptr, ptr %p, align 8, !dbg !7180
  store i32 %3, ptr %4, align 4, !dbg !7181
  %5 = load i8, ptr %seed.addr, align 1, !dbg !7182
  %arrayidx = getelementptr [5 x i8], ptr %label_data, i64 0, i64 4, !dbg !7183
  store i8 %5, ptr %arrayidx, align 1, !dbg !7184
  %6 = load ptr, ptr %gk5e, align 8, !dbg !7185
  %derive_key = getelementptr inbounds %struct.gss_krb5_enctype, ptr %6, i32 0, i32 15, !dbg !7186
  %7 = load ptr, ptr %derive_key, align 8, !dbg !7186
  %8 = load ptr, ptr %gk5e, align 8, !dbg !7187
  %9 = load ptr, ptr %inkey.addr, align 8, !dbg !7188
  %10 = load ptr, ptr %outkey.addr, align 8, !dbg !7189
  %11 = load i32, ptr %gfp_mask.addr, align 4, !dbg !7190
  %call = call i32 %7(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %label, i32 noundef %11) #18, !dbg !7185
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #20, !dbg !7191
  call void @llvm.lifetime.end.p0(i64 16, ptr %label) #20, !dbg !7191
  call void @llvm.lifetime.end.p0(i64 5, ptr %label_data) #20, !dbg !7191
  call void @llvm.lifetime.end.p0(i64 8, ptr %gk5e) #20, !dbg !7191
  ret i32 %call, !dbg !7192
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @gss_krb5_alloc_cipher_v2(ptr noundef %cname, ptr noundef %key) #2 align 16 !dbg !7193 {
entry:
  %retval = alloca ptr, align 8
  %cname.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cname, ptr %cname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cname.addr, metadata !7197, metadata !DIExpression()), !dbg !7200
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7198, metadata !DIExpression()), !dbg !7201
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #20, !dbg !7202
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !7199, metadata !DIExpression()), !dbg !7203
  %0 = load ptr, ptr %cname.addr, align 8, !dbg !7204
  %call = call ptr @crypto_alloc_sync_skcipher(ptr noundef %0, i32 noundef 0, i32 noundef 0) #18, !dbg !7205
  store ptr %call, ptr %tfm, align 8, !dbg !7206
  %1 = load ptr, ptr %tfm, align 8, !dbg !7207
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #18, !dbg !7209
  br i1 %call1, label %if.then, label %if.end, !dbg !7210

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7211

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tfm, align 8, !dbg !7212
  %3 = load ptr, ptr %key.addr, align 8, !dbg !7214
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %3, i32 0, i32 1, !dbg !7215
  %4 = load ptr, ptr %data, align 8, !dbg !7215
  %5 = load ptr, ptr %key.addr, align 8, !dbg !7216
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %5, i32 0, i32 0, !dbg !7217
  %6 = load i32, ptr %len, align 8, !dbg !7217
  %call2 = call i32 @crypto_sync_skcipher_setkey(ptr noundef %2, ptr noundef %4, i32 noundef %6) #18, !dbg !7218
  %tobool = icmp ne i32 %call2, 0, !dbg !7218
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !7219

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %tfm, align 8, !dbg !7220
  call void @crypto_free_sync_skcipher(ptr noundef %7) #18, !dbg !7222
  store ptr null, ptr %retval, align 8, !dbg !7223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7223

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %tfm, align 8, !dbg !7224
  store ptr %8, ptr %retval, align 8, !dbg !7225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7225

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #20, !dbg !7226
  %9 = load ptr, ptr %retval, align 8, !dbg !7226
  ret ptr %9, !dbg !7226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @gss_krb5_alloc_hash_v2(ptr noundef %kctx, ptr noundef %key) #2 align 16 !dbg !7227 {
entry:
  %retval = alloca ptr, align 8
  %kctx.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %tfm = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kctx, ptr %kctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kctx.addr, metadata !7231, metadata !DIExpression()), !dbg !7234
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7232, metadata !DIExpression()), !dbg !7235
  call void @llvm.lifetime.start.p0(i64 8, ptr %tfm) #20, !dbg !7236
  call void @llvm.dbg.declare(metadata ptr %tfm, metadata !7233, metadata !DIExpression()), !dbg !7237
  %0 = load ptr, ptr %kctx.addr, align 8, !dbg !7238
  %gk5e = getelementptr inbounds %struct.krb5_ctx, ptr %0, i32 0, i32 3, !dbg !7239
  %1 = load ptr, ptr %gk5e, align 8, !dbg !7239
  %cksum_name = getelementptr inbounds %struct.gss_krb5_enctype, ptr %1, i32 0, i32 5, !dbg !7240
  %2 = load ptr, ptr %cksum_name, align 8, !dbg !7240
  %call = call ptr @crypto_alloc_ahash(ptr noundef %2, i32 noundef 0, i32 noundef 128) #18, !dbg !7241
  store ptr %call, ptr %tfm, align 8, !dbg !7242
  %3 = load ptr, ptr %tfm, align 8, !dbg !7243
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #18, !dbg !7245
  br i1 %call1, label %if.then, label %if.end, !dbg !7246

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !7247
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7247

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %tfm, align 8, !dbg !7248
  %5 = load ptr, ptr %key.addr, align 8, !dbg !7250
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %5, i32 0, i32 1, !dbg !7251
  %6 = load ptr, ptr %data, align 8, !dbg !7251
  %7 = load ptr, ptr %key.addr, align 8, !dbg !7252
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %7, i32 0, i32 0, !dbg !7253
  %8 = load i32, ptr %len, align 8, !dbg !7253
  %call2 = call i32 @crypto_ahash_setkey(ptr noundef %4, ptr noundef %6, i32 noundef %8) #18, !dbg !7254
  %tobool = icmp ne i32 %call2, 0, !dbg !7254
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !7255

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %tfm, align 8, !dbg !7256
  call void @crypto_free_ahash(ptr noundef %9) #18, !dbg !7258
  store ptr null, ptr %retval, align 8, !dbg !7259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7259

if.end4:                                          ; preds = %if.end
  %10 = load ptr, ptr %tfm, align 8, !dbg !7260
  store ptr %10, ptr %retval, align 8, !dbg !7261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7261

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tfm) #20, !dbg !7262
  %11 = load ptr, ptr %retval, align 8, !dbg !7262
  ret ptr %11, !dbg !7262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7263 dso_local void @kfree_sensitive(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_ahash(ptr noundef %tfm) #6 align 16 !dbg !7264 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7268, metadata !DIExpression()), !dbg !7269
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7270
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !7271
  %call = call ptr @crypto_ahash_tfm(ptr noundef %1) #18, !dbg !7272
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #18, !dbg !7273
  ret void, !dbg !7274
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_sync_skcipher(ptr noundef %tfm) #6 align 16 !dbg !7275 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7279, metadata !DIExpression()), !dbg !7280
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7281
  %base = getelementptr inbounds %struct.crypto_sync_skcipher, ptr %0, i32 0, i32 0, !dbg !7282
  call void @crypto_free_skcipher(ptr noundef %base) #18, !dbg !7283
  ret void, !dbg !7284
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7285 dso_local ptr @crypto_alloc_sync_skcipher(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @crypto_sync_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #6 align 16 !dbg !7288 {
entry:
  %tfm.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %keylen.addr = alloca i32, align 4
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7292, metadata !DIExpression()), !dbg !7295
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7293, metadata !DIExpression()), !dbg !7296
  store i32 %keylen, ptr %keylen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %keylen.addr, metadata !7294, metadata !DIExpression()), !dbg !7297
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7298
  %base = getelementptr inbounds %struct.crypto_sync_skcipher, ptr %0, i32 0, i32 0, !dbg !7299
  %1 = load ptr, ptr %key.addr, align 8, !dbg !7300
  %2 = load i32, ptr %keylen.addr, align 4, !dbg !7301
  %call = call i32 @crypto_skcipher_setkey(ptr noundef %base, ptr noundef %1, i32 noundef %2) #18, !dbg !7302
  ret i32 %call, !dbg !7303
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7304 dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7308 dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7311 dso_local i32 @crypto_ahash_setkey(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7312 dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_ahash_tfm(ptr noundef %tfm) #6 align 16 !dbg !7315 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7319, metadata !DIExpression()), !dbg !7320
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7321
  %base = getelementptr inbounds %struct.crypto_ahash, ptr %0, i32 0, i32 10, !dbg !7322
  ret ptr %base, !dbg !7323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @crypto_free_skcipher(ptr noundef %tfm) #6 align 16 !dbg !7324 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7328, metadata !DIExpression()), !dbg !7329
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7330
  %1 = load ptr, ptr %tfm.addr, align 8, !dbg !7331
  %call = call ptr @crypto_skcipher_tfm(ptr noundef %1) #18, !dbg !7332
  call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %call) #18, !dbg !7333
  ret void, !dbg !7334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @crypto_skcipher_tfm(ptr noundef %tfm) #6 align 16 !dbg !7335 {
entry:
  %tfm.addr = alloca ptr, align 8
  store ptr %tfm, ptr %tfm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tfm.addr, metadata !7339, metadata !DIExpression()), !dbg !7340
  %0 = load ptr, ptr %tfm.addr, align 8, !dbg !7341
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %0, i32 0, i32 1, !dbg !7342
  ret ptr %base, !dbg !7343
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @gss_krb5_prepare_enctype_priority_list() #2 align 16 !dbg !5976 {
entry:
  %total = alloca i64, align 8
  %i = alloca i64, align 8
  %buf = alloca [16 x i8], align 16
  %sep = alloca ptr, align 8
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %total) #20, !dbg !7344
  call void @llvm.dbg.declare(metadata ptr %total, metadata !5978, metadata !DIExpression()), !dbg !7345
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #20, !dbg !7344
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5979, metadata !DIExpression()), !dbg !7346
  call void @llvm.lifetime.start.p0(i64 16, ptr %buf) #20, !dbg !7347
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5980, metadata !DIExpression()), !dbg !7348
  call void @llvm.lifetime.start.p0(i64 8, ptr %sep) #20, !dbg !7349
  call void @llvm.dbg.declare(metadata ptr %sep, metadata !5981, metadata !DIExpression()), !dbg !7350
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #20, !dbg !7351
  call void @llvm.dbg.declare(metadata ptr %n, metadata !5982, metadata !DIExpression()), !dbg !7352
  store ptr @.str.5, ptr %sep, align 8, !dbg !7353
  store i8 0, ptr @gss_krb5_enctype_priority_list, align 16, !dbg !7354
  store i64 0, ptr %total, align 8, !dbg !7355
  store i64 0, ptr %i, align 8, !dbg !7357
  br label %for.cond, !dbg !7358

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !7359
  %cmp = icmp ult i64 %0, 0, !dbg !7361
  br i1 %cmp, label %for.body, label %for.end, !dbg !7362

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !dbg !7363
  %1 = load ptr, ptr %sep, align 8, !dbg !7365
  %2 = load i64, ptr %i, align 8, !dbg !7366
  %arrayidx = getelementptr [0 x i32], ptr @gss_krb5_prepare_enctype_priority_list.gss_krb5_enctypes, i64 0, i64 %2, !dbg !7367
  %3 = load i32, ptr %arrayidx, align 4, !dbg !7367
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.6, ptr noundef %1, i32 noundef %3) #18, !dbg !7368
  store i32 %call, ptr %n, align 4, !dbg !7369
  %4 = load i32, ptr %n, align 4, !dbg !7370
  %cmp1 = icmp slt i32 %4, 0, !dbg !7372
  br i1 %cmp1, label %if.then, label %if.end, !dbg !7373

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !7374

if.end:                                           ; preds = %for.body
  %5 = load i64, ptr %total, align 8, !dbg !7375
  %6 = load i32, ptr %n, align 4, !dbg !7377
  %conv = sext i32 %6 to i64, !dbg !7377
  %add = add i64 %5, %conv, !dbg !7378
  %cmp2 = icmp uge i64 %add, 64, !dbg !7379
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !7380

if.then4:                                         ; preds = %if.end
  br label %for.end, !dbg !7381

if.end5:                                          ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [16 x i8], ptr %buf, i64 0, i64 0, !dbg !7382
  %call7 = call ptr @strcat(ptr noundef @gss_krb5_enctype_priority_list, ptr noundef %arraydecay6) #18, !dbg !7383
  store ptr @.str.7, ptr %sep, align 8, !dbg !7384
  %7 = load i32, ptr %n, align 4, !dbg !7385
  %conv8 = sext i32 %7 to i64, !dbg !7385
  %8 = load i64, ptr %total, align 8, !dbg !7386
  %add9 = add i64 %8, %conv8, !dbg !7386
  store i64 %add9, ptr %total, align 8, !dbg !7386
  br label %for.inc, !dbg !7387

for.inc:                                          ; preds = %if.end5
  %9 = load i64, ptr %i, align 8, !dbg !7388
  %inc = add i64 %9, 1, !dbg !7388
  store i64 %inc, ptr %i, align 8, !dbg !7388
  br label %for.cond, !dbg !7389, !llvm.loop !7390

for.end:                                          ; preds = %if.then4, %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #20, !dbg !7392
  call void @llvm.lifetime.end.p0(i64 8, ptr %sep) #20, !dbg !7392
  call void @llvm.lifetime.end.p0(i64 16, ptr %buf) #20, !dbg !7392
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #20, !dbg !7392
  call void @llvm.lifetime.end.p0(i64 8, ptr %total) #20, !dbg !7392
  ret void, !dbg !7392
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7393 dso_local i32 @gss_mech_register(ptr noundef) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !7396 dso_local i32 @_printk(ptr noundef, ...) #17

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7400 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7404 dso_local ptr @strcat(ptr noundef, ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { nounwind }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(1) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5995, !5996, !5997, !5998, !5999, !6000, !6001, !6002}
!llvm.ident = !{!6003}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias343", scope: !2, file: !3, line: 628, type: !5992, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/sunrpc/auth_gss/.gss_krb5_mech.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/sunrpc/auth_gss/rpcsec_gss_krb5\22 -D KBUILD_BASENAME=\22gss_krb5_mech\22 -D KBUILD_MODNAME=\22rpcsec_gss_krb5\22 -D __KBUILD_MODNAME=kmod_rpcsec_gss_krb5 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/sunrpc/auth_gss/gss_krb5_mech.ll net/sunrpc/auth_gss/gss_krb5_mech.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !211, globals: !5333, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/sunrpc/auth_gss/gss_krb5_mech.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4909c66975899055f1a038975e15805e")
!4 = !{!5, !13, !18, !26, !34, !50, !56, !61, !67, !163, !170, !177, !183, !196, !201}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !27, line: 68, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!32 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !35, line: 1325, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!37 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!38 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!39 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!40 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!41 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!42 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!43 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!44 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!45 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!46 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!47 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!48 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!49 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !69, file: !68, line: 147, baseType: !7, size: 32, elements: !160)
!68 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !68, line: 135, size: 512, elements: !70)
!70 = !{!71, !75, !77, !79, !83, !84, !100, !158, !159}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !69, file: !68, line: 136, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !69, file: !68, line: 137, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !69, file: !68, line: 138, baseType: !78, size: 32, offset: 128)
!78 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !69, file: !68, line: 139, baseType: !80, size: 16, offset: 160)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !81, line: 24, baseType: !82)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !69, file: !68, line: 150, baseType: !67, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !69, file: !68, line: 151, baseType: !85, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !68, line: 64, baseType: !87)
!87 = !DISubroutineType(types: !88)
!88 = !{!78, !89, !78, !76, !90, !96}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 61, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !93, line: 72, baseType: !94)
!93 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !93, line: 16, baseType: !95)
!95 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !81, line: 52, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !93, line: 88, baseType: !99)
!99 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !69, file: !68, line: 152, baseType: !101, size: 64, offset: 320)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !68, line: 117, size: 256, elements: !103)
!103 = !{!104, !109}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !102, file: !68, line: 118, baseType: !105, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !81, line: 174, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 172, size: 32, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !106, file: !81, line: 173, baseType: !78, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !102, file: !68, line: 119, baseType: !110, size: 192, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !111, line: 41, baseType: !112)
!111 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !111, line: 37, size: 192, elements: !113)
!113 = !{!114, !152}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !112, file: !111, line: 38, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !116, line: 29, baseType: !117)
!116 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !116, line: 17, size: 32, elements: !118)
!118 = !{!119}
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !117, file: !116, line: 18, baseType: !120, size: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !117, file: !116, line: 18, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !120, file: !116, line: 19, baseType: !123, size: 32)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !124, line: 14, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !123, file: !124, line: 15, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !128, line: 44, baseType: !129)
!128 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !128, line: 14, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !128, line: 15, baseType: !132, size: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !128, line: 15, size: 32, elements: !133)
!133 = !{!134, !135, !145}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !132, file: !128, line: 16, baseType: !105, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !128, line: 24, baseType: !136, size: 16)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !128, line: 24, size: 16, elements: !137)
!137 = !{!138, !144}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !136, file: !128, line: 25, baseType: !139, size: 8)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !140, line: 17, baseType: !141)
!140 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !142, line: 21, baseType: !143)
!142 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!143 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !136, file: !128, line: 26, baseType: !139, size: 8, offset: 8)
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !128, line: 28, baseType: !146, size: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !128, line: 28, size: 32, elements: !147)
!147 = !{!148, !151}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !146, file: !128, line: 29, baseType: !149, size: 16)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !140, line: 19, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !142, line: 24, baseType: !82)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !146, file: !128, line: 30, baseType: !149, size: 16, offset: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !112, file: !111, line: 39, baseType: !153, size: 128, offset: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 190, size: 128, elements: !154)
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !81, line: 191, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !153, file: !81, line: 191, baseType: !156, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !69, file: !68, line: 153, baseType: !76, size: 64, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !69, file: !68, line: 154, baseType: !76, size: 64, offset: 448)
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!162 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !164, line: 51, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!167 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!168 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!169 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "svc_auth_status", file: !184, line: 86, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/sunrpc/svcauth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3cd899d1744b060a6cba0ad6a24cb428")
!185 = !{!186, !187, !188, !189, !190, !191, !192, !193, !194, !195}
!186 = !DIEnumerator(name: "SVC_GARBAGE", value: 1)
!187 = !DIEnumerator(name: "SVC_SYSERR", value: 2)
!188 = !DIEnumerator(name: "SVC_VALID", value: 3)
!189 = !DIEnumerator(name: "SVC_NEGATIVE", value: 4)
!190 = !DIEnumerator(name: "SVC_OK", value: 5)
!191 = !DIEnumerator(name: "SVC_DROP", value: 6)
!192 = !DIEnumerator(name: "SVC_CLOSE", value: 7)
!193 = !DIEnumerator(name: "SVC_DENIED", value: 8)
!194 = !DIEnumerator(name: "SVC_PENDING", value: 9)
!195 = !DIEnumerator(name: "SVC_COMPLETE", value: 10)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !197, line: 10, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!198 = !{!199, !200}
!199 = !DIEnumerator(name: "false", value: 0)
!200 = !DIEnumerator(name: "true", value: 1)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !202, line: 364, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!203 = !{!204, !205, !206, !207, !208, !209, !210}
!204 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!205 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!206 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!207 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!208 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!209 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!210 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!211 = !{!76, !212, !1319, !72, !1467, !95, !819, !5326, !5328, !5330, !78, !5332, !2797, !410, !301}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !214)
!214 = !{!215, !216, !217, !221, !5012, !5038, !5039, !5040, !5041, !5045, !5048, !5049, !5050, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5117, !5121, !5137, !5154, !5155, !5156, !5157, !5166, !5189, !5190, !5193, !5196, !5197, !5198, !5199, !5200, !5201, !5202, !5207, !5208, !5287, !5295, !5296, !5297, !5299, !5303, !5304, !5308, !5309, !5310, !5311, !5312, !5313, !5314, !5321, !5322, !5323, !5325}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !213, file: !6, line: 403, baseType: !5, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !213, file: !6, line: 406, baseType: !153, size: 128, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !6, line: 409, baseType: !218, size: 448, offset: 192)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 448, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 56)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !213, file: !6, line: 417, baseType: !222, size: 768, offset: 640)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !223)
!223 = !{!224, !5006, !5007, !5008, !5011}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !222, file: !6, line: 46, baseType: !225, size: 512)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !226, line: 64, size: 512, elements: !227)
!226 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!227 = !{!228, !229, !230, !232, !279, !4905, !4996, !5001, !5002, !5003, !5004, !5005}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !226, line: 65, baseType: !72, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !225, file: !226, line: 66, baseType: !153, size: 128, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !225, file: !226, line: 67, baseType: !231, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !225, file: !226, line: 68, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !226, line: 168, size: 768, elements: !235)
!235 = !{!236, !237, !238, !239}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !234, file: !226, line: 169, baseType: !153, size: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !234, file: !226, line: 170, baseType: !115, size: 32, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !234, file: !226, line: 171, baseType: !225, size: 512, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !234, file: !226, line: 172, baseType: !240, size: 64, offset: 704)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !226, line: 133, size: 192, elements: !243)
!243 = !{!244, !251, !256}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !242, file: !226, line: 134, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!78, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !242, file: !226, line: 135, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!72, !249}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !242, file: !226, line: 136, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!78, !249, !261}
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !226, line: 125, size: 20736, elements: !263)
!263 = !{!264, !269, !273, !274, !278}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !262, file: !226, line: 126, baseType: !265, size: 192)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 192, elements: !267)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!267 = !{!268}
!268 = !DISubrange(count: 3)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !262, file: !226, line: 127, baseType: !270, size: 4096, offset: 192)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 4096, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !262, file: !226, line: 128, baseType: !78, size: 32, offset: 4288)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !262, file: !226, line: 129, baseType: !275, size: 16384, offset: 4320)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 16384, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 2048)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !262, file: !226, line: 130, baseType: !78, size: 32, offset: 20704)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !225, file: !226, line: 69, baseType: !280, size: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !226, line: 116, size: 384, elements: !283)
!283 = !{!284, !288, !311, !4871, !4897, !4901}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !282, file: !226, line: 117, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !231}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !282, file: !226, line: 118, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !292, line: 254, size: 128, elements: !293)
!292 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!293 = !{!294, !307}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !291, file: !292, line: 255, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !231, !302, !266}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 66, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !93, line: 73, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !93, line: 15, baseType: !301)
!301 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !292, line: 30, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !303, file: !292, line: 31, baseType: !72, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !303, file: !292, line: 32, baseType: !80, size: 16, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !291, file: !292, line: 256, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!298, !231, !302, !72, !91}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !282, file: !226, line: 119, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !292, line: 84, size: 320, elements: !316)
!316 = !{!317, !318, !322, !4867, !4869}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !292, line: 85, baseType: !72, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !315, file: !292, line: 86, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!80, !231, !302, !78}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !315, file: !292, line: 88, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!80, !231, !326, !78}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !292, line: 175, size: 512, elements: !328)
!328 = !{!329, !330, !331, !332, !4858, !4862, !4863}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !327, file: !292, line: 176, baseType: !303, size: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !327, file: !292, line: 177, baseType: !91, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !327, file: !292, line: 178, baseType: !76, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !327, file: !292, line: 179, baseType: !333, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !338)
!338 = !{!339, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4852, !4853, !4854, !4855, !4856, !4857}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !337, file: !14, line: 473, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !342)
!342 = !{!343, !344, !345, !353, !354, !361, !362, !365, !366, !4631, !4632, !4633, !4634, !4635, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4664, !4665, !4666, !4667, !4668, !4669, !4670, !4675, !4678, !4679, !4680, !4689, !4690, !4691, !4692}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !341, file: !14, line: 642, baseType: !80, size: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !341, file: !14, line: 643, baseType: !82, size: 16, offset: 16)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !341, file: !14, line: 644, baseType: !346, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !347, line: 23, baseType: !348)
!347 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 21, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !348, file: !347, line: 22, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 37, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !93, line: 49, baseType: !7)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !341, file: !14, line: 645, baseType: !153, size: 128, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !341, file: !14, line: 646, baseType: !355, size: 32, offset: 192)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !347, line: 28, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 26, size: 32, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !356, file: !347, line: 27, baseType: !359, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 38, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !93, line: 50, baseType: !7)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !341, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !341, file: !14, line: 650, baseType: !363, size: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !341, file: !14, line: 651, baseType: !363, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !341, file: !14, line: 654, baseType: !367, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !370)
!370 = !{!371, !4462, !4475, !4479, !4483, !4487, !4491, !4495, !4499, !4503, !4507, !4508, !4512, !4516, !4553, !4582, !4586, !4592, !4596, !4600, !4604, !4608, !4612, !4618, !4622}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !369, file: !14, line: 1967, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!375, !340, !375, !7}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !377, line: 82, size: 1536, elements: !378)
!377 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!378 = !{!379, !380, !390, !398, !399, !419, !420, !424, !437, !4445, !4446, !4447, !4448, !4454, !4455, !4456}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !376, file: !377, line: 84, baseType: !7, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !376, file: !377, line: 85, baseType: !381, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !382, line: 275, baseType: !383)
!382 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !382, line: 275, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !383, file: !382, line: 275, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !382, line: 69, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !382, line: 64, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !387, file: !382, line: 65, baseType: !7, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !376, file: !377, line: 86, baseType: !391, size: 128, offset: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !392, line: 38, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !392, line: 39, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !391, file: !392, line: 39, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !376, file: !377, line: 87, baseType: !375, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !376, file: !377, line: 88, baseType: !400, size: 128, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !377, line: 49, size: 128, elements: !401)
!401 = !{!402, !416}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !377, line: 50, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !377, line: 50, size: 64, elements: !404)
!404 = !{!405, !412}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !377, line: 51, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !403, file: !377, line: 51, size: 64, elements: !407)
!407 = !{!408, !411}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !406, file: !377, line: 52, baseType: !409, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !140, line: 21, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !142, line: 27, baseType: !7)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !406, file: !377, line: 52, baseType: !409, size: 32, offset: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !403, file: !377, line: 54, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !140, line: 23, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !142, line: 31, baseType: !415)
!415 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !377, line: 56, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !376, file: !377, line: 89, baseType: !340, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !376, file: !377, line: 91, baseType: !421, size: 256, offset: 448)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !376, file: !377, line: 94, baseType: !425, size: 64, offset: 704)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !426, line: 25, size: 64, elements: !427)
!426 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, scope: !425, file: !426, line: 26, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !425, file: !426, line: 26, size: 64, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !429, file: !426, line: 28, baseType: !414, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !426, line: 30, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !426, line: 30, size: 64, elements: !434)
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !426, line: 31, baseType: !115, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !433, file: !426, line: 32, baseType: !78, size: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !376, file: !377, line: 95, baseType: !438, size: 64, offset: 768)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !377, line: 128, size: 1024, align: 512, elements: !441)
!441 = !{!442, !446, !447, !454, !460, !464, !468, !472, !473, !477, !481, !4435, !4439}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !440, file: !377, line: 129, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!78, !375, !7}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !440, file: !377, line: 130, baseType: !443, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !440, file: !377, line: 131, baseType: !448, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!78, !451, !453}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !440, file: !377, line: 132, baseType: !455, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!78, !451, !7, !72, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !440, file: !377, line: 134, baseType: !461, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!78, !451}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !440, file: !377, line: 135, baseType: !465, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!78, !375}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !440, file: !377, line: 136, baseType: !469, size: 64, offset: 384)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !375}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !440, file: !377, line: 137, baseType: !469, size: 64, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !440, file: !377, line: 138, baseType: !474, size: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !375, !340}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !440, file: !377, line: 139, baseType: !478, size: 64, offset: 576)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!266, !375, !266, !78}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !440, file: !377, line: 140, baseType: !482, size: 64, offset: 640)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !4434}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !487, line: 70, size: 256, elements: !488)
!487 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!488 = !{!489, !490, !4430, !4431}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !486, file: !487, line: 71, baseType: !375, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !486, file: !487, line: 72, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !493)
!493 = !{!494, !495, !498, !499, !500, !501, !550, !1753, !1793, !1878, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1895, !1899, !1900, !1903, !1906, !1909, !1912, !1913, !1914, !1955, !4364, !4365, !4366, !4367, !4368, !4369, !4372, !4374, !4380, !4381, !4382, !4383, !4384, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !492, file: !14, line: 1191, baseType: !153, size: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !492, file: !14, line: 1192, baseType: !496, size: 32, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !81, line: 21, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !81, line: 18, baseType: !409)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !492, file: !14, line: 1193, baseType: !143, size: 8, offset: 160)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !492, file: !14, line: 1194, baseType: !95, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !492, file: !14, line: 1195, baseType: !97, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !492, file: !14, line: 1196, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !504)
!504 = !{!505, !506, !507, !514, !518, !522, !526, !527, !528, !538, !542, !543, !544, !546, !547, !548, !549}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !14, line: 2367, baseType: !72, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !503, file: !14, line: 2368, baseType: !78, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !503, file: !14, line: 2376, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!78, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !513, line: 32, flags: DIFlagFwdDecl)
!513 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!514 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !503, file: !14, line: 2377, baseType: !515, size: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !503, file: !14, line: 2378, baseType: !519, size: 64, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!375, !502, !78, !72, !76}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !503, file: !14, line: 2380, baseType: !523, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !491}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !503, file: !14, line: 2381, baseType: !212, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !14, line: 2382, baseType: !502, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !503, file: !14, line: 2383, baseType: !529, size: 64, offset: 512)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !81, line: 194, size: 64, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !529, file: !81, line: 195, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !81, line: 198, size: 128, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !533, file: !81, line: 199, baseType: !532, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !533, file: !81, line: 199, baseType: !537, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !503, file: !14, line: 2385, baseType: !539, offset: 576)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !540, line: 206, elements: !541)
!540 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!541 = !{}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !503, file: !14, line: 2386, baseType: !539, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !503, file: !14, line: 2387, baseType: !539, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !503, file: !14, line: 2388, baseType: !545, offset: 576)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, elements: !267)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !503, file: !14, line: 2390, baseType: !539, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !503, file: !14, line: 2391, baseType: !539, offset: 576)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !503, file: !14, line: 2392, baseType: !539, offset: 576)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !503, file: !14, line: 2393, baseType: !539, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !492, file: !14, line: 1197, baseType: !551, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !554)
!554 = !{!555, !559, !563, !564, !568, !574, !578, !579, !580, !584, !588, !592, !593, !594, !600, !605, !606, !1678, !1679, !1680, !1681, !1685, !1689, !1736, !1751, !1752}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !553, file: !14, line: 2058, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!340, !491}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !553, file: !14, line: 2059, baseType: !560, size: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !340}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !553, file: !14, line: 2060, baseType: !560, size: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !553, file: !14, line: 2062, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !340, !78}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !553, file: !14, line: 2063, baseType: !569, size: 64, offset: 256)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!78, !340, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !553, file: !14, line: 2064, baseType: !575, size: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!78, !340}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !553, file: !14, line: 2065, baseType: !560, size: 64, offset: 384)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !553, file: !14, line: 2066, baseType: !523, size: 64, offset: 448)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !553, file: !14, line: 2067, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!78, !491, !78}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !553, file: !14, line: 2068, baseType: !585, size: 64, offset: 576)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!78, !491, !13}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !553, file: !14, line: 2069, baseType: !589, size: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!78, !491}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !553, file: !14, line: 2070, baseType: !585, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !553, file: !14, line: 2071, baseType: !589, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !553, file: !14, line: 2072, baseType: !595, size: 64, offset: 832)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!78, !375, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !553, file: !14, line: 2073, baseType: !601, size: 64, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!78, !491, !604, !266}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !553, file: !14, line: 2074, baseType: !523, size: 64, offset: 960)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !553, file: !14, line: 2076, baseType: !607, size: 64, offset: 1024)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!78, !610, !375}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !612, line: 17, size: 960, elements: !613)
!612 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!613 = !{!614, !615, !616, !617, !618, !619, !620, !621, !642, !663, !664, !1677}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !611, file: !612, line: 18, baseType: !266, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !611, file: !612, line: 19, baseType: !91, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !611, file: !612, line: 20, baseType: !91, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !611, file: !612, line: 21, baseType: !91, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !611, file: !612, line: 22, baseType: !91, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !611, file: !612, line: 23, baseType: !97, size: 64, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !611, file: !612, line: 24, baseType: !97, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !611, file: !612, line: 25, baseType: !622, size: 256, offset: 448)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !623, line: 66, size: 256, elements: !624)
!623 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!624 = !{!625, !634, !636, !641}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !622, file: !623, line: 67, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !627, line: 13, baseType: !628)
!627 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !81, line: 181, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 179, size: 64, elements: !630)
!630 = !{!631}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !629, file: !81, line: 180, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !140, line: 22, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !142, line: 30, baseType: !99)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !622, file: !623, line: 68, baseType: !635, size: 32, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !124, line: 23, baseType: !123)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !622, file: !623, line: 70, baseType: !637, size: 32, offset: 96)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !638, line: 15, size: 32, elements: !639)
!638 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !637, file: !638, line: 20, baseType: !105, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !622, file: !623, line: 72, baseType: !153, size: 128, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !611, file: !612, line: 26, baseType: !643, size: 64, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !612, line: 32, size: 256, elements: !646)
!646 = !{!647, !651, !655, !659}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !645, file: !612, line: 33, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!76, !610, !96}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !645, file: !612, line: 34, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !610, !76}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !645, file: !612, line: 35, baseType: !656, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!76, !610, !76, !96}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !645, file: !612, line: 36, baseType: !660, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!78, !610, !76}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !611, file: !612, line: 27, baseType: !78, size: 32, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !611, file: !612, line: 28, baseType: !665, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !667)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !668)
!668 = !{!669, !688, !689, !691, !692, !693, !694, !695, !752, !964, !973, !979, !980, !1667, !1668, !1669, !1670, !1672, !1673, !1676}
!669 = !DIDerivedType(tag: DW_TAG_member, scope: !667, file: !14, line: 995, baseType: !670, size: 128)
!670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !667, file: !14, line: 995, size: 128, elements: !671)
!671 = !{!672, !678, !687}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !670, file: !14, line: 996, baseType: !673, size: 64)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !674, line: 60, size: 64, elements: !675)
!674 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !673, file: !674, line: 61, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !670, file: !14, line: 997, baseType: !679, size: 128, align: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !81, line: 232, size: 128, align: 64, elements: !680)
!680 = !{!681, !683}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !679, file: !81, line: 233, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !679, file: !81, line: 234, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !682}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !670, file: !14, line: 998, baseType: !7, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !667, file: !14, line: 1005, baseType: !115, size: 32, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !667, file: !14, line: 1006, baseType: !690, size: 32, offset: 160)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !81, line: 156, baseType: !7)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !667, file: !14, line: 1007, baseType: !626, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !667, file: !14, line: 1008, baseType: !622, size: 256, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !667, file: !14, line: 1009, baseType: !97, size: 64, offset: 512)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !667, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !667, file: !14, line: 1011, baseType: !696, size: 256, offset: 640)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !697)
!697 = !{!698, !719, !748, !749, !750, !751}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !696, file: !14, line: 949, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !700, line: 34, baseType: !701)
!700 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !700, line: 25, size: 64, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !701, file: !700, line: 26, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !705, line: 27, baseType: !706)
!705 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !705, line: 13, size: 64, elements: !707)
!707 = !{!708, !718}
!708 = !DIDerivedType(tag: DW_TAG_member, scope: !706, file: !705, line: 14, baseType: !709, size: 32)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !705, line: 14, size: 32, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !709, file: !705, line: 15, baseType: !105, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !709, file: !705, line: 16, baseType: !713, size: 32)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !709, file: !705, line: 16, size: 32, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !713, file: !705, line: 18, baseType: !139, size: 8)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !713, file: !705, line: 19, baseType: !717, size: 24, offset: 8)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 24, elements: !267)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !706, file: !705, line: 26, baseType: !127, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !696, file: !14, line: 950, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !722)
!722 = !{!723, !729, !730, !731, !735, !736, !737, !738}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !721, file: !19, line: 61, baseType: !724, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !725, line: 113, baseType: !726)
!725 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !725, line: 111, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !726, file: !725, line: 112, baseType: !105, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !721, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !721, file: !19, line: 63, baseType: !115, size: 32, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !721, file: !19, line: 65, baseType: !732, size: 256, offset: 128)
!732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 256, elements: !733)
!733 = !{!734}
!734 = !DISubrange(count: 4)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !721, file: !19, line: 66, baseType: !529, size: 64, offset: 384)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !721, file: !19, line: 68, baseType: !110, size: 192, offset: 448)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !721, file: !19, line: 69, baseType: !679, size: 128, align: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !721, file: !19, line: 70, baseType: !739, offset: 768)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, elements: !746)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !741)
!741 = !{!742, !743}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !740, file: !19, line: 55, baseType: !78, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !740, file: !19, line: 56, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!746 = !{!747}
!747 = !DISubrange(count: -1)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !696, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !696, file: !14, line: 952, baseType: !346, size: 32, offset: 160)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !696, file: !14, line: 952, baseType: !346, size: 32, offset: 192)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !696, file: !14, line: 953, baseType: !78, size: 32, offset: 224)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !667, file: !14, line: 1012, baseType: !753, size: 64, offset: 896)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !756, line: 110, size: 1472, elements: !757)
!756 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!757 = !{!758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !774, !775, !776, !777, !778, !779, !909, !910, !911, !912, !913, !944, !947, !951, !959}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !755, file: !756, line: 111, baseType: !626, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !755, file: !756, line: 112, baseType: !346, size: 32, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !755, file: !756, line: 113, baseType: !355, size: 32, offset: 96)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !755, file: !756, line: 114, baseType: !346, size: 32, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !755, file: !756, line: 115, baseType: !355, size: 32, offset: 160)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !755, file: !756, line: 116, baseType: !346, size: 32, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !755, file: !756, line: 117, baseType: !355, size: 32, offset: 224)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !755, file: !756, line: 118, baseType: !346, size: 32, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !755, file: !756, line: 119, baseType: !355, size: 32, offset: 288)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !755, file: !756, line: 120, baseType: !7, size: 32, offset: 320)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !755, file: !756, line: 121, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !770, line: 24, baseType: !771)
!770 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !770, line: 24, size: 64, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !771, file: !770, line: 24, baseType: !413, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !755, file: !756, line: 122, baseType: !769, size: 64, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !755, file: !756, line: 123, baseType: !769, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !755, file: !756, line: 124, baseType: !769, size: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !755, file: !756, line: 125, baseType: !769, size: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !755, file: !756, line: 127, baseType: !143, size: 8, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !755, file: !756, line: 129, baseType: !780, size: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !782, line: 195, size: 1728, elements: !783)
!782 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!783 = !{!784, !785, !790, !802, !811, !814, !815, !822, !823, !824, !825, !828, !829, !830, !832, !833, !873, !894}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !781, file: !782, line: 196, baseType: !724, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !781, file: !782, line: 197, baseType: !786, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !782, line: 28, baseType: !787)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !81, line: 104, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !140, line: 20, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !142, line: 26, baseType: !78)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 198, baseType: !791, size: 192, offset: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 198, size: 192, elements: !792)
!792 = !{!793, !794}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !791, file: !782, line: 199, baseType: !153, size: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !791, file: !782, line: 200, baseType: !795, size: 192, align: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !796, line: 5, size: 192, align: 64, elements: !797)
!796 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!797 = !{!798, !799, !801}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !795, file: !796, line: 6, baseType: !95, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !795, file: !796, line: 7, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !795, file: !796, line: 8, baseType: !800, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !781, file: !782, line: 205, baseType: !803, size: 320, offset: 256)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !804, line: 48, size: 320, elements: !805)
!804 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!805 = !{!806, !807, !808, !809, !810}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !803, file: !804, line: 49, baseType: !626, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !803, file: !804, line: 55, baseType: !626, size: 64, offset: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !803, file: !804, line: 57, baseType: !637, size: 32, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !803, file: !804, line: 59, baseType: !635, size: 32, offset: 160)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !803, file: !804, line: 60, baseType: !153, size: 128, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !781, file: !782, line: 206, baseType: !812, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !782, line: 206, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !781, file: !782, line: 207, baseType: !76, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 208, baseType: !816, size: 64, offset: 704)
!816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 208, size: 64, elements: !817)
!817 = !{!818, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !816, file: !782, line: 209, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !820, line: 8, baseType: !633)
!820 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!821 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !816, file: !782, line: 210, baseType: !819, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !781, file: !782, line: 212, baseType: !819, size: 64, offset: 768)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !781, file: !782, line: 213, baseType: !346, size: 32, offset: 832)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !781, file: !782, line: 214, baseType: !355, size: 32, offset: 864)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !781, file: !782, line: 215, baseType: !826, size: 32, offset: 896)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !782, line: 31, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !81, line: 110, baseType: !409)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !781, file: !782, line: 216, baseType: !82, size: 16, offset: 928)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !781, file: !782, line: 217, baseType: !82, size: 16, offset: 944)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !781, file: !782, line: 221, baseType: !831, size: 16, offset: 960)
!831 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !782, line: 228, baseType: !95, size: 64, offset: 1024)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 245, baseType: !834, size: 320, offset: 1088)
!834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 245, size: 320, elements: !835)
!835 = !{!836, !865}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !834, file: !782, line: 246, baseType: !837, size: 320)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !782, line: 114, size: 320, elements: !838)
!838 = !{!839, !840, !852, !855, !864}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !837, file: !782, line: 116, baseType: !95, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, scope: !837, file: !782, line: 117, baseType: !841, size: 64, offset: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !837, file: !782, line: 117, size: 64, elements: !842)
!842 = !{!843, !851}
!843 = !DIDerivedType(tag: DW_TAG_member, scope: !841, file: !782, line: 118, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !841, file: !782, line: 118, size: 64, elements: !845)
!845 = !{!846, !847}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !844, file: !782, line: 120, baseType: !149, size: 16)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !844, file: !782, line: 121, baseType: !848, size: 48, offset: 16)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 48, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 6)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !841, file: !782, line: 127, baseType: !95, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !837, file: !782, line: 129, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !782, line: 102, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !837, file: !782, line: 130, baseType: !856, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !782, line: 108, size: 192, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !857, file: !782, line: 109, baseType: !679, size: 128, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !857, file: !782, line: 110, baseType: !724, size: 32, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !857, file: !782, line: 111, baseType: !862, size: 8, offset: 160)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 35, baseType: !863)
!863 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !837, file: !782, line: 131, baseType: !72, size: 64, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !782, line: 247, baseType: !866, size: 320)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !834, file: !782, line: 247, size: 320, elements: !867)
!867 = !{!868, !869, !870, !871, !872}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !866, file: !782, line: 248, baseType: !95, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !866, file: !782, line: 249, baseType: !95, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !866, file: !782, line: 250, baseType: !853, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !866, file: !782, line: 251, baseType: !856, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !866, file: !782, line: 252, baseType: !266, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !782, line: 260, baseType: !874, size: 256, offset: 1408)
!874 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !782, line: 260, size: 256, elements: !875)
!875 = !{!876, !882}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !874, file: !782, line: 261, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !782, line: 134, size: 256, elements: !878)
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !877, file: !782, line: 135, baseType: !76, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !877, file: !782, line: 136, baseType: !881, size: 256)
!881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !733)
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !782, line: 262, baseType: !883, size: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !874, file: !782, line: 262, size: 256, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !883, file: !782, line: 264, baseType: !153, size: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !883, file: !782, line: 265, baseType: !887, size: 128, offset: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !888, line: 22, size: 128, elements: !889)
!888 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!889 = !{!890, !893}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !887, file: !888, line: 23, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !888, line: 23, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !887, file: !888, line: 24, baseType: !95, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !781, file: !782, line: 280, baseType: !895, size: 64, offset: 1664)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !782, line: 176, size: 192, elements: !897)
!897 = !{!898, !907, !908}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !896, file: !782, line: 177, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !782, line: 171, baseType: !900)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!78, !780, !903, !905, !780}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !896, file: !782, line: 178, baseType: !780, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !896, file: !782, line: 179, baseType: !853, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !755, file: !756, line: 130, baseType: !780, size: 64, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !755, file: !756, line: 131, baseType: !780, size: 64, offset: 896)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !755, file: !756, line: 132, baseType: !780, size: 64, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !755, file: !756, line: 135, baseType: !76, size: 64, offset: 1024)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !755, file: !756, line: 137, baseType: !914, size: 64, offset: 1088)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !916, line: 14, size: 1088, elements: !917)
!916 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!917 = !{!918, !919, !928, !929, !930, !931, !932, !933}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !915, file: !916, line: 15, baseType: !724, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !915, file: !916, line: 17, baseType: !920, size: 320, offset: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !921, line: 22, size: 320, elements: !922)
!921 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!922 = !{!923, !924, !925, !926}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !920, file: !921, line: 23, baseType: !635, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !920, file: !921, line: 24, baseType: !632, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !920, file: !921, line: 26, baseType: !153, size: 128, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !920, file: !921, line: 28, baseType: !927, size: 64, offset: 256)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !915, file: !916, line: 19, baseType: !95, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !915, file: !916, line: 20, baseType: !626, size: 64, offset: 448)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !915, file: !916, line: 23, baseType: !533, size: 128, offset: 512)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !915, file: !916, line: 24, baseType: !346, size: 32, offset: 640)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !915, file: !916, line: 29, baseType: !626, size: 64, offset: 704)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !915, file: !916, line: 36, baseType: !934, size: 320, offset: 768)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !935, line: 15, size: 320, elements: !936)
!935 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!936 = !{!937, !938, !939, !940, !941, !942, !943}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !935, line: 16, baseType: !635, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !934, file: !935, line: 18, baseType: !78, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !934, file: !935, line: 19, baseType: !78, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !934, file: !935, line: 20, baseType: !78, size: 32, offset: 96)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !934, file: !935, line: 21, baseType: !78, size: 32, offset: 128)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !934, file: !935, line: 22, baseType: !95, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !935, line: 23, baseType: !95, size: 64, offset: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !755, file: !756, line: 138, baseType: !945, size: 64, offset: 1152)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !35, line: 901, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !755, file: !756, line: 139, baseType: !948, size: 64, offset: 1216)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !950, line: 16, flags: DIFlagFwdDecl)
!950 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!951 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !755, file: !756, line: 140, baseType: !952, size: 64, offset: 1280)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !756, line: 25, size: 64, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !953, file: !756, line: 26, baseType: !105, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !953, file: !756, line: 27, baseType: !78, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !953, file: !756, line: 28, baseType: !958, offset: 64)
!958 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, elements: !746)
!959 = !DIDerivedType(tag: DW_TAG_member, scope: !755, file: !756, line: 142, baseType: !960, size: 128, offset: 1344)
!960 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !755, file: !756, line: 142, size: 128, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !960, file: !756, line: 143, baseType: !78, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !960, file: !756, line: 144, baseType: !679, size: 128, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !667, file: !14, line: 1013, baseType: !965, size: 256, offset: 960)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !966)
!966 = !{!967, !968, !969, !970, !971, !972}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !965, file: !14, line: 971, baseType: !95, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !965, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !965, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !965, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !965, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !965, file: !14, line: 976, baseType: !97, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !667, file: !14, line: 1014, baseType: !974, size: 128, offset: 1216)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !975, line: 8, size: 128, elements: !976)
!975 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !974, file: !975, line: 9, baseType: !485, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !974, file: !975, line: 10, baseType: !375, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !667, file: !14, line: 1015, baseType: !340, size: 64, offset: 1344)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !667, file: !14, line: 1016, baseType: !981, size: 64, offset: 1408)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !984)
!984 = !{!985, !986, !991, !995, !999, !1551, !1552, !1558, !1571, !1579, !1583, !1584, !1588, !1589, !1593, !1598, !1599, !1603, !1607, !1613, !1614, !1618, !1619, !1626, !1630, !1634, !1640, !1644, !1648, !1652, !1656, !1657, !1663}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !983, file: !14, line: 1915, baseType: !212, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !983, file: !14, line: 1916, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!97, !990, !97, !78}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !983, file: !14, line: 1917, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!298, !990, !266, !91, !96}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !983, file: !14, line: 1918, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!298, !990, !72, !91, !96}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !983, file: !14, line: 1919, baseType: !1000, size: 64, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!298, !1003, !1025}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1005)
!1005 = !{!1006, !1007, !1008, !1012, !1013, !1014, !1015}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1004, file: !14, line: 374, baseType: !990, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1004, file: !14, line: 375, baseType: !97, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1004, file: !14, line: 376, baseType: !1009, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1003, !301}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1004, file: !14, line: 377, baseType: !76, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1004, file: !14, line: 378, baseType: !78, size: 32, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1004, file: !14, line: 379, baseType: !149, size: 16, offset: 288)
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1004, file: !14, line: 380, baseType: !1016, size: 64, offset: 320)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1004, file: !14, line: 380, size: 64, elements: !1017)
!1017 = !{!1018, !1021}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1016, file: !14, line: 386, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1016, file: !14, line: 395, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!298, !76}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1027, line: 41, size: 320, elements: !1028)
!1027 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1039, !1546}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1026, file: !1027, line: 42, baseType: !139, size: 8)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1026, file: !1027, line: 43, baseType: !862, size: 8, offset: 8)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1026, file: !1027, line: 44, baseType: !862, size: 8, offset: 16)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1026, file: !1027, line: 45, baseType: !862, size: 8, offset: 24)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1026, file: !1027, line: 46, baseType: !862, size: 8, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !1027, line: 47, baseType: !1035, size: 64, offset: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !1027, line: 47, size: 64, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1035, file: !1027, line: 48, baseType: !91, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1035, file: !1027, line: 49, baseType: !78, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !1027, line: 61, baseType: !1040, size: 128, offset: 128)
!1040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !1027, line: 61, size: 128, elements: !1041)
!1041 = !{!1042, !1048}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1040, file: !1027, line: 67, baseType: !1043, size: 128)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1044, line: 17, size: 128, elements: !1045)
!1044 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1043, file: !1044, line: 19, baseType: !76, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1043, file: !1044, line: 20, baseType: !92, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1040, file: !1027, line: 68, baseType: !1049, size: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1040, file: !1027, line: 68, size: 128, elements: !1050)
!1050 = !{!1051, !1545}
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1049, file: !1027, line: 69, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1049, file: !1027, line: 69, size: 64, elements: !1053)
!1053 = !{!1054, !1057, !1064, !1536, !1544}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1052, file: !1027, line: 71, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1052, file: !1027, line: 72, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1060)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1027, line: 17, size: 128, elements: !1061)
!1061 = !{!1062, !1063}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1060, file: !1027, line: 18, baseType: !76, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1060, file: !1027, line: 19, baseType: !91, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1052, file: !1027, line: 73, baseType: !1065, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1068, line: 31, size: 128, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1069 = !{!1070, !1534, !1535}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1067, file: !1068, line: 32, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !35, line: 74, size: 512, align: 128, elements: !1073)
!1073 = !{!1074, !1075, !1528, !1533}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1072, file: !35, line: 75, baseType: !95, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !35, line: 83, baseType: !1076, size: 320, offset: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !35, line: 83, size: 320, elements: !1077)
!1077 = !{!1078, !1099, !1113, !1117, !1527}
!1078 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !35, line: 84, baseType: !1079, size: 320)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !35, line: 84, size: 320, elements: !1080)
!1080 = !{!1081, !1092, !1093, !1098}
!1081 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !35, line: 90, baseType: !1082, size: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !35, line: 90, size: 128, elements: !1083)
!1083 = !{!1084, !1085, !1090, !1091}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1082, file: !35, line: 91, baseType: !153, size: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !35, line: 94, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1082, file: !35, line: 94, size: 128, elements: !1087)
!1087 = !{!1088, !1089}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1086, file: !35, line: 96, baseType: !76, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1086, file: !35, line: 98, baseType: !7, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1082, file: !35, line: 102, baseType: !153, size: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1082, file: !35, line: 103, baseType: !153, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1079, file: !35, line: 106, baseType: !336, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1079, file: !35, line: 107, baseType: !1094, size: 64, offset: 192)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1079, file: !35, line: 107, size: 64, elements: !1095)
!1095 = !{!1096, !1097}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1094, file: !35, line: 108, baseType: !95, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1094, file: !35, line: 109, baseType: !95, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1079, file: !35, line: 117, baseType: !95, size: 64, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !35, line: 119, baseType: !1100, size: 320)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !35, line: 119, size: 320, elements: !1101)
!1101 = !{!1102, !1103, !1106, !1107, !1108}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1100, file: !35, line: 124, baseType: !95, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1100, file: !35, line: 125, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !35, line: 125, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1100, file: !35, line: 126, baseType: !95, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1100, file: !35, line: 127, baseType: !95, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1100, file: !35, line: 128, baseType: !1109, size: 64, offset: 256)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1100, file: !35, line: 128, size: 64, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1109, file: !35, line: 133, baseType: !95, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1109, file: !35, line: 138, baseType: !626, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !35, line: 141, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !35, line: 141, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1114, file: !35, line: 142, baseType: !95, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !35, line: 144, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !35, line: 144, size: 128, elements: !1119)
!1119 = !{!1120, !1526}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1118, file: !35, line: 146, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !27, line: 126, size: 1216, elements: !1123)
!1123 = !{!1124, !1134, !1155, !1166, !1167, !1168, !1169, !1508, !1509, !1510}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1122, file: !27, line: 127, baseType: !1125, size: 384)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !27, line: 21, size: 384, elements: !1126)
!1126 = !{!1127, !1128, !1130, !1131, !1132, !1133}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1125, file: !27, line: 22, baseType: !95, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1125, file: !27, line: 23, baseType: !1129, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1125, file: !27, line: 24, baseType: !1129, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1125, file: !27, line: 25, baseType: !95, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1125, file: !27, line: 26, baseType: !95, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1125, file: !27, line: 27, baseType: !95, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1122, file: !27, line: 128, baseType: !1135, size: 128, offset: 384)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1136, line: 105, size: 128, elements: !1137)
!1136 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1135, file: !1136, line: 110, baseType: !95, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1135, file: !1136, line: 118, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1136, line: 95, size: 448, elements: !1142)
!1142 = !{!1143, !1144, !1150, !1151, !1152, !1153, !1154}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1141, file: !1136, line: 96, baseType: !626, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1141, file: !1136, line: 97, baseType: !1145, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1136, line: 60, baseType: !1147)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{null, !1149}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1141, file: !1136, line: 98, baseType: !1145, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1141, file: !1136, line: 99, baseType: !862, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1141, file: !1136, line: 100, baseType: !862, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1141, file: !1136, line: 101, baseType: !679, size: 128, align: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1141, file: !1136, line: 102, baseType: !1149, size: 64, offset: 384)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1122, file: !27, line: 129, baseType: !1156, size: 256, offset: 512)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1157, line: 26, size: 256, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1156, file: !1157, line: 27, baseType: !7, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1156, file: !1157, line: 28, baseType: !1161, size: 192, offset: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1162, line: 43, size: 192, elements: !1163)
!1162 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !1162, line: 44, baseType: !635, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1161, file: !1162, line: 45, baseType: !153, size: 128, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1122, file: !27, line: 130, baseType: !26, size: 32, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1122, file: !27, line: 131, baseType: !7, size: 32, offset: 800)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1122, file: !27, line: 132, baseType: !95, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1122, file: !27, line: 133, baseType: !1170, size: 64, offset: 896)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !27, line: 77, size: 192, elements: !1173)
!1173 = !{!1174, !1178, !1504}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1172, file: !27, line: 83, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{null, !1071}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1172, file: !27, line: 89, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!1182, !1183}
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !35, line: 1184, baseType: !7)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1185, line: 512, size: 896, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1186 = !{!1187, !1471, !1472, !1479, !1486, !1496, !1497, !1498, !1500, !1502}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1185, line: 513, baseType: !1188, size: 320)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1184, file: !1185, line: 513, size: 320, elements: !1189)
!1189 = !{!1190, !1466, !1468, !1469, !1470}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1188, file: !1185, line: 514, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !35, line: 625, size: 1344, elements: !1193)
!1193 = !{!1194, !1203, !1371, !1377, !1384, !1385, !1390, !1391, !1396, !1397, !1400, !1459, !1460, !1461, !1462, !1463, !1464}
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !35, line: 628, baseType: !1195, size: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !35, line: 628, size: 128, elements: !1196)
!1196 = !{!1197, !1202}
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !35, line: 629, baseType: !1198, size: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !35, line: 629, size: 128, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1198, file: !35, line: 631, baseType: !95, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1198, file: !35, line: 632, baseType: !95, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1195, file: !35, line: 635, baseType: !679, size: 128, align: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1192, file: !35, line: 639, baseType: !1204, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !35, line: 733, size: 10240, elements: !1206)
!1206 = !{!1207, !1369}
!1207 = !DIDerivedType(tag: DW_TAG_member, scope: !1205, file: !35, line: 734, baseType: !1208, size: 10240)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1205, file: !35, line: 734, size: 10240, elements: !1209)
!1209 = !{!1210, !1214, !1227, !1231, !1232, !1233, !1234, !1235, !1236, !1245, !1246, !1247, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1286, !1288, !1291, !1338, !1339, !1340, !1343, !1344, !1345, !1348, !1349, !1350, !1356, !1357}
!1210 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !35, line: 739, baseType: !1211, size: 512, align: 512)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1208, file: !35, line: 739, size: 512, align: 512, elements: !1212)
!1212 = !{!1213}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1211, file: !35, line: 747, baseType: !105, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1208, file: !35, line: 750, baseType: !1215, size: 128, offset: 512)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1216, line: 218, size: 128, elements: !1217)
!1216 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1217 = !{!1218, !1225, !1226}
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1216, line: 219, baseType: !1219, size: 32)
!1219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !1216, line: 219, size: 32, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1219, file: !1216, line: 220, baseType: !115, size: 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1219, file: !1216, line: 221, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1216, line: 197, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1216, line: 197, elements: !541)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1215, file: !1216, line: 223, baseType: !7, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1215, file: !1216, line: 224, baseType: !76, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1208, file: !35, line: 752, baseType: !1228, size: 64, offset: 640)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!95, !990, !95, !95, !95, !95}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1208, file: !35, line: 756, baseType: !95, size: 64, offset: 704)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1208, file: !35, line: 757, baseType: !95, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1208, file: !35, line: 760, baseType: !95, size: 64, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1208, file: !35, line: 761, baseType: !95, size: 64, offset: 896)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1208, file: !35, line: 763, baseType: !95, size: 64, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1208, file: !35, line: 764, baseType: !1237, size: 64, offset: 1024)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1239, line: 299, baseType: !1240)
!1239 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 299, size: 64, elements: !1241)
!1241 = !{!1242}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1240, file: !1239, line: 299, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1244, line: 18, baseType: !95)
!1244 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1208, file: !35, line: 773, baseType: !105, size: 32, offset: 1088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1208, file: !35, line: 785, baseType: !105, size: 32, offset: 1120)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1208, file: !35, line: 795, baseType: !1248, size: 64, offset: 1152)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !35, line: 726, size: 128, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1249, file: !35, line: 727, baseType: !413, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1249, file: !35, line: 728, baseType: !78, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1208, file: !35, line: 801, baseType: !95, size: 64, offset: 1216)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1208, file: !35, line: 804, baseType: !626, size: 64, offset: 1280)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1208, file: !35, line: 806, baseType: !78, size: 32, offset: 1344)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1208, file: !35, line: 808, baseType: !115, size: 32, offset: 1376)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1208, file: !35, line: 823, baseType: !803, size: 320, offset: 1408)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1208, file: !35, line: 825, baseType: !153, size: 128, offset: 1728)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1208, file: !35, line: 845, baseType: !78, size: 32, offset: 1856)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1208, file: !35, line: 849, baseType: !95, size: 64, offset: 1920)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1208, file: !35, line: 850, baseType: !95, size: 64, offset: 1984)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1208, file: !35, line: 852, baseType: !95, size: 64, offset: 2048)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1208, file: !35, line: 853, baseType: !95, size: 64, offset: 2112)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1208, file: !35, line: 854, baseType: !628, size: 64, offset: 2176)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1208, file: !35, line: 855, baseType: !95, size: 64, offset: 2240)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1208, file: !35, line: 856, baseType: !95, size: 64, offset: 2304)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1208, file: !35, line: 857, baseType: !95, size: 64, offset: 2368)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1208, file: !35, line: 858, baseType: !95, size: 64, offset: 2432)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1208, file: !35, line: 865, baseType: !386, size: 32, offset: 2496)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1208, file: !35, line: 867, baseType: !115, size: 32, offset: 2528)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1208, file: !35, line: 869, baseType: !95, size: 64, offset: 2560)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1208, file: !35, line: 869, baseType: !95, size: 64, offset: 2624)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1208, file: !35, line: 869, baseType: !95, size: 64, offset: 2688)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1208, file: !35, line: 869, baseType: !95, size: 64, offset: 2752)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1208, file: !35, line: 870, baseType: !95, size: 64, offset: 2816)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1208, file: !35, line: 870, baseType: !95, size: 64, offset: 2880)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1208, file: !35, line: 870, baseType: !95, size: 64, offset: 2944)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1208, file: !35, line: 871, baseType: !95, size: 64, offset: 3008)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1208, file: !35, line: 871, baseType: !95, size: 64, offset: 3072)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1208, file: !35, line: 871, baseType: !95, size: 64, offset: 3136)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1208, file: !35, line: 871, baseType: !95, size: 64, offset: 3200)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1208, file: !35, line: 873, baseType: !1283, size: 3328, offset: 3264)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 3328, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 52)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1208, file: !35, line: 875, baseType: !1287, size: 1280, offset: 6592)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !920, size: 1280, elements: !733)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1208, file: !35, line: 877, baseType: !1289, size: 64, offset: 7872)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !35, line: 877, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1208, file: !35, line: 880, baseType: !1292, size: 1088, offset: 7936)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1293, line: 72, baseType: !1294)
!1293 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1293, line: 23, size: 1088, elements: !1295)
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1303, !1304, !1305, !1306, !1333, !1334, !1335}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1294, file: !1293, line: 28, baseType: !413, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1294, file: !1293, line: 38, baseType: !628, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1294, file: !1293, line: 40, baseType: !95, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1294, file: !1293, line: 43, baseType: !803, size: 320, offset: 192)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1294, file: !1293, line: 44, baseType: !1301, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1293, line: 44, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !1293, line: 48, baseType: !95, size: 64, offset: 576)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1294, file: !1293, line: 59, baseType: !622, size: 256, offset: 640)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1294, file: !1293, line: 60, baseType: !76, size: 64, offset: 896)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1294, file: !1293, line: 61, baseType: !1307, size: 64, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1310, line: 13, size: 1216, elements: !1311)
!1310 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317, !1318, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1309, file: !1310, line: 14, baseType: !76, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1309, file: !1310, line: 15, baseType: !95, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1309, file: !1310, line: 17, baseType: !95, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1309, file: !1310, line: 17, baseType: !95, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1309, file: !1310, line: 18, baseType: !95, size: 64, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1309, file: !1310, line: 18, baseType: !95, size: 64, offset: 320)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1309, file: !1310, line: 19, baseType: !1319, size: 64, offset: 384)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1309, file: !1310, line: 21, baseType: !301, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1309, file: !1310, line: 23, baseType: !301, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1309, file: !1310, line: 24, baseType: !301, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1309, file: !1310, line: 25, baseType: !301, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1309, file: !1310, line: 26, baseType: !301, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1309, file: !1310, line: 27, baseType: !301, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1309, file: !1310, line: 28, baseType: !301, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1309, file: !1310, line: 29, baseType: !301, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1309, file: !1310, line: 30, baseType: !301, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1309, file: !1310, line: 31, baseType: !301, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1309, file: !1310, line: 32, baseType: !301, size: 64, offset: 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1309, file: !1310, line: 33, baseType: !301, size: 64, offset: 1152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1294, file: !1293, line: 63, baseType: !105, size: 32, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1294, file: !1293, line: 69, baseType: !149, size: 16, offset: 1056)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1294, file: !1293, line: 70, baseType: !1336, size: 16, offset: 1072)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !140, line: 18, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !142, line: 23, baseType: !831)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1208, file: !35, line: 882, baseType: !95, size: 64, offset: 9024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1208, file: !35, line: 885, baseType: !115, size: 32, offset: 9088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1208, file: !35, line: 886, baseType: !1341, size: 64, offset: 9152)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !35, line: 732, flags: DIFlagFwdDecl)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1208, file: !35, line: 901, baseType: !945, size: 64, offset: 9216)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1208, file: !35, line: 904, baseType: !990, size: 64, offset: 9280)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1208, file: !35, line: 906, baseType: !1346, size: 64, offset: 9344)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !35, line: 906, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1208, file: !35, line: 930, baseType: !105, size: 32, offset: 9408)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1208, file: !35, line: 933, baseType: !105, size: 32, offset: 9440)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1208, file: !35, line: 935, baseType: !1351, size: 64, offset: 9472)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !164, line: 103, size: 64, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1351, file: !164, line: 104, baseType: !1354, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !164, line: 101, flags: DIFlagFwdDecl)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1208, file: !35, line: 940, baseType: !626, size: 64, offset: 9536)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1208, file: !35, line: 942, baseType: !1358, size: 256, offset: 9600)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1359, line: 98, size: 256, elements: !1360)
!1359 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1360 = !{!1361, !1362, !1363}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1358, file: !1359, line: 99, baseType: !626, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1358, file: !1359, line: 100, baseType: !153, size: 128, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1358, file: !1359, line: 101, baseType: !1364, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1359, line: 21, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1205, file: !35, line: 986, baseType: !1370, offset: 10240)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, elements: !746)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1192, file: !35, line: 640, baseType: !1372, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1239, line: 297, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1239, line: 297, size: 64, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1373, file: !1239, line: 297, baseType: !1376, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1244, line: 19, baseType: !95)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1192, file: !35, line: 646, baseType: !1378, size: 64, offset: 256)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !35, line: 646, size: 64, elements: !1379)
!1379 = !{!1380, !1383}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1378, file: !35, line: 647, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !35, line: 542, baseType: !95)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1378, file: !35, line: 648, baseType: !1382, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1192, file: !35, line: 666, baseType: !78, size: 32, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1192, file: !35, line: 667, baseType: !1386, size: 64, offset: 384)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !35, line: 579, size: 320, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !35, line: 580, baseType: !803, size: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1192, file: !35, line: 670, baseType: !862, size: 8, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1192, file: !35, line: 681, baseType: !1392, size: 256, offset: 512)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1192, file: !35, line: 678, size: 256, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1392, file: !35, line: 679, baseType: !795, size: 192, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1392, file: !35, line: 680, baseType: !95, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1192, file: !35, line: 689, baseType: !153, size: 128, offset: 768)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1192, file: !35, line: 691, baseType: !1398, size: 64, offset: 896)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !35, line: 691, flags: DIFlagFwdDecl)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1192, file: !35, line: 694, baseType: !1401, size: 64, offset: 960)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1185, line: 563, size: 1024, elements: !1404)
!1404 = !{!1405, !1409, !1410, !1414, !1418, !1422, !1423, !1427, !1431, !1435, !1436, !1437, !1441, !1445, !1451, !1455}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1403, file: !1185, line: 564, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{null, !1191}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1403, file: !1185, line: 569, baseType: !1406, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1403, file: !1185, line: 571, baseType: !1411, size: 64, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!78, !1191, !95}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1403, file: !1185, line: 572, baseType: !1415, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!78, !1191}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1403, file: !1185, line: 578, baseType: !1419, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!78, !1191, !95, !95, !95}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1403, file: !1185, line: 580, baseType: !1179, size: 64, offset: 320)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1403, file: !1185, line: 581, baseType: !1424, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1182, !1183, !7}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1403, file: !1185, line: 582, baseType: !1428, size: 64, offset: 448)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1182, !1183, !95, !95}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1403, file: !1185, line: 584, baseType: !1432, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DISubroutineType(types: !1434)
!1434 = !{!95, !1191}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1403, file: !1185, line: 588, baseType: !1179, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1403, file: !1185, line: 591, baseType: !1179, size: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1403, file: !1185, line: 597, baseType: !1438, size: 64, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!78, !1191, !95, !76, !78, !78}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1403, file: !1185, line: 603, baseType: !1442, size: 64, offset: 768)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!72, !1191}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1403, file: !1185, line: 613, baseType: !1446, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!78, !1191, !1449}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !35, line: 717, flags: DIFlagFwdDecl)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1403, file: !1185, line: 625, baseType: !1452, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!1449, !1191, !95}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1403, file: !1185, line: 633, baseType: !1456, size: 64, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1071, !1191, !95}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1192, file: !35, line: 697, baseType: !95, size: 64, offset: 1024)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1192, file: !35, line: 699, baseType: !990, size: 64, offset: 1088)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1192, file: !35, line: 700, baseType: !76, size: 64, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1192, file: !35, line: 711, baseType: !626, size: 64, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1192, file: !35, line: 717, baseType: !1449, size: 64, offset: 1280)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1192, file: !35, line: 722, baseType: !1465, offset: 1344)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !35, line: 570, elements: !541)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1188, file: !1185, line: 515, baseType: !1467, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !81, line: 154, baseType: !7)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1188, file: !1185, line: 516, baseType: !95, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1188, file: !1185, line: 517, baseType: !95, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1188, file: !1185, line: 518, baseType: !95, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1184, file: !1185, line: 520, baseType: !34, size: 32, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1184, file: !1185, line: 522, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1244, line: 22, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1244, line: 22, size: 64, elements: !1476)
!1476 = !{!1477}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1475, file: !1244, line: 22, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1244, line: 15, baseType: !95)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1184, file: !1185, line: 524, baseType: !1480, size: 64, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1239, line: 372, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1239, line: 372, size: 64, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1482, file: !1239, line: 372, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1244, line: 16, baseType: !95)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1185, line: 527, baseType: !1487, size: 64, offset: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !1185, line: 527, size: 64, elements: !1488)
!1488 = !{!1489, !1495}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1487, file: !1185, line: 528, baseType: !1490, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1244, line: 21, baseType: !1491)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1244, line: 21, size: 64, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1491, file: !1244, line: 21, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1244, line: 14, baseType: !95)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1487, file: !1185, line: 529, baseType: !1474, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1184, file: !1185, line: 534, baseType: !1071, size: 64, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1184, file: !1185, line: 535, baseType: !1071, size: 64, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1184, file: !1185, line: 541, baseType: !1499, size: 64, offset: 704)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1184, file: !1185, line: 545, baseType: !1501, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1184, file: !1185, line: 549, baseType: !1503, size: 64, offset: 832)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1239, line: 520, baseType: !1071)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1172, file: !27, line: 100, baseType: !1505, size: 64, offset: 128)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!78, !1121, !95, !95, !78}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1122, file: !27, line: 134, baseType: !76, size: 64, offset: 960)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1122, file: !27, line: 135, baseType: !78, size: 32, offset: 1024)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !27, line: 136, baseType: !1511, size: 128, offset: 1088)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !27, line: 136, size: 128, elements: !1512)
!1512 = !{!1513, !1519}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1511, file: !27, line: 137, baseType: !1514, size: 128)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1515, line: 6, size: 128, elements: !1516)
!1515 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1514, file: !1515, line: 7, baseType: !413, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1514, file: !1515, line: 8, baseType: !413, size: 64, offset: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !27, line: 138, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !27, line: 138, elements: !1521)
!1521 = !{!1522, !1524}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1520, file: !27, line: 138, baseType: !1523)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1520, file: !27, line: 138, elements: !541)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1520, file: !27, line: 138, baseType: !1525)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, elements: !746)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1118, file: !35, line: 147, baseType: !76, size: 64, offset: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1076, file: !35, line: 161, baseType: !679, size: 128, align: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, scope: !1072, file: !35, line: 164, baseType: !1529, size: 32, offset: 384)
!1529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1072, file: !35, line: 164, size: 32, elements: !1530)
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1529, file: !35, line: 169, baseType: !105, size: 32)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1529, file: !35, line: 177, baseType: !7, size: 32)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1072, file: !35, line: 181, baseType: !105, size: 32, offset: 416)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1067, file: !1068, line: 33, baseType: !7, size: 32, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1067, file: !1068, line: 34, baseType: !7, size: 32, offset: 96)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1052, file: !1027, line: 74, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1539, line: 296, size: 128, elements: !1540)
!1539 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1538, file: !1539, line: 297, baseType: !115, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1538, file: !1539, line: 299, baseType: !1467, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1538, file: !1539, line: 300, baseType: !76, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1052, file: !1027, line: 75, baseType: !76, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1049, file: !1027, line: 77, baseType: !91, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1026, file: !1027, line: 80, baseType: !1547, size: 64, offset: 256)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1026, file: !1027, line: 80, size: 64, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1547, file: !1027, line: 81, baseType: !95, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1547, file: !1027, line: 82, baseType: !97, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !983, file: !14, line: 1920, baseType: !1000, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !983, file: !14, line: 1921, baseType: !1553, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!78, !1003, !1556, !7}
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !983, file: !14, line: 1923, baseType: !1559, size: 64, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!78, !990, !1562}
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1564)
!1564 = !{!1565, !1570}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1563, file: !14, line: 1859, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!862, !1562, !72, !78, !97, !413, !7}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1563, file: !14, line: 1860, baseType: !97, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !983, file: !14, line: 1924, baseType: !1572, size: 64, offset: 512)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1575, !990, !1577}
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1576, line: 59, baseType: !7)
!1576 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !513, line: 31, flags: DIFlagFwdDecl)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !983, file: !14, line: 1925, baseType: !1580, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!301, !990, !7, !95}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !983, file: !14, line: 1926, baseType: !1580, size: 64, offset: 640)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !983, file: !14, line: 1927, baseType: !1585, size: 64, offset: 704)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!78, !990, !1191}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !983, file: !14, line: 1928, baseType: !95, size: 64, offset: 768)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !983, file: !14, line: 1929, baseType: !1590, size: 64, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!78, !340, !990}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !983, file: !14, line: 1930, baseType: !1594, size: 64, offset: 896)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!78, !990, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !76)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !983, file: !14, line: 1931, baseType: !1590, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !983, file: !14, line: 1932, baseType: !1600, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!78, !990, !97, !97, !78}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !983, file: !14, line: 1933, baseType: !1604, size: 64, offset: 1088)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!78, !78, !990, !78}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !983, file: !14, line: 1934, baseType: !1608, size: 64, offset: 1152)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!78, !990, !78, !1611}
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !983, file: !14, line: 1935, baseType: !1228, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !983, file: !14, line: 1936, baseType: !1615, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!78, !78}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !983, file: !14, line: 1937, baseType: !1608, size: 64, offset: 1344)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !983, file: !14, line: 1938, baseType: !1620, size: 64, offset: 1408)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!298, !1623, !990, !96, !91, !7}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1625, line: 59, flags: DIFlagFwdDecl)
!1625 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !983, file: !14, line: 1939, baseType: !1627, size: 64, offset: 1472)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!298, !990, !96, !1623, !91, !7}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !983, file: !14, line: 1940, baseType: !1631, size: 64, offset: 1536)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !990}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !983, file: !14, line: 1941, baseType: !1635, size: 64, offset: 1600)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!78, !990, !78, !1638, !1639}
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !983, file: !14, line: 1942, baseType: !1641, size: 64, offset: 1664)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!301, !990, !78, !97, !97}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !983, file: !14, line: 1944, baseType: !1645, size: 64, offset: 1728)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !610, !990}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !983, file: !14, line: 1948, baseType: !1649, size: 64, offset: 1792)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!298, !990, !97, !990, !97, !91, !7}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !983, file: !14, line: 1950, baseType: !1653, size: 64, offset: 1856)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!97, !990, !97, !990, !97, !97, !7}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !983, file: !14, line: 1953, baseType: !1600, size: 64, offset: 1920)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !983, file: !14, line: 1954, baseType: !1658, size: 64, offset: 1984)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!78, !1661, !7}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !983, file: !14, line: 1955, baseType: !1664, size: 64, offset: 2048)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!78, !1661, !1556, !7}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !667, file: !14, line: 1018, baseType: !413, size: 64, offset: 1472)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !667, file: !14, line: 1020, baseType: !76, size: 64, offset: 1536)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !667, file: !14, line: 1023, baseType: !76, size: 64, offset: 1600)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !667, file: !14, line: 1027, baseType: !1671, size: 64, offset: 1664)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !667, file: !14, line: 1029, baseType: !336, size: 64, offset: 1728)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !667, file: !14, line: 1030, baseType: !1674, size: 32, offset: 1792)
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1675, line: 8, baseType: !409)
!1675 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !667, file: !14, line: 1031, baseType: !1674, size: 32, offset: 1824)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !611, file: !612, line: 29, baseType: !76, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !553, file: !14, line: 2077, baseType: !607, size: 64, offset: 1088)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !553, file: !14, line: 2078, baseType: !607, size: 64, offset: 1152)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !553, file: !14, line: 2079, baseType: !607, size: 64, offset: 1216)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !553, file: !14, line: 2081, baseType: !1682, size: 64, offset: 1280)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!298, !491, !78, !266, !91, !97}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !553, file: !14, line: 2082, baseType: !1686, size: 64, offset: 1344)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!298, !491, !78, !72, !91, !97}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !553, file: !14, line: 2083, baseType: !1690, size: 64, offset: 1408)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!1693, !340}
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1721, !1722, !1723}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1695, file: !51, line: 297, baseType: !533, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1695, file: !51, line: 298, baseType: !153, size: 128, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1695, file: !51, line: 299, baseType: !153, size: 128, offset: 256)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1695, file: !51, line: 300, baseType: !153, size: 128, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1695, file: !51, line: 301, baseType: !622, size: 256, offset: 512)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1695, file: !51, line: 302, baseType: !115, size: 32, offset: 768)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1695, file: !51, line: 303, baseType: !105, size: 32, offset: 800)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1695, file: !51, line: 304, baseType: !491, size: 64, offset: 832)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1695, file: !51, line: 305, baseType: !1706, size: 64, offset: 896)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !1707)
!1707 = !{!1708, !1720}
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1706, file: !51, line: 69, baseType: !1709, size: 32)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1706, file: !51, line: 69, size: 32, elements: !1710)
!1710 = !{!1711, !1712, !1713}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1709, file: !51, line: 70, baseType: !346, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1709, file: !51, line: 71, baseType: !355, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1709, file: !51, line: 72, baseType: !1714, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1715, line: 24, baseType: !1716)
!1715 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1715, line: 22, size: 32, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1716, file: !1715, line: 23, baseType: !1719, size: 32)
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1715, line: 20, baseType: !352)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1706, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1695, file: !51, line: 306, baseType: !97, size: 64, offset: 960)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1695, file: !51, line: 307, baseType: !95, size: 64, offset: 1024)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1695, file: !51, line: 308, baseType: !1724, size: 576, offset: 1088)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !1725)
!1725 = !{!1726, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1724, file: !51, line: 206, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !99)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1724, file: !51, line: 207, baseType: !1727, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1724, file: !51, line: 208, baseType: !1727, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1724, file: !51, line: 209, baseType: !1727, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1724, file: !51, line: 210, baseType: !1727, size: 64, offset: 256)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1724, file: !51, line: 211, baseType: !1727, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1724, file: !51, line: 212, baseType: !1727, size: 64, offset: 384)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1724, file: !51, line: 213, baseType: !819, size: 64, offset: 448)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1724, file: !51, line: 214, baseType: !819, size: 64, offset: 512)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !553, file: !14, line: 2085, baseType: !1737, size: 64, offset: 1472)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!301, !491, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1742, line: 15, size: 256, elements: !1743)
!1742 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1743 = !{!1744, !1745, !1746, !1747, !1748}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1741, file: !1742, line: 16, baseType: !1467, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1741, file: !1742, line: 19, baseType: !78, size: 32, offset: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1741, file: !1742, line: 26, baseType: !95, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1741, file: !1742, line: 33, baseType: !95, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1741, file: !1742, line: 36, baseType: !1749, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !35, line: 33, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !553, file: !14, line: 2087, baseType: !1737, size: 64, offset: 1536)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !553, file: !14, line: 2089, baseType: !523, size: 64, offset: 1600)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !492, file: !14, line: 1198, baseType: !1754, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1756)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !1757)
!1757 = !{!1758, !1762, !1766, !1770, !1771, !1772, !1773, !1774, !1779, !1784, !1788}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1756, file: !51, line: 325, baseType: !1759, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!78, !1694}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1756, file: !51, line: 326, baseType: !1763, size: 64, offset: 64)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!1694, !491, !78}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1756, file: !51, line: 327, baseType: !1767, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{null, !1694}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1756, file: !51, line: 328, baseType: !1759, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1756, file: !51, line: 329, baseType: !1759, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1756, file: !51, line: 330, baseType: !1759, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1756, file: !51, line: 331, baseType: !581, size: 64, offset: 384)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1756, file: !51, line: 334, baseType: !1775, size: 64, offset: 448)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!1778, !340}
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1756, file: !51, line: 335, baseType: !1780, size: 64, offset: 512)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!78, !340, !1783}
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1756, file: !51, line: 337, baseType: !1785, size: 64, offset: 576)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!78, !340, !1778}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1756, file: !51, line: 339, baseType: !1789, size: 64, offset: 640)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!78, !491, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !492, file: !14, line: 1199, baseType: !1794, size: 64, offset: 512)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !1797)
!1797 = !{!1798, !1804, !1805, !1809, !1810, !1811, !1826, !1849, !1853, !1854, !1877}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1796, file: !51, line: 431, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!78, !491, !78, !78, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1796, file: !51, line: 432, baseType: !581, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1796, file: !51, line: 433, baseType: !1806, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!78, !491, !7}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1796, file: !51, line: 434, baseType: !1806, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1796, file: !51, line: 435, baseType: !581, size: 64, offset: 256)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1796, file: !51, line: 436, baseType: !1812, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!78, !491, !78, !1815}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1816, file: !51, line: 418, baseType: !78, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1816, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1816, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1816, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1816, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1816, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1816, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1816, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1796, file: !51, line: 437, baseType: !1827, size: 64, offset: 384)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!78, !491, !1706, !1830}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1831, file: !51, line: 346, baseType: !78, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1831, file: !51, line: 347, baseType: !413, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1831, file: !51, line: 348, baseType: !413, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1831, file: !51, line: 349, baseType: !413, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1831, file: !51, line: 350, baseType: !413, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1831, file: !51, line: 351, baseType: !413, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1831, file: !51, line: 352, baseType: !413, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1831, file: !51, line: 353, baseType: !632, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1831, file: !51, line: 355, baseType: !632, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1831, file: !51, line: 356, baseType: !78, size: 32, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1831, file: !51, line: 357, baseType: !78, size: 32, offset: 608)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1831, file: !51, line: 358, baseType: !413, size: 64, offset: 640)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1831, file: !51, line: 359, baseType: !413, size: 64, offset: 704)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1831, file: !51, line: 360, baseType: !413, size: 64, offset: 768)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1831, file: !51, line: 361, baseType: !632, size: 64, offset: 832)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1831, file: !51, line: 362, baseType: !78, size: 32, offset: 896)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1796, file: !51, line: 438, baseType: !1850, size: 64, offset: 448)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!78, !491, !1792, !1830}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1796, file: !51, line: 440, baseType: !1827, size: 64, offset: 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1796, file: !51, line: 441, baseType: !1855, size: 64, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!78, !491, !1858}
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !1860)
!1860 = !{!1861, !1862}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1859, file: !51, line: 412, baseType: !7, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1859, file: !51, line: 413, baseType: !1863, size: 1344, offset: 64)
!1863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1864, size: 1344, elements: !267)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1876}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1864, file: !51, line: 398, baseType: !7, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1864, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1864, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1864, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1864, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1864, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1864, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1864, file: !51, line: 406, baseType: !415, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1864, file: !51, line: 407, baseType: !1875, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !81, line: 132, baseType: !413)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1864, file: !51, line: 408, baseType: !1875, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1796, file: !51, line: 442, baseType: !1806, size: 64, offset: 640)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !492, file: !14, line: 1200, baseType: !1879, size: 64, offset: 576)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !492, file: !14, line: 1201, baseType: !95, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !492, file: !14, line: 1202, baseType: !95, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !492, file: !14, line: 1203, baseType: !95, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !492, file: !14, line: 1204, baseType: !375, size: 64, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !492, file: !14, line: 1205, baseType: !803, size: 320, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !492, file: !14, line: 1206, baseType: !78, size: 32, offset: 1216)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !492, file: !14, line: 1207, baseType: !105, size: 32, offset: 1248)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !492, file: !14, line: 1209, baseType: !76, size: 64, offset: 1280)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !492, file: !14, line: 1211, baseType: !1891, size: 64, offset: 1344)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !492, file: !14, line: 1223, baseType: !1896, size: 64, offset: 1408)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !392, line: 34, size: 64, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1896, file: !392, line: 35, baseType: !395, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !492, file: !14, line: 1224, baseType: !153, size: 128, offset: 1472)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !492, file: !14, line: 1225, baseType: !1901, size: 64, offset: 1600)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !492, file: !14, line: 1226, baseType: !1904, size: 64, offset: 1664)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !492, file: !14, line: 1227, baseType: !1907, size: 64, offset: 1728)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !492, file: !14, line: 1228, baseType: !1910, size: 64, offset: 1792)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !492, file: !14, line: 1229, baseType: !533, size: 128, offset: 1856)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !492, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !492, file: !14, line: 1231, baseType: !1915, size: 2496, offset: 2048)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !1916)
!1916 = !{!1917, !1918, !1919, !1921, !1953}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1915, file: !51, line: 522, baseType: !7, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1915, file: !51, line: 523, baseType: !803, size: 320, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1915, file: !51, line: 524, baseType: !1920, size: 192, offset: 384)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !340, size: 192, elements: !267)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1915, file: !51, line: 525, baseType: !1922, size: 1728, offset: 576)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1923, size: 1728, elements: !267)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !1924)
!1924 = !{!1925, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1923, file: !51, line: 223, baseType: !1926, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !1928)
!1928 = !{!1929, !1930, !1943, !1944}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1927, file: !51, line: 446, baseType: !78, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1927, file: !51, line: 447, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !1934)
!1934 = !{!1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1933, file: !51, line: 313, baseType: !581, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1933, file: !51, line: 314, baseType: !581, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1933, file: !51, line: 315, baseType: !581, size: 64, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1933, file: !51, line: 316, baseType: !581, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1933, file: !51, line: 317, baseType: !1759, size: 64, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1933, file: !51, line: 318, baseType: !1759, size: 64, offset: 320)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1933, file: !51, line: 319, baseType: !1759, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1933, file: !51, line: 320, baseType: !1789, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1927, file: !51, line: 448, baseType: !212, size: 64, offset: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1927, file: !51, line: 449, baseType: !1926, size: 64, offset: 192)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1923, file: !51, line: 224, baseType: !78, size: 32, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1923, file: !51, line: 226, baseType: !153, size: 128, offset: 128)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1923, file: !51, line: 227, baseType: !95, size: 64, offset: 256)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1923, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1923, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1923, file: !51, line: 230, baseType: !1727, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1923, file: !51, line: 231, baseType: !1727, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1923, file: !51, line: 232, baseType: !76, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1915, file: !51, line: 526, baseType: !1954, size: 192, offset: 2304)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 192, elements: !267)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !492, file: !14, line: 1233, baseType: !1956, size: 2368, offset: 4544)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1957)
!1957 = !{!1958, !1959, !1960}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1956, file: !14, line: 1185, baseType: !82, size: 16)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1956, file: !14, line: 1186, baseType: !82, size: 16, offset: 16)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1956, file: !14, line: 1187, baseType: !1961, size: 2304, offset: 64)
!1961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1962, size: 2304, elements: !267)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1963, line: 12, size: 768, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1964 = !{!1965, !1973, !1975, !4362, !4363}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1962, file: !1963, line: 13, baseType: !1966, size: 384)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1967, line: 17, size: 384, elements: !1968)
!1967 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1968 = !{!1969, !1970, !1971, !1972}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1966, file: !1967, line: 18, baseType: !78, size: 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1966, file: !1967, line: 19, baseType: !78, size: 32, offset: 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1966, file: !1967, line: 20, baseType: !110, size: 192, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1966, file: !1967, line: 22, baseType: !679, size: 128, align: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1962, file: !1963, line: 14, baseType: !1974, size: 64, offset: 384)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1962, file: !1963, line: 15, baseType: !1976, size: 64, offset: 448)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1977, line: 16, size: 64, elements: !1978)
!1977 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1978 = !{!1979}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1976, file: !1977, line: 17, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1625, line: 746, size: 58368, elements: !1982)
!1982 = !{!1983, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2063, !2074, !2169, !2173, !2176, !2207, !2208, !2209, !2210, !2221, !2223, !2224, !2225, !2226, !2227, !2228, !2239, !2240, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2257, !2258, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2346, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2361, !2362, !2363, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2395, !2401, !2402, !2403, !2404, !2405, !2409, !2412, !2419, !2424, !2427, !2430, !2433, !3629, !3762, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3802, !3803, !3804, !3813, !3821, !3822, !3823, !3824, !3825, !3830, !3831, !3832, !3835, !3836, !3839, !3842, !3845, !3853, !3856, !3857, !3943, !3944, !3945, !3946, !3947, !3953, !3954, !3955, !3956, !3959, !3960, !3963, !3966, !3967, !3970, !3971, !3972, !3975, !3976, !3977, !3978, !3979, !3980, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4011, !4012, !4018, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4030, !4102, !4104, !4105, !4106, !4107, !4108, !4109, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4139, !4140, !4141}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1981, file: !1625, line: 752, baseType: !1984, size: 192)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1985, line: 56, size: 192, elements: !1986)
!1985 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1986 = !{!1987, !1988, !1989, !1990}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1984, file: !1985, line: 57, baseType: !95, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1984, file: !1985, line: 58, baseType: !95, size: 64, offset: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1984, file: !1985, line: 59, baseType: !409, size: 32, offset: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1984, file: !1985, line: 61, baseType: !409, size: 32, offset: 160)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1981, file: !1625, line: 754, baseType: !7, size: 32, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1981, file: !1625, line: 767, baseType: !76, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1981, file: !1625, line: 768, baseType: !724, size: 32, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !1625, line: 770, baseType: !7, size: 32, offset: 352)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1981, file: !1625, line: 771, baseType: !7, size: 32, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1981, file: !1625, line: 774, baseType: !78, size: 32, offset: 416)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1981, file: !1625, line: 775, baseType: !1998, size: 128, offset: 448)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1999, line: 58, size: 128, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2000 = !{!2001, !2002, !2007, !2008}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1998, file: !1999, line: 59, baseType: !673, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1998, file: !1999, line: 60, baseType: !2003, size: 32, offset: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1998, file: !1999, line: 60, size: 32, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2003, file: !1999, line: 61, baseType: !7, size: 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2003, file: !1999, line: 62, baseType: !105, size: 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1998, file: !1999, line: 65, baseType: !149, size: 16, offset: 96)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1998, file: !1999, line: 65, baseType: !149, size: 16, offset: 112)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1981, file: !1625, line: 776, baseType: !7, size: 32, offset: 576)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1981, file: !1625, line: 777, baseType: !95, size: 64, offset: 640)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1981, file: !1625, line: 778, baseType: !1980, size: 64, offset: 704)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1981, file: !1625, line: 787, baseType: !78, size: 32, offset: 768)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1981, file: !1625, line: 788, baseType: !78, size: 32, offset: 800)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1981, file: !1625, line: 790, baseType: !78, size: 32, offset: 832)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1981, file: !1625, line: 792, baseType: !78, size: 32, offset: 864)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1981, file: !1625, line: 793, baseType: !78, size: 32, offset: 896)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1981, file: !1625, line: 794, baseType: !78, size: 32, offset: 928)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1981, file: !1625, line: 795, baseType: !7, size: 32, offset: 960)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1981, file: !1625, line: 797, baseType: !2020, size: 2048, offset: 1024)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1625, line: 551, size: 2048, elements: !2021)
!2021 = !{!2022, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2042, !2045, !2046, !2047}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2020, file: !1625, line: 553, baseType: !2023, size: 128)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1625, line: 411, size: 128, elements: !2024)
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2023, file: !1625, line: 412, baseType: !95, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2023, file: !1625, line: 413, baseType: !409, size: 32, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2020, file: !1625, line: 554, baseType: !795, size: 192, align: 64, offset: 128)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2020, file: !1625, line: 555, baseType: !413, size: 64, offset: 320)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2020, file: !1625, line: 556, baseType: !413, size: 64, offset: 384)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2020, file: !1625, line: 558, baseType: !153, size: 128, offset: 448)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2020, file: !1625, line: 559, baseType: !7, size: 32, offset: 576)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2020, file: !1625, line: 561, baseType: !413, size: 64, offset: 640)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2020, file: !1625, line: 562, baseType: !413, size: 64, offset: 704)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2020, file: !1625, line: 563, baseType: !413, size: 64, offset: 768)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2020, file: !1625, line: 564, baseType: !413, size: 64, offset: 832)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2020, file: !1625, line: 565, baseType: !632, size: 64, offset: 896)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2020, file: !1625, line: 566, baseType: !413, size: 64, offset: 960)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2020, file: !1625, line: 568, baseType: !413, size: 64, offset: 1024)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2020, file: !1625, line: 571, baseType: !78, size: 32, offset: 1088)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2020, file: !1625, line: 572, baseType: !2041, size: 64, offset: 1152)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2020, file: !1625, line: 574, baseType: !2043, size: 64, offset: 1216)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1625, line: 49, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2020, file: !1625, line: 576, baseType: !2043, size: 64, offset: 1280)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2020, file: !1625, line: 578, baseType: !95, size: 64, offset: 1344)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2020, file: !1625, line: 588, baseType: !2048, size: 512, align: 512, offset: 1536)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1625, line: 497, size: 512, align: 512, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2048, file: !1625, line: 498, baseType: !413, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2048, file: !1625, line: 499, baseType: !413, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2048, file: !1625, line: 500, baseType: !413, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2048, file: !1625, line: 501, baseType: !409, size: 32, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2048, file: !1625, line: 502, baseType: !409, size: 32, offset: 224)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2048, file: !1625, line: 503, baseType: !95, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2048, file: !1625, line: 504, baseType: !95, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2048, file: !1625, line: 505, baseType: !95, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2048, file: !1625, line: 506, baseType: !2059, size: 64, align: 64, offset: 448)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1625, line: 445, size: 64, align: 64, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2059, file: !1625, line: 446, baseType: !7, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2059, file: !1625, line: 447, baseType: !7, size: 32, offset: 32)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1981, file: !1625, line: 798, baseType: !2064, size: 384, offset: 3072)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1625, line: 592, size: 384, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2064, file: !1625, line: 593, baseType: !153, size: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2064, file: !1625, line: 594, baseType: !95, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2064, file: !1625, line: 595, baseType: !95, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2064, file: !1625, line: 596, baseType: !7, size: 32, offset: 256)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2064, file: !1625, line: 597, baseType: !82, size: 16, offset: 288)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2064, file: !1625, line: 598, baseType: !82, size: 16, offset: 304)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2064, file: !1625, line: 600, baseType: !2073, size: 64, offset: 320)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1981, file: !1625, line: 799, baseType: !2075, size: 1792, offset: 3456)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1625, line: 610, size: 1792, elements: !2076)
!2076 = !{!2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2166, !2167}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2075, file: !1625, line: 611, baseType: !795, size: 192, align: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2075, file: !1625, line: 618, baseType: !413, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2075, file: !1625, line: 619, baseType: !413, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2075, file: !1625, line: 620, baseType: !413, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2075, file: !1625, line: 621, baseType: !413, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2075, file: !1625, line: 622, baseType: !413, size: 64, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2075, file: !1625, line: 629, baseType: !632, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2075, file: !1625, line: 630, baseType: !413, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2075, file: !1625, line: 631, baseType: !7, size: 32, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2075, file: !1625, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2075, file: !1625, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2075, file: !1625, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2075, file: !1625, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2075, file: !1625, line: 662, baseType: !2091, size: 512, offset: 704)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2092)
!2092 = !{!2093, !2101, !2102, !2107, !2162, !2163, !2164, !2165}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2091, file: !57, line: 119, baseType: !2094, size: 256)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2095, line: 9, size: 256, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2094, file: !2095, line: 10, baseType: !795, size: 192, align: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2094, file: !2095, line: 11, baseType: !2099, size: 64, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2100, line: 29, baseType: !632)
!2100 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2091, file: !57, line: 120, baseType: !2099, size: 64, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2091, file: !57, line: 121, baseType: !2103, size: 64, offset: 320)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!56, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2091, file: !57, line: 122, baseType: !2108, size: 64, offset: 384)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2110)
!2110 = !{!2111, !2136, !2137, !2140, !2145, !2146, !2157, !2161}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2109, file: !57, line: 160, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2113, file: !57, line: 216, baseType: !635, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2113, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2113, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2113, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2113, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2113, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2113, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2113, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2113, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2113, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2113, file: !57, line: 227, baseType: !82, size: 16, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2113, file: !57, line: 228, baseType: !82, size: 16, offset: 208)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2113, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2113, file: !57, line: 235, baseType: !2099, size: 64, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2113, file: !57, line: 236, baseType: !2106, size: 64, offset: 320)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2113, file: !57, line: 237, baseType: !2099, size: 64, offset: 384)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2113, file: !57, line: 238, baseType: !2106, size: 64, offset: 448)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2113, file: !57, line: 239, baseType: !2133, size: 4096, align: 512, offset: 512)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2109, size: 4096, align: 512, elements: !2134)
!2134 = !{!2135}
!2135 = !DISubrange(count: 8)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2109, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2109, file: !57, line: 162, baseType: !2138, size: 32, offset: 96)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !81, line: 32, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !93, line: 96, baseType: !78)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2109, file: !57, line: 163, baseType: !2141, size: 32, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !382, line: 274, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !382, line: 274, size: 32, elements: !2143)
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2142, file: !382, line: 274, baseType: !386, size: 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2109, file: !57, line: 164, baseType: !2106, size: 64, offset: 192)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2109, file: !57, line: 165, baseType: !2147, size: 128, offset: 256)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2095, line: 14, size: 128, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2147, file: !2095, line: 15, baseType: !2150, size: 128)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !796, line: 26, size: 128, elements: !2151)
!2151 = !{!2152, !2156}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2150, file: !796, line: 27, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !796, line: 12, size: 64, elements: !2154)
!2154 = !{!2155}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2153, file: !796, line: 13, baseType: !800, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2150, file: !796, line: 28, baseType: !800, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2109, file: !57, line: 166, baseType: !2158, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!2099}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2109, file: !57, line: 167, baseType: !2099, size: 64, offset: 448)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2091, file: !57, line: 123, baseType: !139, size: 8, offset: 448)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2091, file: !57, line: 124, baseType: !139, size: 8, offset: 456)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2091, file: !57, line: 125, baseType: !139, size: 8, offset: 464)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2091, file: !57, line: 126, baseType: !139, size: 8, offset: 472)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2075, file: !1625, line: 671, baseType: !2091, size: 512, offset: 1216)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2075, file: !1625, line: 679, baseType: !2168, size: 64, offset: 1728)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1981, file: !1625, line: 800, baseType: !2170, size: 64, offset: 5248)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2172)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1625, line: 800, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1981, file: !1625, line: 809, baseType: !2174, size: 64, offset: 5312)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1625, line: 70, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1981, file: !1625, line: 825, baseType: !2177, size: 2048, align: 512, offset: 5632)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1625, line: 509, size: 2048, align: 512, elements: !2178)
!2178 = !{!2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2177, file: !1625, line: 511, baseType: !413, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2177, file: !1625, line: 512, baseType: !413, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2177, file: !1625, line: 513, baseType: !413, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2177, file: !1625, line: 514, baseType: !413, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2177, file: !1625, line: 515, baseType: !413, size: 64, offset: 256)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2177, file: !1625, line: 516, baseType: !413, size: 64, offset: 320)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2177, file: !1625, line: 518, baseType: !413, size: 64, offset: 384)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2177, file: !1625, line: 519, baseType: !413, size: 64, offset: 448)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2177, file: !1625, line: 520, baseType: !632, size: 64, offset: 512)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2177, file: !1625, line: 522, baseType: !413, size: 64, offset: 576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2177, file: !1625, line: 523, baseType: !413, size: 64, offset: 640)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2177, file: !1625, line: 524, baseType: !632, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2177, file: !1625, line: 526, baseType: !632, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2177, file: !1625, line: 527, baseType: !413, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2177, file: !1625, line: 529, baseType: !413, size: 64, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2177, file: !1625, line: 530, baseType: !413, size: 64, offset: 960)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2177, file: !1625, line: 531, baseType: !413, size: 64, offset: 1024)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2177, file: !1625, line: 532, baseType: !413, size: 64, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2177, file: !1625, line: 533, baseType: !413, size: 64, offset: 1152)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2177, file: !1625, line: 535, baseType: !413, size: 64, offset: 1216)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2177, file: !1625, line: 536, baseType: !413, size: 64, offset: 1280)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2177, file: !1625, line: 537, baseType: !413, size: 64, offset: 1344)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2177, file: !1625, line: 538, baseType: !413, size: 64, offset: 1408)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2177, file: !1625, line: 539, baseType: !413, size: 64, offset: 1472)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2177, file: !1625, line: 540, baseType: !413, size: 64, offset: 1536)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2177, file: !1625, line: 541, baseType: !413, size: 64, offset: 1600)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2177, file: !1625, line: 542, baseType: !413, size: 64, offset: 1664)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2177, file: !1625, line: 543, baseType: !413, size: 64, offset: 1728)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1981, file: !1625, line: 833, baseType: !7, size: 32, offset: 7680)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1981, file: !1625, line: 836, baseType: !7, size: 32, offset: 7712)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1981, file: !1625, line: 837, baseType: !78, size: 32, offset: 7744)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1981, file: !1625, line: 838, baseType: !2211, size: 64, offset: 7808)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2213 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2214, line: 19, baseType: !2215)
!2214 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2214, line: 19, size: 64, elements: !2216)
!2216 = !{!2217}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2215, file: !2214, line: 19, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, elements: !2219)
!2219 = !{!2220}
!2220 = !DISubrange(count: 1)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1981, file: !1625, line: 839, baseType: !2222, size: 64, offset: 7872)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1981, file: !1625, line: 840, baseType: !2213, size: 64, offset: 7936)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1981, file: !1625, line: 841, baseType: !76, size: 64, offset: 8000)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1981, file: !1625, line: 843, baseType: !82, size: 16, offset: 8064)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1981, file: !1625, line: 845, baseType: !82, size: 16, offset: 8080)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1981, file: !1625, line: 848, baseType: !78, size: 32, offset: 8096)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1981, file: !1625, line: 849, baseType: !2229, size: 32, offset: 8128)
!2229 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1625, line: 718, size: 32, elements: !2230)
!2230 = !{!2231, !2238}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2229, file: !1625, line: 724, baseType: !2232, size: 32)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2229, file: !1625, line: 719, size: 32, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2232, file: !1625, line: 720, baseType: !139, size: 8)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2232, file: !1625, line: 721, baseType: !139, size: 8, offset: 8)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2232, file: !1625, line: 722, baseType: !139, size: 8, offset: 16)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2232, file: !1625, line: 723, baseType: !139, size: 8, offset: 24)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2229, file: !1625, line: 725, baseType: !409, size: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1981, file: !1625, line: 850, baseType: !153, size: 128, offset: 8192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1981, file: !1625, line: 851, baseType: !2241, size: 64, offset: 8320)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1625, line: 60, flags: DIFlagFwdDecl)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1981, file: !1625, line: 855, baseType: !95, size: 64, offset: 8384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1981, file: !1625, line: 856, baseType: !139, size: 8, offset: 8448)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1981, file: !1625, line: 857, baseType: !139, size: 8, offset: 8456)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1981, file: !1625, line: 858, baseType: !78, size: 32, offset: 8480)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1981, file: !1625, line: 859, baseType: !153, size: 128, offset: 8512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1981, file: !1625, line: 860, baseType: !78, size: 32, offset: 8640)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1981, file: !1625, line: 861, baseType: !153, size: 128, offset: 8704)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1981, file: !1625, line: 873, baseType: !2251, size: 256, offset: 8832)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1625, line: 376, size: 256, elements: !2252)
!2252 = !{!2253, !2254, !2255, !2256}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2251, file: !1625, line: 381, baseType: !95, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2251, file: !1625, line: 384, baseType: !415, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2251, file: !1625, line: 389, baseType: !415, size: 64, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2251, file: !1625, line: 392, baseType: !415, size: 64, offset: 192)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1981, file: !1625, line: 875, baseType: !153, size: 128, offset: 9088)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1981, file: !1625, line: 877, baseType: !2259, size: 320, offset: 9216)
!2259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2260, line: 86, size: 320, elements: !2261)
!2260 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2259, file: !2260, line: 87, baseType: !78, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2259, file: !2260, line: 88, baseType: !153, size: 128, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2259, file: !2260, line: 89, baseType: !153, size: 128, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1981, file: !1625, line: 878, baseType: !795, size: 192, align: 64, offset: 9536)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1981, file: !1625, line: 881, baseType: !1204, size: 64, offset: 9728)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1981, file: !1625, line: 882, baseType: !1204, size: 64, offset: 9792)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1981, file: !1625, line: 884, baseType: !78, size: 32, offset: 9856)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1981, file: !1625, line: 885, baseType: !78, size: 32, offset: 9888)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1981, file: !1625, line: 886, baseType: !78, size: 32, offset: 9920)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1981, file: !1625, line: 888, baseType: !78, size: 32, offset: 9952)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1981, file: !1625, line: 890, baseType: !95, size: 64, offset: 9984)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1981, file: !1625, line: 893, baseType: !7, size: 32, offset: 10048)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1981, file: !1625, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1981, file: !1625, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1981, file: !1625, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1981, file: !1625, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1981, file: !1625, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1981, file: !1625, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1981, file: !1625, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1981, file: !1625, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1981, file: !1625, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1981, file: !1625, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1981, file: !1625, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1981, file: !1625, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1981, file: !1625, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1981, file: !1625, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1981, file: !1625, line: 969, baseType: !95, size: 64, offset: 10176)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1981, file: !1625, line: 971, baseType: !2290, size: 448, offset: 10240)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2291)
!2291 = !{!2292, !2293, !2298}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2290, file: !62, line: 26, baseType: !95, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2290, file: !62, line: 27, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!301, !2297}
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2290, file: !62, line: 28, baseType: !2299, size: 320, offset: 128)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2290, file: !62, line: 28, size: 320, elements: !2300)
!2300 = !{!2301, !2311, !2336}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2299, file: !62, line: 37, baseType: !2302, size: 320)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2299, file: !62, line: 30, size: 320, elements: !2303)
!2303 = !{!2304, !2306, !2307, !2308, !2309, !2310}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2302, file: !62, line: 31, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2302, file: !62, line: 32, baseType: !409, size: 32, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2302, file: !62, line: 33, baseType: !409, size: 32, offset: 96)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2302, file: !62, line: 34, baseType: !409, size: 32, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2302, file: !62, line: 35, baseType: !413, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2302, file: !62, line: 36, baseType: !2305, size: 64, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2299, file: !62, line: 47, baseType: !2312, size: 192)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2299, file: !62, line: 39, size: 192, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2335}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2312, file: !62, line: 40, baseType: !2138, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2312, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, scope: !2312, file: !62, line: 42, baseType: !2317, size: 64, offset: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2312, file: !62, line: 42, size: 64, elements: !2318)
!2318 = !{!2319, !2327}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2317, file: !62, line: 43, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2322, line: 7, size: 128, elements: !2323)
!2322 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2323 = !{!2324, !2326}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2321, file: !2322, line: 8, baseType: !2325, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !93, line: 93, baseType: !99)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2321, file: !2322, line: 9, baseType: !99, size: 64, offset: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2317, file: !62, line: 44, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2330, line: 7, size: 64, elements: !2331)
!2330 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2331 = !{!2332, !2334}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2329, file: !2330, line: 8, baseType: !2333, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2330, line: 5, baseType: !788)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2329, file: !2330, line: 9, baseType: !788, size: 32, offset: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2312, file: !62, line: 46, baseType: !413, size: 64, offset: 128)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2299, file: !62, line: 55, baseType: !2337, size: 256)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2299, file: !62, line: 49, size: 256, elements: !2338)
!2338 = !{!2339, !2342, !2343, !2344, !2345}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2337, file: !62, line: 50, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2337, file: !62, line: 51, baseType: !78, size: 32, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2337, file: !62, line: 52, baseType: !78, size: 32, offset: 96)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2337, file: !62, line: 53, baseType: !95, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2337, file: !62, line: 54, baseType: !95, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1981, file: !1625, line: 973, baseType: !2347, size: 32, offset: 10688)
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !81, line: 27, baseType: !2348)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !93, line: 28, baseType: !78)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1981, file: !1625, line: 974, baseType: !2347, size: 32, offset: 10720)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1981, file: !1625, line: 978, baseType: !95, size: 64, offset: 10752)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1981, file: !1625, line: 987, baseType: !1980, size: 64, offset: 10816)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1981, file: !1625, line: 990, baseType: !1980, size: 64, offset: 10880)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1981, file: !1625, line: 995, baseType: !153, size: 128, offset: 10944)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1981, file: !1625, line: 996, baseType: !153, size: 128, offset: 11072)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1981, file: !1625, line: 997, baseType: !1980, size: 64, offset: 11200)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1981, file: !1625, line: 1005, baseType: !153, size: 128, offset: 11264)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1981, file: !1625, line: 1006, baseType: !153, size: 128, offset: 11392)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1981, file: !1625, line: 1009, baseType: !720, size: 64, offset: 11520)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1981, file: !1625, line: 1010, baseType: !2360, size: 512, offset: 11584)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 512, elements: !733)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1981, file: !1625, line: 1011, baseType: !153, size: 128, offset: 12096)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1981, file: !1625, line: 1012, baseType: !153, size: 128, offset: 12224)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1981, file: !1625, line: 1014, baseType: !2364, size: 64, offset: 12352)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1981, file: !1625, line: 1017, baseType: !604, size: 64, offset: 12416)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1981, file: !1625, line: 1020, baseType: !604, size: 64, offset: 12480)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1981, file: !1625, line: 1023, baseType: !76, size: 64, offset: 12544)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1981, file: !1625, line: 1025, baseType: !413, size: 64, offset: 12608)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1981, file: !1625, line: 1026, baseType: !413, size: 64, offset: 12672)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1981, file: !1625, line: 1031, baseType: !413, size: 64, offset: 12736)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1981, file: !1625, line: 1032, baseType: !2372, size: 192, offset: 12800)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1625, line: 324, size: 192, elements: !2373)
!2373 = !{!2374, !2375, !2376}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2372, file: !1625, line: 326, baseType: !413, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2372, file: !1625, line: 327, baseType: !413, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2372, file: !1625, line: 328, baseType: !635, size: 32, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1981, file: !1625, line: 1041, baseType: !95, size: 64, offset: 12992)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1981, file: !1625, line: 1042, baseType: !95, size: 64, offset: 13056)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1981, file: !1625, line: 1045, baseType: !413, size: 64, offset: 13120)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1981, file: !1625, line: 1048, baseType: !413, size: 64, offset: 13184)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1981, file: !1625, line: 1051, baseType: !95, size: 64, offset: 13248)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1981, file: !1625, line: 1052, baseType: !95, size: 64, offset: 13312)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1981, file: !1625, line: 1055, baseType: !2384, size: 640, offset: 13376)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2385, line: 132, size: 640, elements: !2386)
!2385 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2386 = !{!2387, !2393, !2394}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2384, file: !2385, line: 133, baseType: !2388, size: 576)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2389, size: 576, elements: !267)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2385, line: 117, size: 192, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2389, file: !2385, line: 118, baseType: !413, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2389, file: !2385, line: 119, baseType: !2147, size: 128, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2384, file: !2385, line: 134, baseType: !7, size: 32, offset: 576)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2384, file: !2385, line: 135, baseType: !7, size: 32, offset: 608)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1981, file: !1625, line: 1058, baseType: !2396, size: 448, offset: 14016)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2385, line: 144, size: 448, elements: !2397)
!2397 = !{!2398, !2399, !2400}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2396, file: !2385, line: 145, baseType: !679, size: 128, align: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2396, file: !2385, line: 146, baseType: !622, size: 256, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2396, file: !2385, line: 147, baseType: !7, size: 32, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1981, file: !1625, line: 1064, baseType: !753, size: 64, offset: 14464)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1981, file: !1625, line: 1067, baseType: !753, size: 64, offset: 14528)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1981, file: !1625, line: 1070, baseType: !753, size: 64, offset: 14592)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1981, file: !1625, line: 1074, baseType: !780, size: 64, offset: 14656)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1981, file: !1625, line: 1084, baseType: !2406, size: 128, offset: 14720)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, elements: !2407)
!2407 = !{!2408}
!2408 = !DISubrange(count: 16)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1981, file: !1625, line: 1086, baseType: !2410, size: 64, offset: 14848)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1625, line: 55, flags: DIFlagFwdDecl)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1981, file: !1625, line: 1089, baseType: !2413, size: 64, offset: 14912)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2414, line: 12, size: 64, elements: !2415)
!2414 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2415 = !{!2416}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2413, file: !2414, line: 13, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2414, line: 8, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1981, file: !1625, line: 1090, baseType: !2420, size: 128, offset: 14976)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2421, line: 13, size: 128, elements: !2422)
!2421 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2422 = !{!2423}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2420, file: !2421, line: 14, baseType: !153, size: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1981, file: !1625, line: 1097, baseType: !2425, size: 64, offset: 15104)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1625, line: 50, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1981, file: !1625, line: 1100, baseType: !2428, size: 64, offset: 15168)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1625, line: 1100, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1981, file: !1625, line: 1103, baseType: !2431, size: 64, offset: 15232)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1625, line: 53, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1981, file: !1625, line: 1107, baseType: !2434, size: 64, offset: 15296)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2436, line: 31, size: 576, elements: !2437)
!2436 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2437 = !{!2438, !2439, !2470, !2473, !2476, !2477, !3622, !3625, !3626}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2435, file: !2436, line: 32, baseType: !724, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2435, file: !2436, line: 33, baseType: !2440, size: 64, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2442, line: 24, size: 3456, elements: !2443)
!2442 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!2443 = !{!2444, !2457, !2458, !2459}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2441, file: !2442, line: 25, baseType: !2445, size: 3120)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !2446, line: 25, size: 3120, elements: !2447)
!2446 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!2447 = !{!2448, !2452, !2453, !2454, !2455, !2456}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !2445, file: !2446, line: 26, baseType: !2449, size: 520)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 520, elements: !2450)
!2450 = !{!2451}
!2451 = !DISubrange(count: 65)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !2445, file: !2446, line: 27, baseType: !2449, size: 520, offset: 520)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2445, file: !2446, line: 28, baseType: !2449, size: 520, offset: 1040)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2445, file: !2446, line: 29, baseType: !2449, size: 520, offset: 1560)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !2445, file: !2446, line: 30, baseType: !2449, size: 520, offset: 2080)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !2445, file: !2446, line: 31, baseType: !2449, size: 520, offset: 2600)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2441, file: !2442, line: 26, baseType: !945, size: 64, offset: 3136)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2441, file: !2442, line: 27, baseType: !948, size: 64, offset: 3200)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2441, file: !2442, line: 28, baseType: !2460, size: 192, offset: 3264)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !2461, line: 9, size: 192, elements: !2462)
!2461 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!2462 = !{!2463, !2464, !2468, !2469}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !2460, file: !2461, line: 10, baseType: !626, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2460, file: !2461, line: 11, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !2461, line: 7, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !2460, file: !2461, line: 12, baseType: !7, size: 32, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2460, file: !2461, line: 13, baseType: !724, size: 32, offset: 160)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2435, file: !2436, line: 34, baseType: !2471, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2436, line: 10, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2435, file: !2436, line: 35, baseType: !2474, size: 64, offset: 192)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2436, line: 8, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2435, file: !2436, line: 36, baseType: !744, size: 64, offset: 256)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2435, file: !2436, line: 37, baseType: !2478, size: 64, offset: 320)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !2480, line: 61, size: 27648, elements: !2481)
!2480 = !DIFile(filename: "./include/net/net_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9448d530239774cde6340b292589a220")
!2481 = !{!2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2503, !2504, !2507, !2508, !2509, !2513, !2514, !2573, !2576, !2577, !2580, !2581, !2582, !2583, !2598, !2599, !2603, !2604, !2616, !2687, !2693, !2704, !2717, !3296, !3467, !3489, !3547, !3550, !3564, !3620, !3621}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !2479, file: !2480, line: 65, baseType: !724, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rules_mod_lock", scope: !2479, file: !2480, line: 68, baseType: !115, size: 32, offset: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dev_unreg_count", scope: !2479, file: !2480, line: 70, baseType: !105, size: 32, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_seq", scope: !2479, file: !2480, line: 72, baseType: !7, size: 32, offset: 96)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !2479, file: !2480, line: 73, baseType: !409, size: 32, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "nsid_lock", scope: !2479, file: !2480, line: 75, baseType: !115, size: 32, offset: 160)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "fnhe_genid", scope: !2479, file: !2480, line: 76, baseType: !105, size: 32, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2479, file: !2480, line: 78, baseType: !153, size: 128, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "exit_list", scope: !2479, file: !2480, line: 79, baseType: !153, size: 128, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "defer_free_list", scope: !2479, file: !2480, line: 85, baseType: !673, size: 64, offset: 512)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_list", scope: !2479, file: !2480, line: 86, baseType: !673, size: 64, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "key_domain", scope: !2479, file: !2480, line: 89, baseType: !856, size: 64, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2479, file: !2480, line: 91, baseType: !945, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !2479, file: !2480, line: 92, baseType: !948, size: 64, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "netns_ids", scope: !2479, file: !2480, line: 93, baseType: !2497, size: 192, offset: 832)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2498, line: 19, size: 192, elements: !2499)
!2498 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!2499 = !{!2500, !2501, !2502}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2497, file: !2498, line: 20, baseType: !1538, size: 128)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2497, file: !2498, line: 21, baseType: !7, size: 32, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2497, file: !2498, line: 22, baseType: !7, size: 32, offset: 160)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2479, file: !2480, line: 95, baseType: !2460, size: 192, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt_tracker", scope: !2479, file: !2480, line: 96, baseType: !2505, offset: 1216)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ref_tracker_dir", file: !2506, line: 11, elements: !541)
!2506 = !DIFile(filename: "./include/linux/ref_tracker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2430b45a012be0c6416a948c13597f4b")
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "notrefcnt_tracker", scope: !2479, file: !2480, line: 97, baseType: !2505, offset: 1216)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "dev_base_head", scope: !2479, file: !2480, line: 100, baseType: !153, size: 128, offset: 1216)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net", scope: !2479, file: !2480, line: 101, baseType: !2510, size: 64, offset: 1344)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2512, line: 41, flags: DIFlagFwdDecl)
!2512 = !DIFile(filename: "./include/net/netns/mib.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ba22b1e9bdeaf8d7b85d4f8f9594169")
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_stat", scope: !2479, file: !2480, line: 102, baseType: !2510, size: 64, offset: 1408)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !2479, file: !2480, line: 105, baseType: !2515, size: 768, offset: 1472)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !68, line: 199, size: 768, elements: !2516)
!2516 = !{!2517, !2522}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !2515, file: !68, line: 200, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!78, !2521}
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2515, file: !68, line: 201, baseType: !2523, size: 704, offset: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !68, line: 193, size: 704, elements: !2524)
!2524 = !{!2525, !2572}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2523, file: !68, line: 195, baseType: !2526, size: 640)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !68, line: 173, size: 640, elements: !2527)
!2527 = !{!2528, !2540, !2541, !2542, !2562, !2563, !2565, !2571}
!2528 = !DIDerivedType(tag: DW_TAG_member, scope: !2526, file: !68, line: 174, baseType: !2529, size: 192)
!2529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2526, file: !68, line: 174, size: 192, elements: !2530)
!2530 = !{!2531, !2539}
!2531 = !DIDerivedType(tag: DW_TAG_member, scope: !2529, file: !68, line: 175, baseType: !2532, size: 192)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2529, file: !68, line: 175, size: 192, elements: !2533)
!2533 = !{!2534, !2535, !2536, !2537, !2538}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !2532, file: !68, line: 176, baseType: !89, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !2532, file: !68, line: 177, baseType: !78, size: 32, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2532, file: !68, line: 178, baseType: !78, size: 32, offset: 96)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2532, file: !68, line: 179, baseType: !78, size: 32, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !2532, file: !68, line: 180, baseType: !78, size: 32, offset: 160)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2529, file: !68, line: 182, baseType: !679, size: 128, align: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !2526, file: !68, line: 184, baseType: !2364, size: 64, offset: 192)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !2526, file: !68, line: 185, baseType: !89, size: 64, offset: 256)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2526, file: !68, line: 186, baseType: !2543, size: 64, offset: 320)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !68, line: 204, size: 960, elements: !2545)
!2545 = !{!2546, !2547, !2551, !2558}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !2544, file: !68, line: 205, baseType: !2515, size: 768)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !2544, file: !68, line: 206, baseType: !2548, size: 64, offset: 768)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!2521, !2543}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !2544, file: !68, line: 207, baseType: !2552, size: 64, offset: 832)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !2555, !2556, !2557}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !2544, file: !68, line: 209, baseType: !2559, size: 64, offset: 896)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!78, !2555, !89}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2526, file: !68, line: 187, baseType: !2521, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2526, file: !68, line: 188, baseType: !2564, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2526, file: !68, line: 189, baseType: !2566, size: 64, offset: 512)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !68, line: 157, size: 256, elements: !2568)
!2568 = !{!2569, !2570}
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2567, file: !68, line: 158, baseType: !795, size: 192, align: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2567, file: !68, line: 159, baseType: !2555, size: 64, offset: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2526, file: !68, line: 190, baseType: !529, size: 64, offset: 576)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2523, file: !68, line: 196, baseType: !2153, size: 64, offset: 640)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "rtnl", scope: !2479, file: !2480, line: 108, baseType: !2574, size: 64, offset: 2240)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !178, line: 19, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "genl_sock", scope: !2479, file: !2480, line: 109, baseType: !2574, size: 64, offset: 2304)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_sock", scope: !2479, file: !2480, line: 111, baseType: !2578, size: 64, offset: 2368)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = !DICompositeType(tag: DW_TAG_structure_type, name: "uevent_sock", file: !2480, line: 53, flags: DIFlagFwdDecl)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name_head", scope: !2479, file: !2480, line: 113, baseType: !1671, size: 64, offset: 2432)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index_head", scope: !2479, file: !2480, line: 114, baseType: !1671, size: 64, offset: 2496)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dev_by_index", scope: !2479, file: !2480, line: 115, baseType: !1538, size: 128, offset: 2560)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "netdev_chain", scope: !2479, file: !2480, line: 116, baseType: !2584, size: 64, offset: 2688)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_notifier_head", file: !2585, line: 70, size: 64, elements: !2586)
!2585 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!2586 = !{!2587}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2584, file: !2585, line: 71, baseType: !2588, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2585, line: 54, size: 192, elements: !2590)
!2590 = !{!2591, !2596, !2597}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2589, file: !2585, line: 55, baseType: !2592, size: 64)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2585, line: 51, baseType: !2593)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!78, !2588, !95, !76}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2589, file: !2585, line: 56, baseType: !2588, size: 64, offset: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2589, file: !2585, line: 57, baseType: !78, size: 32, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "hash_mix", scope: !2479, file: !2480, line: 121, baseType: !409, size: 32, offset: 2752)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "loopback_dev", scope: !2479, file: !2480, line: 123, baseType: !2600, size: 64, offset: 2816)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !2602, line: 10, flags: DIFlagFwdDecl)
!2602 = !DIFile(filename: "./include/net/dst_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ddc782c85737bd5bc289b976340e94f")
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !2479, file: !2480, line: 126, baseType: !153, size: 128, offset: 2880)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !2479, file: !2480, line: 128, baseType: !2605, size: 256, offset: 3008)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_core", file: !2606, line: 11, size: 256, elements: !2607)
!2606 = !DIFile(filename: "./include/net/netns/core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18c9bedf6eb8c587f29284e442644416")
!2607 = !{!2608, !2609, !2610, !2611, !2614}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !2605, file: !2606, line: 13, baseType: !2555, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_somaxconn", scope: !2605, file: !2606, line: 15, baseType: !78, size: 32, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_txrehash", scope: !2605, file: !2606, line: 16, baseType: !139, size: 8, offset: 96)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "prot_inuse", scope: !2605, file: !2606, line: 19, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "prot_inuse", file: !2606, line: 8, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "rps_default_mask", scope: !2605, file: !2606, line: 23, baseType: !2615, size: 64, offset: 192)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mib", scope: !2479, file: !2480, line: 129, baseType: !2617, size: 832, offset: 3264)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_mib", file: !2512, line: 7, size: 832, elements: !2618)
!2618 = !{!2619, !2631, !2632, !2638, !2646, !2654, !2655, !2656, !2657, !2665, !2673, !2681, !2686}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ip_statistics", scope: !2617, file: !2512, line: 8, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipstats_mib", file: !2622, line: 51, size: 2432, elements: !2623)
!2622 = !DIFile(filename: "./include/net/snmp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4e66422a0c08c32beca5964652b5d9b")
!2623 = !{!2624, !2628}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2621, file: !2622, line: 53, baseType: !2625, size: 2432)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 2432, elements: !2626)
!2626 = !{!2627}
!2627 = !DISubrange(count: 38)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "syncp", scope: !2621, file: !2622, line: 54, baseType: !2629, offset: 2432)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2630, line: 64, elements: !541)
!2630 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6_statistics", scope: !2617, file: !2512, line: 10, baseType: !2620, size: 64, offset: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_statistics", scope: !2617, file: !2512, line: 13, baseType: !2633, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_mib", file: !2622, line: 92, size: 1024, elements: !2635)
!2635 = !{!2636}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2634, file: !2622, line: 93, baseType: !2637, size: 1024)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1024, elements: !2407)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "net_statistics", scope: !2617, file: !2512, line: 14, baseType: !2639, size: 64, offset: 192)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linux_mib", file: !2622, line: 104, size: 8128, elements: !2641)
!2641 = !{!2642}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2640, file: !2622, line: 105, baseType: !2643, size: 8128)
!2643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 8128, elements: !2644)
!2644 = !{!2645}
!2645 = !DISubrange(count: 127)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "udp_statistics", scope: !2617, file: !2512, line: 16, baseType: !2647, size: 64, offset: 256)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_mib", file: !2622, line: 98, size: 640, elements: !2649)
!2649 = !{!2650}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2648, file: !2622, line: 99, baseType: !2651, size: 640)
!2651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 640, elements: !2652)
!2652 = !{!2653}
!2653 = !DISubrange(count: 10)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "udp_stats_in6", scope: !2617, file: !2512, line: 18, baseType: !2647, size: 64, offset: 320)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_statistics", scope: !2617, file: !2512, line: 31, baseType: !2647, size: 64, offset: 384)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "udplite_stats_in6", scope: !2617, file: !2512, line: 33, baseType: !2647, size: 64, offset: 448)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_statistics", scope: !2617, file: !2512, line: 36, baseType: !2658, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp_mib", file: !2622, line: 59, size: 1920, elements: !2660)
!2660 = !{!2661}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2659, file: !2622, line: 60, baseType: !2662, size: 1920)
!2662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 1920, elements: !2663)
!2663 = !{!2664}
!2664 = !DISubrange(count: 30)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "icmpmsg_statistics", scope: !2617, file: !2512, line: 37, baseType: !2666, size: 64, offset: 576)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpmsg_mib", file: !2622, line: 64, size: 32768, elements: !2668)
!2668 = !{!2669}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2667, file: !2622, line: 65, baseType: !2670, size: 32768)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 32768, elements: !2671)
!2671 = !{!2672}
!2672 = !DISubrange(count: 512)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_statistics", scope: !2617, file: !2512, line: 39, baseType: !2674, size: 64, offset: 640)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6_mib", file: !2622, line: 71, size: 448, elements: !2676)
!2676 = !{!2677}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2675, file: !2622, line: 72, baseType: !2678, size: 448)
!2678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 448, elements: !2679)
!2679 = !{!2680}
!2680 = !DISubrange(count: 7)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6msg_statistics", scope: !2617, file: !2512, line: 40, baseType: !2682, size: 64, offset: 704)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmpv6msg_mib", file: !2622, line: 81, size: 32768, elements: !2684)
!2684 = !{!2685}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "mibs", scope: !2683, file: !2622, line: 82, baseType: !2670, size: 32768)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "proc_net_devsnmp6", scope: !2617, file: !2512, line: 41, baseType: !2510, size: 64, offset: 768)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !2479, file: !2480, line: 130, baseType: !2688, size: 320, offset: 4096)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_packet", file: !2689, line: 11, size: 320, elements: !2690)
!2689 = !DIFile(filename: "./include/net/netns/packet.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9993c7d0edda08e4a61acc9b7e9bef6b")
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "sklist_lock", scope: !2688, file: !2689, line: 12, baseType: !622, size: 256)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "sklist", scope: !2688, file: !2689, line: 13, baseType: !529, size: 64, offset: 256)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "unx", scope: !2479, file: !2480, line: 132, baseType: !2694, size: 256, offset: 4416)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_unix", file: !2695, line: 16, size: 256, elements: !2696)
!2695 = !DIFile(filename: "./include/net/netns/unix.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9b0a0c994514b5bcede3924402949afb")
!2696 = !{!2697, !2702, !2703}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !2694, file: !2695, line: 17, baseType: !2698, size: 128)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unix_table", file: !2695, line: 10, size: 128, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "locks", scope: !2698, file: !2695, line: 11, baseType: !1501, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "buckets", scope: !2698, file: !2695, line: 12, baseType: !1671, size: 64, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_dgram_qlen", scope: !2694, file: !2695, line: 18, baseType: !78, size: 32, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "ctl", scope: !2694, file: !2695, line: 19, baseType: !2555, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "nexthop", scope: !2479, file: !2480, line: 134, baseType: !2705, size: 576, offset: 4672)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nexthop", file: !2706, line: 12, size: 576, elements: !2707)
!2706 = !DIFile(filename: "./include/net/netns/nexthop.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9226e726e069a329f5fede8d471a5b93")
!2707 = !{!2708, !2709, !2710, !2711, !2712}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2705, file: !2706, line: 13, baseType: !2153, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "devhash", scope: !2705, file: !2706, line: 14, baseType: !1671, size: 64, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2705, file: !2706, line: 16, baseType: !7, size: 32, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_allocated", scope: !2705, file: !2706, line: 17, baseType: !409, size: 32, offset: 160)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_chain", scope: !2705, file: !2706, line: 18, baseType: !2713, size: 384, offset: 192)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !2585, line: 65, size: 384, elements: !2714)
!2714 = !{!2715, !2716}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !2713, file: !2585, line: 66, baseType: !803, size: 320)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2713, file: !2585, line: 67, baseType: !2588, size: 64, offset: 320)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !2479, file: !2480, line: 135, baseType: !2718, size: 5632, offset: 5632)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv4", file: !2719, line: 44, size: 5632, elements: !2720)
!2719 = !DIFile(filename: "./include/net/netns/ipv4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "984d85e204c6d0b56270eed465b5c766")
!2720 = !{!2721, !2729, !2732, !2733, !2734, !2735, !2736, !2737, !2740, !2741, !2744, !2745, !2748, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2763, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3244, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3271, !3272, !3273, !3275, !3276, !3279, !3280, !3281, !3282, !3285, !3286, !3287, !3288, !3289}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_death_row", scope: !2718, file: !2719, line: 45, baseType: !2722, size: 1024)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_timewait_death_row", file: !2719, line: 34, size: 1024, elements: !2723)
!2723 = !{!2724, !2725, !2728}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "tw_refcount", scope: !2722, file: !2719, line: 35, baseType: !724, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "hashinfo", scope: !2722, file: !2719, line: 38, baseType: !2726, size: 64, align: 512, offset: 512)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_hashinfo", file: !2719, line: 32, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_tw_buckets", scope: !2722, file: !2719, line: 39, baseType: !78, size: 32, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "udp_table", scope: !2718, file: !2719, line: 46, baseType: !2730, size: 64, offset: 1024)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "udp_table", file: !2719, line: 46, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "forw_hdr", scope: !2718, file: !2719, line: 49, baseType: !2555, size: 64, offset: 1088)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !2718, file: !2719, line: 50, baseType: !2555, size: 64, offset: 1152)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_hdr", scope: !2718, file: !2719, line: 51, baseType: !2555, size: 64, offset: 1216)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !2718, file: !2719, line: 52, baseType: !2555, size: 64, offset: 1280)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_hdr", scope: !2718, file: !2719, line: 53, baseType: !2555, size: 64, offset: 1344)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !2718, file: !2719, line: 55, baseType: !2738, size: 64, offset: 1408)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv4_devconf", file: !2719, line: 16, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !2718, file: !2719, line: 56, baseType: !2738, size: 64, offset: 1472)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ra_chain", scope: !2718, file: !2719, line: 57, baseType: !2742, size: 64, offset: 1536)
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2743, size: 64)
!2743 = !DICompositeType(tag: DW_TAG_structure_type, name: "ip_ra_chain", file: !2719, line: 57, flags: DIFlagFwdDecl)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ra_mutex", scope: !2718, file: !2719, line: 58, baseType: !622, size: 256, offset: 1600)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rules_ops", scope: !2718, file: !2719, line: 60, baseType: !2746, size: 64, offset: 1856)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_rules_ops", file: !2719, line: 17, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fib_main", scope: !2718, file: !2719, line: 61, baseType: !2749, size: 64, offset: 1920)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_table", file: !2719, line: 19, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fib_default", scope: !2718, file: !2719, line: 62, baseType: !2749, size: 64, offset: 1984)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fib_rules_require_fldissect", scope: !2718, file: !2719, line: 63, baseType: !7, size: 32, offset: 2048)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_rules", scope: !2718, file: !2719, line: 64, baseType: !862, size: 8, offset: 2080)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fib_has_custom_local_routes", scope: !2718, file: !2719, line: 66, baseType: !862, size: 8, offset: 2088)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fib_offload_disabled", scope: !2718, file: !2719, line: 67, baseType: !862, size: 8, offset: 2096)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_shrink_window", scope: !2718, file: !2719, line: 68, baseType: !139, size: 8, offset: 2104)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !2718, file: !2719, line: 72, baseType: !1671, size: 64, offset: 2112)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fibnl", scope: !2718, file: !2719, line: 73, baseType: !2574, size: 64, offset: 2176)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !2718, file: !2719, line: 75, baseType: !2574, size: 64, offset: 2240)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !2718, file: !2719, line: 77, baseType: !2761, size: 64, offset: 2304)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "inet_peer_base", file: !2719, line: 77, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !2718, file: !2719, line: 78, baseType: !2764, size: 64, offset: 2368)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fqdir", file: !2766, line: 13, size: 2560, elements: !2767)
!2766 = !DIFile(filename: "./include/net/inet_frag.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0fbce9165be02acf2490f91012eb3f9")
!2767 = !{!2768, !2769, !2770, !2771, !2772, !3134, !3135, !3136, !3137, !3138, !3139}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "high_thresh", scope: !2765, file: !2766, line: 15, baseType: !301, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "low_thresh", scope: !2765, file: !2766, line: 16, baseType: !301, size: 64, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2765, file: !2766, line: 17, baseType: !78, size: 32, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "max_dist", scope: !2765, file: !2766, line: 18, baseType: !78, size: 32, offset: 160)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !2765, file: !2766, line: 19, baseType: !2773, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frags", file: !2766, line: 107, size: 1024, elements: !2775)
!2775 = !{!2776, !2777, !3081, !3085, !3086, !3090, !3091, !3132, !3133}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "qsize", scope: !2774, file: !2766, line: 108, baseType: !7, size: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !2774, file: !2766, line: 110, baseType: !2778, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{null, !2781, !1319}
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inet_frag_queue", file: !2766, line: 85, size: 1408, elements: !2783)
!2783 = !{!2784, !2790, !2824, !2836, !2837, !2838, !2839, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2782, file: !2766, line: 86, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !2786, line: 17, size: 64, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!2787 = !{!2788}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2785, file: !2786, line: 18, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2782, file: !2766, line: 90, baseType: !2791, size: 352, offset: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2782, file: !2766, line: 87, size: 352, elements: !2792)
!2792 = !{!2793, !2804}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "v4", scope: !2791, file: !2766, line: 88, baseType: !2794, size: 160)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v4_compare_key", file: !2766, line: 48, size: 160, elements: !2795)
!2795 = !{!2796, !2798, !2799, !2800, !2801, !2803}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !2794, file: !2766, line: 49, baseType: !2797, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1576, line: 39, baseType: !410)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !2794, file: !2766, line: 50, baseType: !2797, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2794, file: !2766, line: 51, baseType: !409, size: 32, offset: 64)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "vif", scope: !2794, file: !2766, line: 52, baseType: !409, size: 32, offset: 96)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2794, file: !2766, line: 53, baseType: !2802, size: 16, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !1576, line: 37, baseType: !150)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2794, file: !2766, line: 54, baseType: !149, size: 16, offset: 144)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "v6", scope: !2791, file: !2766, line: 89, baseType: !2805, size: 352)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "frag_v6_compare_key", file: !2766, line: 57, size: 352, elements: !2806)
!2806 = !{!2807, !2820, !2821, !2822, !2823}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !2805, file: !2766, line: 58, baseType: !2808, size: 128)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !2809, line: 33, size: 128, elements: !2810)
!2809 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!2810 = !{!2811}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !2808, file: !2809, line: 40, baseType: !2812, size: 128)
!2812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2808, file: !2809, line: 34, size: 128, elements: !2813)
!2813 = !{!2814, !2816, !2818}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !2812, file: !2809, line: 35, baseType: !2815, size: 128)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, elements: !2407)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !2812, file: !2809, line: 37, baseType: !2817, size: 128)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2802, size: 128, elements: !2134)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !2812, file: !2809, line: 38, baseType: !2819, size: 128)
!2819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2797, size: 128, elements: !733)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !2805, file: !2766, line: 59, baseType: !2808, size: 128, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2805, file: !2766, line: 60, baseType: !409, size: 32, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2805, file: !2766, line: 61, baseType: !2797, size: 32, offset: 288)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "iif", scope: !2805, file: !2766, line: 62, baseType: !409, size: 32, offset: 320)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2782, file: !2766, line: 91, baseType: !2825, size: 320, offset: 448)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2826, line: 11, size: 320, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2827 = !{!2828, !2829, !2830, !2835}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2825, file: !2826, line: 16, baseType: !533, size: 128)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2825, file: !2826, line: 17, baseType: !95, size: 64, offset: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2825, file: !2826, line: 18, baseType: !2831, size: 64, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = !DISubroutineType(types: !2833)
!2833 = !{null, !2834}
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2826, line: 19, baseType: !409, size: 32, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2782, file: !2766, line: 92, baseType: !115, size: 32, offset: 768)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2782, file: !2766, line: 93, baseType: !724, size: 32, offset: 800)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "rb_fragments", scope: !2782, file: !2766, line: 94, baseType: !2153, size: 64, offset: 832)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "fragments_tail", scope: !2782, file: !2766, line: 95, baseType: !2840, size: 64, offset: 896)
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2841, size: 64)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !2842, line: 840, size: 1792, elements: !2843)
!2842 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!2843 = !{!2844, !2860, !2861, !2866, !2870, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !3054, !3056, !3057, !3059, !3060, !3061, !3062}
!2844 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !2842, line: 841, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2841, file: !2842, line: 841, size: 192, elements: !2846)
!2846 = !{!2847, !2857, !2858, !2859}
!2847 = !DIDerivedType(tag: DW_TAG_member, scope: !2845, file: !2842, line: 842, baseType: !2848, size: 192)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2845, file: !2842, line: 842, size: 192, elements: !2849)
!2849 = !{!2850, !2851, !2852}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2848, file: !2842, line: 844, baseType: !2840, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2848, file: !2842, line: 845, baseType: !2840, size: 64, offset: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !2848, file: !2842, line: 847, baseType: !2853, size: 64, offset: 128)
!2853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2848, file: !2842, line: 847, size: 64, elements: !2854)
!2854 = !{!2855, !2856}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2853, file: !2842, line: 848, baseType: !2600, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !2853, file: !2842, line: 853, baseType: !95, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !2845, file: !2842, line: 856, baseType: !795, size: 192, align: 64)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2842, line: 857, baseType: !153, size: 128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !2845, file: !2842, line: 858, baseType: !673, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !2841, file: !2842, line: 861, baseType: !2574, size: 64, offset: 192)
!2861 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !2842, line: 863, baseType: !2862, size: 64, offset: 256)
!2862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2841, file: !2842, line: 863, size: 64, elements: !2863)
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !2862, file: !2842, line: 864, baseType: !2099, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !2862, file: !2842, line: 865, baseType: !413, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !2841, file: !2842, line: 873, baseType: !2867, size: 384, align: 64, offset: 320)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 384, elements: !2868)
!2868 = !{!2869}
!2869 = !DISubrange(count: 48)
!2870 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !2842, line: 875, baseType: !2871, size: 128, offset: 704)
!2871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2841, file: !2842, line: 875, size: 128, elements: !2872)
!2872 = !{!2873, !2881}
!2873 = !DIDerivedType(tag: DW_TAG_member, scope: !2871, file: !2842, line: 876, baseType: !2874, size: 128)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2871, file: !2842, line: 876, size: 128, elements: !2875)
!2875 = !{!2876, !2877}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !2874, file: !2842, line: 877, baseType: !95, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !2874, file: !2842, line: 878, baseType: !2878, size: 64, offset: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !2840}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !2871, file: !2842, line: 880, baseType: !153, size: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !2841, file: !2842, line: 887, baseType: !95, size: 64, offset: 832)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2841, file: !2842, line: 889, baseType: !7, size: 32, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !2841, file: !2842, line: 890, baseType: !7, size: 32, offset: 928)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !2841, file: !2842, line: 891, baseType: !150, size: 16, offset: 960)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !2841, file: !2842, line: 892, baseType: !150, size: 16, offset: 976)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !2841, file: !2842, line: 897, baseType: !150, size: 16, offset: 992)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !2841, file: !2842, line: 908, baseType: !2889, offset: 1008)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, elements: !2890)
!2890 = !{!2891}
!2891 = !DISubrange(count: 0)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !2841, file: !2842, line: 910, baseType: !141, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !2841, file: !2842, line: 911, baseType: !141, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !2841, file: !2842, line: 912, baseType: !141, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !2841, file: !2842, line: 913, baseType: !141, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !2841, file: !2842, line: 914, baseType: !141, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !2841, file: !2842, line: 915, baseType: !141, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !2841, file: !2842, line: 916, baseType: !141, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !2841, file: !2842, line: 918, baseType: !141, size: 8, offset: 1016)
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2841, file: !2842, line: 924, baseType: !2901, size: 448, offset: 1024)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2841, file: !2842, line: 924, size: 448, elements: !2902)
!2902 = !{!2903, !2979}
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !2901, file: !2842, line: 924, baseType: !2904, size: 448)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2842, line: 924, size: 448, elements: !2905)
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2944, !2945, !2946, !2947, !2956, !2961, !2962, !2967, !2972, !2973, !2974, !2975, !2976, !2977, !2978}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !2904, file: !2842, line: 924, baseType: !2889)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !2904, file: !2842, line: 924, baseType: !141, size: 3, flags: DIFlagBitField, extraData: i64 0)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !2904, file: !2842, line: 924, baseType: !141, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !2904, file: !2842, line: 924, baseType: !2889, offset: 8)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !2904, file: !2842, line: 924, baseType: !141, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !2904, file: !2842, line: 924, baseType: !141, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !2904, file: !2842, line: 924, baseType: !141, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !2904, file: !2842, line: 924, baseType: !150, size: 16, offset: 32)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !2904, file: !2842, line: 924, baseType: !149, size: 16, offset: 48)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !2842, line: 924, baseType: !2935, size: 32, offset: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !2842, line: 924, size: 32, elements: !2936)
!2936 = !{!2937, !2939}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !2935, file: !2842, line: 924, baseType: !2938, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !1576, line: 44, baseType: !410)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !2935, file: !2842, line: 924, baseType: !2940, size: 32)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !2842, line: 924, size: 32, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !2940, file: !2842, line: 924, baseType: !150, size: 16)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !2940, file: !2842, line: 924, baseType: !150, size: 16, offset: 16)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2904, file: !2842, line: 924, baseType: !410, size: 32, offset: 96)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !2904, file: !2842, line: 924, baseType: !78, size: 32, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2904, file: !2842, line: 924, baseType: !410, size: 32, offset: 160)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !2842, line: 924, baseType: !2948, size: 32, offset: 192)
!2948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !2842, line: 924, size: 32, elements: !2949)
!2949 = !{!2950, !2951}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !2948, file: !2842, line: 924, baseType: !409, size: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !2842, line: 924, baseType: !2952, size: 32)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2948, file: !2842, line: 924, size: 32, elements: !2953)
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !2952, file: !2842, line: 924, baseType: !2802, size: 16)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !2952, file: !2842, line: 924, baseType: !150, size: 16, offset: 16)
!2956 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !2842, line: 924, baseType: !2957, size: 32, offset: 224)
!2957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !2842, line: 924, size: 32, elements: !2958)
!2958 = !{!2959, !2960}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !2957, file: !2842, line: 924, baseType: !7, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !2957, file: !2842, line: 924, baseType: !7, size: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !2904, file: !2842, line: 924, baseType: !410, size: 32, offset: 256)
!2962 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !2842, line: 924, baseType: !2963, size: 32, offset: 288)
!2963 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !2842, line: 924, size: 32, elements: !2964)
!2964 = !{!2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !2963, file: !2842, line: 924, baseType: !410, size: 32)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !2963, file: !2842, line: 924, baseType: !410, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2904, file: !2842, line: 924, baseType: !2968, size: 16, offset: 320)
!2968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2904, file: !2842, line: 924, size: 16, elements: !2969)
!2969 = !{!2970, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !2968, file: !2842, line: 924, baseType: !2802, size: 16)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !2968, file: !2842, line: 924, baseType: !141, size: 8)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !2904, file: !2842, line: 924, baseType: !150, size: 16, offset: 336)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !2904, file: !2842, line: 924, baseType: !150, size: 16, offset: 352)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !2904, file: !2842, line: 924, baseType: !150, size: 16, offset: 368)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2904, file: !2842, line: 924, baseType: !2802, size: 16, offset: 384)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !2904, file: !2842, line: 924, baseType: !150, size: 16, offset: 400)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !2904, file: !2842, line: 924, baseType: !150, size: 16, offset: 416)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !2904, file: !2842, line: 924, baseType: !150, size: 16, offset: 432)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !2901, file: !2842, line: 924, baseType: !2980, size: 448)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !2842, line: 924, size: 448, elements: !2981)
!2981 = !{!2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3019, !3020, !3021, !3022, !3031, !3036, !3037, !3042, !3047, !3048, !3049, !3050, !3051, !3052, !3053}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !2980, file: !2842, line: 924, baseType: !2889)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !2980, file: !2842, line: 924, baseType: !141, size: 3, flags: DIFlagBitField, extraData: i64 0)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !2980, file: !2842, line: 924, baseType: !141, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !2980, file: !2842, line: 924, baseType: !2889, offset: 8)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !2980, file: !2842, line: 924, baseType: !141, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !2980, file: !2842, line: 924, baseType: !141, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !2980, file: !2842, line: 924, baseType: !141, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !2980, file: !2842, line: 924, baseType: !150, size: 16, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !2980, file: !2842, line: 924, baseType: !149, size: 16, offset: 48)
!3010 = !DIDerivedType(tag: DW_TAG_member, scope: !2980, file: !2842, line: 924, baseType: !3011, size: 32, offset: 64)
!3011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !2842, line: 924, size: 32, elements: !3012)
!3012 = !{!3013, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !3011, file: !2842, line: 924, baseType: !2938, size: 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, scope: !3011, file: !2842, line: 924, baseType: !3015, size: 32)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3011, file: !2842, line: 924, size: 32, elements: !3016)
!3016 = !{!3017, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !3015, file: !2842, line: 924, baseType: !150, size: 16)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !3015, file: !2842, line: 924, baseType: !150, size: 16, offset: 16)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2980, file: !2842, line: 924, baseType: !410, size: 32, offset: 96)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !2980, file: !2842, line: 924, baseType: !78, size: 32, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2980, file: !2842, line: 924, baseType: !410, size: 32, offset: 160)
!3022 = !DIDerivedType(tag: DW_TAG_member, scope: !2980, file: !2842, line: 924, baseType: !3023, size: 32, offset: 192)
!3023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !2842, line: 924, size: 32, elements: !3024)
!3024 = !{!3025, !3026}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !3023, file: !2842, line: 924, baseType: !409, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !3023, file: !2842, line: 924, baseType: !3027, size: 32)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3023, file: !2842, line: 924, size: 32, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !3027, file: !2842, line: 924, baseType: !2802, size: 16)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !3027, file: !2842, line: 924, baseType: !150, size: 16, offset: 16)
!3031 = !DIDerivedType(tag: DW_TAG_member, scope: !2980, file: !2842, line: 924, baseType: !3032, size: 32, offset: 224)
!3032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !2842, line: 924, size: 32, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !3032, file: !2842, line: 924, baseType: !7, size: 32)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !3032, file: !2842, line: 924, baseType: !7, size: 32)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !2980, file: !2842, line: 924, baseType: !410, size: 32, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_member, scope: !2980, file: !2842, line: 924, baseType: !3038, size: 32, offset: 288)
!3038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !2842, line: 924, size: 32, elements: !3039)
!3039 = !{!3040, !3041}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !3038, file: !2842, line: 924, baseType: !410, size: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !3038, file: !2842, line: 924, baseType: !410, size: 32)
!3042 = !DIDerivedType(tag: DW_TAG_member, scope: !2980, file: !2842, line: 924, baseType: !3043, size: 16, offset: 320)
!3043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2980, file: !2842, line: 924, size: 16, elements: !3044)
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !3043, file: !2842, line: 924, baseType: !2802, size: 16)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !3043, file: !2842, line: 924, baseType: !141, size: 8)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !2980, file: !2842, line: 924, baseType: !150, size: 16, offset: 336)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !2980, file: !2842, line: 924, baseType: !150, size: 16, offset: 352)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !2980, file: !2842, line: 924, baseType: !150, size: 16, offset: 368)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !2980, file: !2842, line: 924, baseType: !2802, size: 16, offset: 384)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !2980, file: !2842, line: 924, baseType: !150, size: 16, offset: 400)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !2980, file: !2842, line: 924, baseType: !150, size: 16, offset: 416)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !2980, file: !2842, line: 924, baseType: !150, size: 16, offset: 432)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2841, file: !2842, line: 1047, baseType: !3055, size: 32, offset: 1472)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !2842, line: 683, baseType: !7)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2841, file: !2842, line: 1048, baseType: !3055, size: 32, offset: 1504)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2841, file: !2842, line: 1049, baseType: !3058, size: 64, offset: 1536)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2841, file: !2842, line: 1050, baseType: !3058, size: 64, offset: 1600)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !2841, file: !2842, line: 1051, baseType: !7, size: 32, offset: 1664)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2841, file: !2842, line: 1052, baseType: !724, size: 32, offset: 1696)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !2841, file: !2842, line: 1056, baseType: !3063, size: 64, offset: 1728)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !2842, line: 4679, size: 64, elements: !3065)
!3065 = !{!3066, !3067, !3069, !3070}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3064, file: !2842, line: 4680, baseType: !724, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3064, file: !2842, line: 4681, baseType: !3068, size: 8, offset: 32)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 8, elements: !2219)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !3064, file: !2842, line: 4682, baseType: !139, size: 8, offset: 40)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3064, file: !2842, line: 4683, baseType: !3071, align: 64, offset: 64)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, elements: !746)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "last_run_head", scope: !2782, file: !2766, line: 96, baseType: !2840, size: 64, offset: 960)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !2782, file: !2766, line: 97, baseType: !2099, size: 64, offset: 1024)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2782, file: !2766, line: 98, baseType: !78, size: 32, offset: 1088)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "meat", scope: !2782, file: !2766, line: 99, baseType: !78, size: 32, offset: 1120)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !2782, file: !2766, line: 100, baseType: !139, size: 8, offset: 1152)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2782, file: !2766, line: 101, baseType: !141, size: 8, offset: 1160)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !2782, file: !2766, line: 102, baseType: !149, size: 16, offset: 1168)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !2782, file: !2766, line: 103, baseType: !2764, size: 64, offset: 1216)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2782, file: !2766, line: 104, baseType: !679, size: 128, align: 64, offset: 1280)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !2774, file: !2766, line: 112, baseType: !3082, size: 64, offset: 128)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !2781}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "frag_expire", scope: !2774, file: !2766, line: 113, baseType: !2831, size: 64, offset: 192)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cachep", scope: !2774, file: !2766, line: 114, baseType: !3087, size: 64, offset: 256)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3089, line: 11, flags: DIFlagFwdDecl)
!3089 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "frags_cache_name", scope: !2774, file: !2766, line: 115, baseType: !72, size: 64, offset: 320)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rhash_params", scope: !2774, file: !2766, line: 116, baseType: !3092, size: 320, offset: 384)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_params", file: !2786, line: 56, size: 320, elements: !3093)
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3106, !3108}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "nelem_hint", scope: !3092, file: !2786, line: 57, baseType: !149, size: 16)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3092, file: !2786, line: 58, baseType: !149, size: 16, offset: 16)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "key_offset", scope: !3092, file: !2786, line: 59, baseType: !149, size: 16, offset: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "head_offset", scope: !3092, file: !2786, line: 60, baseType: !149, size: 16, offset: 48)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "max_size", scope: !3092, file: !2786, line: 61, baseType: !7, size: 32, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "min_size", scope: !3092, file: !2786, line: 62, baseType: !149, size: 16, offset: 96)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "automatic_shrinking", scope: !3092, file: !2786, line: 63, baseType: !862, size: 8, offset: 112)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "hashfn", scope: !3092, file: !2786, line: 64, baseType: !3102, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_hashfn_t", file: !2786, line: 38, baseType: !3103)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3104 = !DISubroutineType(types: !3105)
!3105 = !{!409, !1319, !409, !409}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "obj_hashfn", scope: !3092, file: !2786, line: 65, baseType: !3107, size: 64, offset: 192)
!3107 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_hashfn_t", file: !2786, line: 39, baseType: !3103)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "obj_cmpfn", scope: !3092, file: !2786, line: 66, baseType: !3109, size: 64, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_typedef, name: "rht_obj_cmpfn_t", file: !2786, line: 40, baseType: !3110)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!78, !3113, !1319}
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable_compare_arg", file: !2786, line: 33, size: 128, elements: !3115)
!3115 = !{!3116, !3131}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "ht", scope: !3114, file: !2786, line: 34, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhashtable", file: !2786, line: 81, size: 1088, elements: !3119)
!3119 = !{!3120, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "tbl", scope: !3118, file: !2786, line: 82, baseType: !3121, size: 64)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DICompositeType(tag: DW_TAG_structure_type, name: "bucket_table", file: !2786, line: 26, flags: DIFlagFwdDecl)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "key_len", scope: !3118, file: !2786, line: 83, baseType: !7, size: 32, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "max_elems", scope: !3118, file: !2786, line: 84, baseType: !7, size: 32, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3118, file: !2786, line: 85, baseType: !3092, size: 320, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "rhlist", scope: !3118, file: !2786, line: 86, baseType: !862, size: 8, offset: 448)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !3118, file: !2786, line: 87, baseType: !1358, size: 256, offset: 512)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3118, file: !2786, line: 88, baseType: !622, size: 256, offset: 768)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3118, file: !2786, line: 89, baseType: !115, size: 32, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "nelems", scope: !3118, file: !2786, line: 90, baseType: !105, size: 32, offset: 1056)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3114, file: !2786, line: 35, baseType: !1319, size: 64, offset: 64)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !2774, file: !2766, line: 117, baseType: !724, size: 32, offset: 704)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2774, file: !2766, line: 118, baseType: !1156, size: 256, offset: 768)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !2765, file: !2766, line: 20, baseType: !2478, size: 64, offset: 256)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !2765, file: !2766, line: 21, baseType: !862, size: 8, offset: 320)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "rhashtable", scope: !2765, file: !2766, line: 23, baseType: !3118, size: 1088, align: 512, offset: 512)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2765, file: !2766, line: 26, baseType: !626, size: 64, align: 512, offset: 2048)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !2765, file: !2766, line: 27, baseType: !1358, size: 256, offset: 2112)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !2765, file: !2766, line: 28, baseType: !673, size: 64, offset: 2368)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_all", scope: !2718, file: !2719, line: 80, baseType: !139, size: 8, offset: 2432)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_enable_probe", scope: !2718, file: !2719, line: 81, baseType: !139, size: 8, offset: 2440)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_echo_ignore_broadcasts", scope: !2718, file: !2719, line: 82, baseType: !139, size: 8, offset: 2448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ignore_bogus_error_responses", scope: !2718, file: !2719, line: 83, baseType: !139, size: 8, offset: 2456)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_errors_use_inbound_ifaddr", scope: !2718, file: !2719, line: 84, baseType: !139, size: 8, offset: 2464)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratelimit", scope: !2718, file: !2719, line: 85, baseType: !78, size: 32, offset: 2496)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_icmp_ratemask", scope: !2718, file: !2719, line: 86, baseType: !78, size: 32, offset: 2528)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_pmtu", scope: !2718, file: !2719, line: 88, baseType: !409, size: 32, offset: 2560)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_mtu_expires", scope: !2718, file: !2719, line: 89, baseType: !78, size: 32, offset: 2592)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ip_rt_min_advmss", scope: !2718, file: !2719, line: 90, baseType: !78, size: 32, offset: 2624)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ip_local_ports", scope: !2718, file: !2719, line: 92, baseType: !3151, size: 160, offset: 2656)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "local_ports", file: !2719, line: 21, size: 160, elements: !3152)
!3152 = !{!3153, !3159, !3163}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3151, file: !2719, line: 22, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !382, line: 860, baseType: !3155)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 853, size: 64, elements: !3156)
!3156 = !{!3157, !3158}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3155, file: !382, line: 858, baseType: !381, size: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3155, file: !382, line: 859, baseType: !115, size: 32, offset: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3151, file: !2719, line: 23, baseType: !3160, size: 64, offset: 64)
!3160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !3161)
!3161 = !{!3162}
!3162 = !DISubrange(count: 2)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "warned", scope: !3151, file: !2719, line: 24, baseType: !862, size: 8, offset: 128)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn", scope: !2718, file: !2719, line: 94, baseType: !139, size: 8, offset: 2816)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_ecn_fallback", scope: !2718, file: !2719, line: 95, baseType: !139, size: 8, offset: 2824)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_default_ttl", scope: !2718, file: !2719, line: 97, baseType: !139, size: 8, offset: 2832)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_no_pmtu_disc", scope: !2718, file: !2719, line: 98, baseType: !139, size: 8, offset: 2840)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_use_pmtu", scope: !2718, file: !2719, line: 99, baseType: !139, size: 8, offset: 2848)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_fwd_update_priority", scope: !2718, file: !2719, line: 100, baseType: !139, size: 8, offset: 2856)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_nonlocal_bind", scope: !2718, file: !2719, line: 101, baseType: !139, size: 8, offset: 2864)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_autobind_reuse", scope: !2718, file: !2719, line: 102, baseType: !139, size: 8, offset: 2872)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_dynaddr", scope: !2718, file: !2719, line: 104, baseType: !139, size: 8, offset: 2880)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_early_demux", scope: !2718, file: !2719, line: 105, baseType: !139, size: 8, offset: 2888)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_demux", scope: !2718, file: !2719, line: 109, baseType: !139, size: 8, offset: 2896)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_early_demux", scope: !2718, file: !2719, line: 110, baseType: !139, size: 8, offset: 2904)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_nexthop_compat_mode", scope: !2718, file: !2719, line: 112, baseType: !139, size: 8, offset: 2912)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fwmark_reflect", scope: !2718, file: !2719, line: 114, baseType: !139, size: 8, offset: 2920)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fwmark_accept", scope: !2718, file: !2719, line: 115, baseType: !139, size: 8, offset: 2928)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probing", scope: !2718, file: !2719, line: 119, baseType: !139, size: 8, offset: 2936)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_mtu_probe_floor", scope: !2718, file: !2719, line: 120, baseType: !78, size: 32, offset: 2944)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_base_mss", scope: !2718, file: !2719, line: 121, baseType: !78, size: 32, offset: 2976)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_snd_mss", scope: !2718, file: !2719, line: 122, baseType: !78, size: 32, offset: 3008)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_threshold", scope: !2718, file: !2719, line: 123, baseType: !78, size: 32, offset: 3040)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_probe_interval", scope: !2718, file: !2719, line: 124, baseType: !409, size: 32, offset: 3072)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_time", scope: !2718, file: !2719, line: 126, baseType: !78, size: 32, offset: 3104)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_intvl", scope: !2718, file: !2719, line: 127, baseType: !78, size: 32, offset: 3136)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_keepalive_probes", scope: !2718, file: !2719, line: 128, baseType: !139, size: 8, offset: 3168)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_retries", scope: !2718, file: !2719, line: 130, baseType: !139, size: 8, offset: 3176)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_synack_retries", scope: !2718, file: !2719, line: 131, baseType: !139, size: 8, offset: 3184)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syncookies", scope: !2718, file: !2719, line: 132, baseType: !139, size: 8, offset: 3192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_migrate_req", scope: !2718, file: !2719, line: 133, baseType: !139, size: 8, offset: 3200)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_nr", scope: !2718, file: !2719, line: 134, baseType: !139, size: 8, offset: 3208)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reordering", scope: !2718, file: !2719, line: 135, baseType: !78, size: 32, offset: 3232)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries1", scope: !2718, file: !2719, line: 136, baseType: !139, size: 8, offset: 3264)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retries2", scope: !2718, file: !2719, line: 137, baseType: !139, size: 8, offset: 3272)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_orphan_retries", scope: !2718, file: !2719, line: 138, baseType: !139, size: 8, offset: 3280)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tw_reuse", scope: !2718, file: !2719, line: 139, baseType: !139, size: 8, offset: 3288)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fin_timeout", scope: !2718, file: !2719, line: 140, baseType: !78, size: 32, offset: 3296)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_notsent_lowat", scope: !2718, file: !2719, line: 141, baseType: !7, size: 32, offset: 3328)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_sack", scope: !2718, file: !2719, line: 142, baseType: !139, size: 8, offset: 3360)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_window_scaling", scope: !2718, file: !2719, line: 143, baseType: !139, size: 8, offset: 3368)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_timestamps", scope: !2718, file: !2719, line: 144, baseType: !139, size: 8, offset: 3376)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_early_retrans", scope: !2718, file: !2719, line: 145, baseType: !139, size: 8, offset: 3384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_recovery", scope: !2718, file: !2719, line: 146, baseType: !139, size: 8, offset: 3392)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_thin_linear_timeouts", scope: !2718, file: !2719, line: 147, baseType: !139, size: 8, offset: 3400)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_slow_start_after_idle", scope: !2718, file: !2719, line: 148, baseType: !139, size: 8, offset: 3408)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_retrans_collapse", scope: !2718, file: !2719, line: 149, baseType: !139, size: 8, offset: 3416)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_stdurg", scope: !2718, file: !2719, line: 150, baseType: !139, size: 8, offset: 3424)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rfc1337", scope: !2718, file: !2719, line: 151, baseType: !139, size: 8, offset: 3432)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_abort_on_overflow", scope: !2718, file: !2719, line: 152, baseType: !139, size: 8, offset: 3440)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fack", scope: !2718, file: !2719, line: 153, baseType: !139, size: 8, offset: 3448)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_max_reordering", scope: !2718, file: !2719, line: 154, baseType: !78, size: 32, offset: 3456)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_adv_win_scale", scope: !2718, file: !2719, line: 155, baseType: !78, size: 32, offset: 3488)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_dsack", scope: !2718, file: !2719, line: 156, baseType: !139, size: 8, offset: 3520)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_app_win", scope: !2718, file: !2719, line: 157, baseType: !139, size: 8, offset: 3528)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_frto", scope: !2718, file: !2719, line: 158, baseType: !139, size: 8, offset: 3536)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_nometrics_save", scope: !2718, file: !2719, line: 159, baseType: !139, size: 8, offset: 3544)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_no_ssthresh_metrics_save", scope: !2718, file: !2719, line: 160, baseType: !139, size: 8, offset: 3552)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_moderate_rcvbuf", scope: !2718, file: !2719, line: 161, baseType: !139, size: 8, offset: 3560)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_win_divisor", scope: !2718, file: !2719, line: 162, baseType: !139, size: 8, offset: 3568)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_workaround_signed_windows", scope: !2718, file: !2719, line: 163, baseType: !139, size: 8, offset: 3576)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_limit_output_bytes", scope: !2718, file: !2719, line: 164, baseType: !78, size: 32, offset: 3584)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_challenge_ack_limit", scope: !2718, file: !2719, line: 165, baseType: !78, size: 32, offset: 3616)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_rtt_wlen", scope: !2718, file: !2719, line: 166, baseType: !78, size: 32, offset: 3648)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_min_tso_segs", scope: !2718, file: !2719, line: 167, baseType: !139, size: 8, offset: 3680)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_tso_rtt_log", scope: !2718, file: !2719, line: 168, baseType: !139, size: 8, offset: 3688)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_autocorking", scope: !2718, file: !2719, line: 169, baseType: !139, size: 8, offset: 3696)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_reflect_tos", scope: !2718, file: !2719, line: 170, baseType: !139, size: 8, offset: 3704)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_invalid_ratelimit", scope: !2718, file: !2719, line: 171, baseType: !78, size: 32, offset: 3712)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ss_ratio", scope: !2718, file: !2719, line: 172, baseType: !78, size: 32, offset: 3744)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_pacing_ca_ratio", scope: !2718, file: !2719, line: 173, baseType: !78, size: 32, offset: 3776)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_wmem", scope: !2718, file: !2719, line: 174, baseType: !3233, size: 96, offset: 3808)
!3233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 96, elements: !267)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_rmem", scope: !2718, file: !2719, line: 175, baseType: !3233, size: 96, offset: 3904)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_child_ehash_entries", scope: !2718, file: !2719, line: 176, baseType: !7, size: 32, offset: 4000)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_delay_ns", scope: !2718, file: !2719, line: 177, baseType: !95, size: 64, offset: 4032)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_comp_sack_slack_ns", scope: !2718, file: !2719, line: 178, baseType: !95, size: 64, offset: 4096)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_max_syn_backlog", scope: !2718, file: !2719, line: 179, baseType: !78, size: 32, offset: 4160)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen", scope: !2718, file: !2719, line: 180, baseType: !78, size: 32, offset: 4192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_congestion_control", scope: !2718, file: !2719, line: 181, baseType: !3241, size: 64, offset: 4224)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3243)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_congestion_ops", file: !2719, line: 181, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_fastopen_ctx", scope: !2718, file: !2719, line: 182, baseType: !3245, size: 64, offset: 4288)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_fastopen_context", file: !2719, line: 42, flags: DIFlagFwdDecl)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_fastopen_blackhole_timeout", scope: !2718, file: !2719, line: 183, baseType: !7, size: 32, offset: 4352)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_times", scope: !2718, file: !2719, line: 184, baseType: !105, size: 32, offset: 4384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tfo_active_disable_stamp", scope: !2718, file: !2719, line: 185, baseType: !95, size: 64, offset: 4416)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_timestamp", scope: !2718, file: !2719, line: 186, baseType: !409, size: 32, offset: 4480)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_challenge_count", scope: !2718, file: !2719, line: 187, baseType: !409, size: 32, offset: 4512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_enabled", scope: !2718, file: !2719, line: 188, baseType: !139, size: 8, offset: 4544)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_idle_rehash_rounds", scope: !2718, file: !2719, line: 189, baseType: !139, size: 8, offset: 4552)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_rehash_rounds", scope: !2718, file: !2719, line: 190, baseType: !139, size: 8, offset: 4560)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_suspend_rto_sec", scope: !2718, file: !2719, line: 191, baseType: !139, size: 8, offset: 4568)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_plb_cong_thresh", scope: !2718, file: !2719, line: 192, baseType: !78, size: 32, offset: 4576)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_wmem_min", scope: !2718, file: !2719, line: 194, baseType: !78, size: 32, offset: 4608)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_rmem_min", scope: !2718, file: !2719, line: 195, baseType: !78, size: 32, offset: 4640)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_notify_on_flag_change", scope: !2718, file: !2719, line: 197, baseType: !139, size: 8, offset: 4672)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tcp_syn_linear_timeouts", scope: !2718, file: !2719, line: 198, baseType: !139, size: 8, offset: 4680)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_llm_reports", scope: !2718, file: !2719, line: 204, baseType: !139, size: 8, offset: 4688)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_memberships", scope: !2718, file: !2719, line: 205, baseType: !78, size: 32, offset: 4704)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_max_msf", scope: !2718, file: !2719, line: 206, baseType: !78, size: 32, offset: 4736)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_igmp_qrv", scope: !2718, file: !2719, line: 207, baseType: !78, size: 32, offset: 4768)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "ping_group_range", scope: !2718, file: !2719, line: 209, baseType: !3266, size: 128, offset: 4800)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ping_group_range", file: !2719, line: 27, size: 128, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3266, file: !2719, line: 28, baseType: !3154, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3266, file: !2719, line: 29, baseType: !3270, size: 64, offset: 64)
!3270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 64, elements: !3161)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !2718, file: !2719, line: 211, baseType: !105, size: 32, offset: 4928)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_udp_child_hash_entries", scope: !2718, file: !2719, line: 213, baseType: !7, size: 32, offset: 4960)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_local_reserved_ports", scope: !2718, file: !2719, line: 216, baseType: !3274, size: 64, offset: 4992)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_ip_prot_sock", scope: !2718, file: !2719, line: 217, baseType: !78, size: 32, offset: 5056)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "mrt", scope: !2718, file: !2719, line: 222, baseType: !3277, size: 64, offset: 5120)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "mr_table", file: !2719, line: 222, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_fields", scope: !2718, file: !2719, line: 229, baseType: !409, size: 32, offset: 5184)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_use_neigh", scope: !2718, file: !2719, line: 230, baseType: !139, size: 8, offset: 5216)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_fib_multipath_hash_policy", scope: !2718, file: !2719, line: 231, baseType: !139, size: 8, offset: 5224)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !2718, file: !2719, line: 234, baseType: !3283, size: 64, offset: 5248)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib_notifier_ops", file: !2719, line: 234, flags: DIFlagFwdDecl)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fib_seq", scope: !2718, file: !2719, line: 235, baseType: !7, size: 32, offset: 5312)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_notifier_ops", scope: !2718, file: !2719, line: 237, baseType: !3283, size: 64, offset: 5376)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !2718, file: !2719, line: 238, baseType: !7, size: 32, offset: 5440)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "rt_genid", scope: !2718, file: !2719, line: 240, baseType: !105, size: 32, offset: 5472)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id_key", scope: !2718, file: !2719, line: 241, baseType: !3290, size: 128, offset: 5504)
!3290 = !DIDerivedType(tag: DW_TAG_typedef, name: "siphash_key_t", file: !3291, line: 21, baseType: !3292)
!3291 = !DIFile(filename: "./include/linux/siphash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d57c3335a3ba0d593037d2e9c3d8f6e3")
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3291, line: 19, size: 128, elements: !3293)
!3293 = !{!3294}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3292, file: !3291, line: 20, baseType: !3295, size: 128)
!3295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 128, elements: !3161)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !2479, file: !2480, line: 137, baseType: !3297, size: 6144, offset: 11264)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ipv6", file: !3298, line: 61, size: 6144, elements: !3299)
!3298 = !DIFile(filename: "./include/net/netns/ipv6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd307fc6de84f37ce4af8cda3288a428")
!3299 = !{!3300, !3364, !3409, !3412, !3413, !3414, !3415, !3418, !3421, !3424, !3425, !3426, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3450, !3451, !3452, !3455, !3456, !3457, !3458, !3464}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_dst_ops", scope: !3297, file: !3298, line: 63, baseType: !3301, size: 1536)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dst_ops", file: !2602, line: 15, size: 1536, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3310, !3316, !3322, !3323, !3327, !3331, !3335, !3339, !3340, !3344, !3348, !3352, !3358, !3362, !3363}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !3301, file: !2602, line: 16, baseType: !82, size: 16)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "gc_thresh", scope: !3301, file: !2602, line: 17, baseType: !7, size: 32, offset: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3301, file: !2602, line: 19, baseType: !3306, size: 64, offset: 64)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{null, !3309}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !3301, file: !2602, line: 20, baseType: !3311, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!3314, !3314, !410}
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "dst_entry", file: !2602, line: 8, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "default_advmss", scope: !3301, file: !2602, line: 21, baseType: !3317, size: 64, offset: 192)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DISubroutineType(types: !3319)
!3319 = !{!7, !3320}
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3315)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !3301, file: !2602, line: 22, baseType: !3317, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "cow_metrics", scope: !3301, file: !2602, line: 23, baseType: !3324, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!2305, !3314, !95}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3301, file: !2602, line: 24, baseType: !3328, size: 64, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{null, !3314}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ifdown", scope: !3301, file: !2602, line: 25, baseType: !3332, size: 64, offset: 448)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{null, !3314, !2600}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "negative_advice", scope: !3301, file: !2602, line: 27, baseType: !3336, size: 64, offset: 512)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{null, !2574, !3314}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "link_failure", scope: !3301, file: !2602, line: 28, baseType: !2878, size: 64, offset: 576)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "update_pmtu", scope: !3301, file: !2602, line: 29, baseType: !3341, size: 64, offset: 640)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{null, !3314, !2574, !2840, !409, !862}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "redirect", scope: !3301, file: !2602, line: 32, baseType: !3345, size: 64, offset: 704)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !3314, !2574, !2840}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "local_out", scope: !3301, file: !2602, line: 34, baseType: !3349, size: 64, offset: 768)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!78, !2478, !2574, !2840}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "neigh_lookup", scope: !3301, file: !2602, line: 35, baseType: !3353, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!3356, !3320, !2840, !1319}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "neighbour", file: !2602, line: 35, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_neigh", scope: !3301, file: !2602, line: 38, baseType: !3359, size: 64, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !3320, !1319}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "kmem_cachep", scope: !3301, file: !2602, line: 41, baseType: !3087, size: 64, offset: 960)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "pcpuc_entries", scope: !3301, file: !2602, line: 43, baseType: !920, size: 320, align: 512, offset: 1024)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl", scope: !3297, file: !3298, line: 65, baseType: !3365, size: 1472, offset: 1536)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_sysctl_ipv6", file: !3298, line: 15, size: 1472, elements: !3366)
!3366 = !{!3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !3365, file: !3298, line: 17, baseType: !2555, size: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "route_hdr", scope: !3365, file: !3298, line: 18, baseType: !2555, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "icmp_hdr", scope: !3365, file: !3298, line: 19, baseType: !2555, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "frags_hdr", scope: !3365, file: !3298, line: 20, baseType: !2555, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_hdr", scope: !3365, file: !3298, line: 21, baseType: !2555, size: 64, offset: 256)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "flush_delay", scope: !3365, file: !3298, line: 23, baseType: !78, size: 32, offset: 320)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_max_size", scope: !3365, file: !3298, line: 24, baseType: !78, size: 32, offset: 352)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_min_interval", scope: !3365, file: !3298, line: 25, baseType: !78, size: 32, offset: 384)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_timeout", scope: !3365, file: !3298, line: 26, baseType: !78, size: 32, offset: 416)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_interval", scope: !3365, file: !3298, line: 27, baseType: !78, size: 32, offset: 448)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_elasticity", scope: !3365, file: !3298, line: 28, baseType: !78, size: 32, offset: 480)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_mtu_expires", scope: !3365, file: !3298, line: 29, baseType: !78, size: 32, offset: 512)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_min_advmss", scope: !3365, file: !3298, line: 30, baseType: !78, size: 32, offset: 544)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_fields", scope: !3365, file: !3298, line: 31, baseType: !409, size: 32, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "multipath_hash_policy", scope: !3365, file: !3298, line: 32, baseType: !139, size: 8, offset: 608)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "bindv6only", scope: !3365, file: !3298, line: 33, baseType: !139, size: 8, offset: 616)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_consistency", scope: !3365, file: !3298, line: 34, baseType: !139, size: 8, offset: 624)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "auto_flowlabels", scope: !3365, file: !3298, line: 35, baseType: !139, size: 8, offset: 632)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_time", scope: !3365, file: !3298, line: 36, baseType: !78, size: 32, offset: 640)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_all", scope: !3365, file: !3298, line: 37, baseType: !139, size: 8, offset: 672)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_multicast", scope: !3365, file: !3298, line: 38, baseType: !139, size: 8, offset: 680)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_echo_ignore_anycast", scope: !3365, file: !3298, line: 39, baseType: !139, size: 8, offset: 688)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask", scope: !3365, file: !3298, line: 40, baseType: !3390, size: 256, offset: 704)
!3390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !733)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_ratemask_ptr", scope: !3365, file: !3298, line: 41, baseType: !3274, size: 64, offset: 960)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "anycast_src_echo_reply", scope: !3365, file: !3298, line: 42, baseType: !139, size: 8, offset: 1024)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "ip_nonlocal_bind", scope: !3365, file: !3298, line: 43, baseType: !139, size: 8, offset: 1032)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark_reflect", scope: !3365, file: !3298, line: 44, baseType: !139, size: 8, offset: 1040)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_state_ranges", scope: !3365, file: !3298, line: 45, baseType: !139, size: 8, offset: 1048)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_retries", scope: !3365, file: !3298, line: 46, baseType: !78, size: 32, offset: 1056)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "idgen_delay", scope: !3365, file: !3298, line: 47, baseType: !78, size: 32, offset: 1088)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_reflect", scope: !3365, file: !3298, line: 48, baseType: !78, size: 32, offset: 1120)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_cnt", scope: !3365, file: !3298, line: 49, baseType: !78, size: 32, offset: 1152)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_cnt", scope: !3365, file: !3298, line: 50, baseType: !78, size: 32, offset: 1184)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "max_dst_opts_len", scope: !3365, file: !3298, line: 51, baseType: !78, size: 32, offset: 1216)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "max_hbh_opts_len", scope: !3365, file: !3298, line: 52, baseType: !78, size: 32, offset: 1248)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_flowlabel", scope: !3365, file: !3298, line: 53, baseType: !78, size: 32, offset: 1280)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id", scope: !3365, file: !3298, line: 54, baseType: !409, size: 32, offset: 1312)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_id_wide", scope: !3365, file: !3298, line: 55, baseType: !413, size: 64, offset: 1344)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "skip_notify_on_dev_down", scope: !3365, file: !3298, line: 56, baseType: !139, size: 8, offset: 1408)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fib_notify_on_flag_change", scope: !3365, file: !3298, line: 57, baseType: !139, size: 8, offset: 1416)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6_error_anycast_as_unicast", scope: !3365, file: !3298, line: 58, baseType: !139, size: 8, offset: 1424)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_all", scope: !3297, file: !3298, line: 66, baseType: !3410, size: 64, offset: 3008)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_devconf", file: !3298, line: 66, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "devconf_dflt", scope: !3297, file: !3298, line: 67, baseType: !3410, size: 64, offset: 3072)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "peers", scope: !3297, file: !3298, line: 68, baseType: !2761, size: 64, offset: 3136)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "fqdir", scope: !3297, file: !3298, line: 69, baseType: !2764, size: 64, offset: 3200)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_null_entry", scope: !3297, file: !3298, line: 70, baseType: !3416, size: 64, offset: 3264)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_info", file: !3298, line: 70, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_null_entry", scope: !3297, file: !3298, line: 71, baseType: !3419, size: 64, offset: 3328)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_info", file: !3298, line: 71, flags: DIFlagFwdDecl)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "rt6_stats", scope: !3297, file: !3298, line: 72, baseType: !3422, size: 64, offset: 3392)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt6_statistics", file: !3298, line: 72, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_fib_timer", scope: !3297, file: !3298, line: 73, baseType: !2825, size: 320, offset: 3456)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "fib_table_hash", scope: !3297, file: !3298, line: 74, baseType: !1671, size: 64, offset: 3776)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_main_tbl", scope: !3297, file: !3298, line: 75, baseType: !3427, size: 64, offset: 3840)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DICompositeType(tag: DW_TAG_structure_type, name: "fib6_table", file: !3298, line: 75, flags: DIFlagFwdDecl)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walkers", scope: !3297, file: !3298, line: 76, baseType: !153, size: 128, offset: 3904)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_walker_lock", scope: !3297, file: !3298, line: 77, baseType: !699, size: 64, offset: 4032)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_gc_lock", scope: !3297, file: !3298, line: 78, baseType: !115, size: 32, offset: 4096)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_gc_expire", scope: !3297, file: !3298, line: 79, baseType: !105, size: 32, offset: 4128)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_rt_last_gc", scope: !3297, file: !3298, line: 80, baseType: !95, size: 64, offset: 4160)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "flowlabel_has_excl", scope: !3297, file: !3298, line: 81, baseType: !143, size: 8, offset: 4224)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_sk", scope: !3297, file: !3298, line: 93, baseType: !2574, size: 64, offset: 4288)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_sk", scope: !3297, file: !3298, line: 94, baseType: !2574, size: 64, offset: 4352)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "igmp_sk", scope: !3297, file: !3298, line: 95, baseType: !2574, size: 64, offset: 4416)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "mc_autojoin_sk", scope: !3297, file: !3298, line: 96, baseType: !2574, size: 64, offset: 4480)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "inet6_addr_lst", scope: !3297, file: !3298, line: 98, baseType: !1671, size: 64, offset: 4544)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "addrconf_hash_lock", scope: !3297, file: !3298, line: 99, baseType: !115, size: 32, offset: 4608)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "addr_chk_work", scope: !3297, file: !3298, line: 100, baseType: !3442, size: 704, offset: 4672)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1359, line: 111, size: 704, elements: !3443)
!3443 = !{!3444, !3445, !3446, !3449}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3442, file: !1359, line: 112, baseType: !1358, size: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3442, file: !1359, line: 113, baseType: !2825, size: 320, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3442, file: !1359, line: 116, baseType: !3447, size: 64, offset: 576)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1359, line: 18, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3442, file: !1359, line: 117, baseType: !78, size: 32, offset: 640)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dev_addr_genid", scope: !3297, file: !3298, line: 110, baseType: !105, size: 32, offset: 5376)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fib6_sernum", scope: !3297, file: !3298, line: 111, baseType: !105, size: 32, offset: 5408)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "seg6_data", scope: !3297, file: !3298, line: 112, baseType: !3453, size: 64, offset: 5440)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DICompositeType(tag: DW_TAG_structure_type, name: "seg6_pernet_data", file: !3298, line: 112, flags: DIFlagFwdDecl)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_ops", scope: !3297, file: !3298, line: 113, baseType: !3283, size: 64, offset: 5504)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "ip6mr_notifier_ops", scope: !3297, file: !3298, line: 114, baseType: !3283, size: 64, offset: 5568)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ipmr_seq", scope: !3297, file: !3298, line: 115, baseType: !7, size: 32, offset: 5632)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ip6addrlbl_table", scope: !3297, file: !3298, line: 120, baseType: !3459, size: 128, offset: 5696)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3297, file: !3298, line: 116, size: 128, elements: !3460)
!3460 = !{!3461, !3462, !3463}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3459, file: !3298, line: 117, baseType: !529, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3459, file: !3298, line: 118, baseType: !115, size: 32, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3459, file: !3298, line: 119, baseType: !409, size: 32, offset: 96)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ioam6_data", scope: !3297, file: !3298, line: 121, baseType: !3465, size: 64, offset: 5824)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DICompositeType(tag: DW_TAG_structure_type, name: "ioam6_pernet_data", file: !3298, line: 121, flags: DIFlagFwdDecl)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "nf", scope: !2479, file: !2480, line: 146, baseType: !3468, size: 1536, offset: 17408)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_nf", file: !3469, line: 11, size: 1536, elements: !3470)
!3469 = !DIFile(filename: "./include/net/netns/netfilter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a540a45d672d0c2786c47c3c5b579081")
!3470 = !{!3471, !3472, !3479, !3480, !3486, !3487, !3488}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "proc_netfilter", scope: !3468, file: !3469, line: 13, baseType: !2510, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "nf_loggers", scope: !3468, file: !3469, line: 15, baseType: !3473, size: 704, offset: 64)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3474, size: 704, elements: !3477)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3476 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_logger", file: !3469, line: 8, flags: DIFlagFwdDecl)
!3477 = !{!3478}
!3478 = !DISubrange(count: 11)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "nf_log_dir_header", scope: !3468, file: !3469, line: 17, baseType: !2555, size: 64, offset: 768)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv4", scope: !3468, file: !3469, line: 22, baseType: !3481, size: 320, offset: 832)
!3481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3482, size: 320, elements: !3484)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_hook_entries", file: !3469, line: 22, flags: DIFlagFwdDecl)
!3484 = !{!3485}
!3485 = !DISubrange(count: 5)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "hooks_ipv6", scope: !3468, file: !3469, line: 23, baseType: !3481, size: 320, offset: 1152)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv4_users", scope: !3468, file: !3469, line: 31, baseType: !7, size: 32, offset: 1472)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "defrag_ipv6_users", scope: !3468, file: !3469, line: 34, baseType: !7, size: 32, offset: 1504)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !2479, file: !2480, line: 148, baseType: !3490, size: 832, offset: 18944)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_ct", file: !3491, line: 96, size: 832, elements: !3492)
!3491 = !DIFile(filename: "./include/net/netns/conntrack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "21e64ccd6dbd9c20f643db61f6885b6e")
!3492 = !{!3493, !3494, !3495, !3496, !3497, !3498, !3516, !3519}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_log_invalid", scope: !3490, file: !3491, line: 100, baseType: !139, size: 8)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_events", scope: !3490, file: !3491, line: 101, baseType: !139, size: 8, offset: 8)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acct", scope: !3490, file: !3491, line: 102, baseType: !139, size: 8, offset: 16)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_tstamp", scope: !3490, file: !3491, line: 103, baseType: !139, size: 8, offset: 24)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_checksum", scope: !3490, file: !3491, line: 104, baseType: !139, size: 8, offset: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3490, file: !3491, line: 106, baseType: !3499, size: 64, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_conntrack_stat", file: !3501, line: 8, size: 416, elements: !3502)
!3501 = !DIFile(filename: "./include/linux/netfilter/nf_conntrack_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72d1f1db376003bedde4743ba2b455f9")
!3502 = !{!3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "found", scope: !3500, file: !3501, line: 9, baseType: !7, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "invalid", scope: !3500, file: !3501, line: 10, baseType: !7, size: 32, offset: 32)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "insert", scope: !3500, file: !3501, line: 11, baseType: !7, size: 32, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "insert_failed", scope: !3500, file: !3501, line: 12, baseType: !7, size: 32, offset: 96)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "clash_resolve", scope: !3500, file: !3501, line: 13, baseType: !7, size: 32, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "drop", scope: !3500, file: !3501, line: 14, baseType: !7, size: 32, offset: 160)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "early_drop", scope: !3500, file: !3501, line: 15, baseType: !7, size: 32, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !3500, file: !3501, line: 16, baseType: !7, size: 32, offset: 224)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "expect_new", scope: !3500, file: !3501, line: 17, baseType: !7, size: 32, offset: 256)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "expect_create", scope: !3500, file: !3501, line: 18, baseType: !7, size: 32, offset: 288)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "expect_delete", scope: !3500, file: !3501, line: 19, baseType: !7, size: 32, offset: 320)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "search_restart", scope: !3500, file: !3501, line: 20, baseType: !7, size: 32, offset: 352)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "chaintoolong", scope: !3500, file: !3501, line: 21, baseType: !7, size: 32, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "nf_conntrack_event_cb", scope: !3490, file: !3491, line: 107, baseType: !3517, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ct_event_notifier", file: !3491, line: 107, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "nf_ct_proto", scope: !3490, file: !3491, line: 108, baseType: !3520, size: 640, offset: 192)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_ip_net", file: !3491, line: 79, size: 640, elements: !3521)
!3521 = !{!3522, !3526, !3537, !3542, !3546}
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !3520, file: !3491, line: 80, baseType: !3523, size: 32)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_generic_net", file: !3491, line: 21, size: 32, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3523, file: !3491, line: 22, baseType: !7, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !3520, file: !3491, line: 81, baseType: !3527, size: 480, offset: 32)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_tcp_net", file: !3491, line: 25, size: 480, elements: !3528)
!3528 = !{!3529, !3533, !3534, !3535, !3536}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !3527, file: !3491, line: 26, baseType: !3530, size: 448)
!3530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 448, elements: !3531)
!3531 = !{!3532}
!3532 = !DISubrange(count: 14)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_loose", scope: !3527, file: !3491, line: 27, baseType: !139, size: 8, offset: 448)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_be_liberal", scope: !3527, file: !3491, line: 28, baseType: !139, size: 8, offset: 456)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_max_retrans", scope: !3527, file: !3491, line: 29, baseType: !139, size: 8, offset: 464)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_ignore_invalid_rst", scope: !3527, file: !3491, line: 30, baseType: !139, size: 8, offset: 472)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "udp", scope: !3520, file: !3491, line: 82, baseType: !3538, size: 64, offset: 512)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_udp_net", file: !3491, line: 42, size: 64, elements: !3539)
!3539 = !{!3540}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !3538, file: !3491, line: 43, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !3161)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "icmp", scope: !3520, file: !3491, line: 83, baseType: !3543, size: 32, offset: 576)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nf_icmp_net", file: !3491, line: 49, size: 32, elements: !3544)
!3544 = !{!3545}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3543, file: !3491, line: 50, baseType: !7, size: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "icmpv6", scope: !3520, file: !3491, line: 84, baseType: !3543, size: 32, offset: 608)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "gen", scope: !2479, file: !2480, line: 160, baseType: !3548, size: 64, offset: 19776)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_generic", file: !2480, line: 52, flags: DIFlagFwdDecl)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !2479, file: !2480, line: 163, baseType: !3551, size: 512, offset: 19840)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_bpf", file: !3552, line: 21, size: 512, elements: !3553)
!3552 = !DIFile(filename: "./include/net/netns/bpf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05106686771ead514c5766084ac70d8b")
!3553 = !{!3554, !3558, !3562}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "run_array", scope: !3551, file: !3552, line: 23, baseType: !3555, size: 128)
!3555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3556, size: 128, elements: !3161)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !3552, line: 12, flags: DIFlagFwdDecl)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "progs", scope: !3551, file: !3552, line: 24, baseType: !3559, size: 128, offset: 128)
!3559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3560, size: 128, elements: !3161)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog", file: !3552, line: 11, flags: DIFlagFwdDecl)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3551, file: !3552, line: 25, baseType: !3563, size: 256, offset: 256)
!3563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 256, elements: !3161)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm", scope: !2479, file: !2480, line: 167, baseType: !3565, size: 6656, offset: 20480)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netns_xfrm", file: !3566, line: 32, size: 6656, elements: !3567)
!3566 = !DIFile(filename: "./include/net/netns/xfrm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "692aed6e9598ebb84e84dba1a8ae5b74")
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3582, !3592, !3594, !3595, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "state_all", scope: !3565, file: !3566, line: 33, baseType: !153, size: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "state_bydst", scope: !3565, file: !3566, line: 42, baseType: !1671, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "state_bysrc", scope: !3565, file: !3566, line: 43, baseType: !1671, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "state_byspi", scope: !3565, file: !3566, line: 44, baseType: !1671, size: 64, offset: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "state_byseq", scope: !3565, file: !3566, line: 45, baseType: !1671, size: 64, offset: 320)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "state_hmask", scope: !3565, file: !3566, line: 46, baseType: !7, size: 32, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "state_num", scope: !3565, file: !3566, line: 47, baseType: !7, size: 32, offset: 416)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "state_hash_work", scope: !3565, file: !3566, line: 48, baseType: !1358, size: 256, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "policy_all", scope: !3565, file: !3566, line: 50, baseType: !153, size: 128, offset: 704)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "policy_byidx", scope: !3565, file: !3566, line: 51, baseType: !1671, size: 64, offset: 832)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "policy_idx_hmask", scope: !3565, file: !3566, line: 52, baseType: !7, size: 32, offset: 896)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "idx_generator", scope: !3565, file: !3566, line: 53, baseType: !7, size: 32, offset: 928)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "policy_inexact", scope: !3565, file: !3566, line: 54, baseType: !3581, size: 192, offset: 960)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 192, elements: !267)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "policy_bydst", scope: !3565, file: !3566, line: 55, baseType: !3583, size: 384, offset: 1152)
!3583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3584, size: 384, elements: !267)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hash", file: !3566, line: 14, size: 128, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !3584, file: !3566, line: 15, baseType: !1671, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "hmask", scope: !3584, file: !3566, line: 16, baseType: !7, size: 32, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "dbits4", scope: !3584, file: !3566, line: 17, baseType: !139, size: 8, offset: 96)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "sbits4", scope: !3584, file: !3566, line: 18, baseType: !139, size: 8, offset: 104)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dbits6", scope: !3584, file: !3566, line: 19, baseType: !139, size: 8, offset: 112)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "sbits6", scope: !3584, file: !3566, line: 20, baseType: !139, size: 8, offset: 120)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "policy_count", scope: !3565, file: !3566, line: 56, baseType: !3593, size: 192, offset: 1536)
!3593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !849)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hash_work", scope: !3565, file: !3566, line: 57, baseType: !1358, size: 256, offset: 1728)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "policy_hthresh", scope: !3565, file: !3566, line: 58, baseType: !3596, size: 384, offset: 1984)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xfrm_policy_hthresh", file: !3566, line: 23, size: 384, elements: !3597)
!3597 = !{!3598, !3599, !3600, !3601, !3602, !3603}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3596, file: !3566, line: 24, baseType: !1358, size: 256)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3596, file: !3566, line: 25, baseType: !3154, size: 64, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "lbits4", scope: !3596, file: !3566, line: 26, baseType: !139, size: 8, offset: 320)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "rbits4", scope: !3596, file: !3566, line: 27, baseType: !139, size: 8, offset: 328)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lbits6", scope: !3596, file: !3566, line: 28, baseType: !139, size: 8, offset: 336)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "rbits6", scope: !3596, file: !3566, line: 29, baseType: !139, size: 8, offset: 344)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "inexact_bins", scope: !3565, file: !3566, line: 59, baseType: !153, size: 128, offset: 2368)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk", scope: !3565, file: !3566, line: 62, baseType: !2574, size: 64, offset: 2496)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nlsk_stash", scope: !3565, file: !3566, line: 63, baseType: !2574, size: 64, offset: 2560)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_etime", scope: !3565, file: !3566, line: 65, baseType: !409, size: 32, offset: 2624)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_aevent_rseqth", scope: !3565, file: !3566, line: 66, baseType: !409, size: 32, offset: 2656)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_larval_drop", scope: !3565, file: !3566, line: 67, baseType: !78, size: 32, offset: 2688)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_acq_expires", scope: !3565, file: !3566, line: 68, baseType: !409, size: 32, offset: 2720)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "policy_default", scope: !3565, file: !3566, line: 70, baseType: !717, size: 24, offset: 2752)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "sysctl_hdr", scope: !3565, file: !3566, line: 73, baseType: !2555, size: 64, offset: 2816)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm4_dst_ops", scope: !3565, file: !3566, line: 76, baseType: !3301, size: 1536, offset: 3072)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm6_dst_ops", scope: !3565, file: !3566, line: 78, baseType: !3301, size: 1536, offset: 4608)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_lock", scope: !3565, file: !3566, line: 80, baseType: !115, size: 32, offset: 6144)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_state_hash_generation", scope: !3565, file: !3566, line: 81, baseType: !381, size: 32, offset: 6176)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_hash_generation", scope: !3565, file: !3566, line: 82, baseType: !381, size: 32, offset: 6208)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_policy_lock", scope: !3565, file: !3566, line: 84, baseType: !115, size: 32, offset: 6240)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "xfrm_cfg_mutex", scope: !3565, file: !3566, line: 85, baseType: !622, size: 256, offset: 6272)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "net_cookie", scope: !2479, file: !2480, line: 170, baseType: !413, size: 64, offset: 27136)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "diag_nlsk", scope: !2479, file: !2480, line: 190, baseType: !2574, size: 64, offset: 27200)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2435, file: !2436, line: 38, baseType: !3623, size: 64, offset: 384)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2436, line: 38, flags: DIFlagFwdDecl)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2435, file: !2436, line: 39, baseType: !3623, size: 64, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2435, file: !2436, line: 40, baseType: !3627, size: 64, offset: 512)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2436, line: 12, flags: DIFlagFwdDecl)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1981, file: !1625, line: 1110, baseType: !3630, size: 64, offset: 15360)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3632, line: 93, size: 8768, elements: !3633)
!3632 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3633 = !{!3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3681, !3690, !3691, !3693, !3694, !3695, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3731, !3732, !3739, !3749, !3752, !3753, !3756, !3757, !3758, !3759, !3760, !3761}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3631, file: !3632, line: 94, baseType: !724, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3631, file: !3632, line: 95, baseType: !105, size: 32, offset: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3631, file: !3632, line: 96, baseType: !78, size: 32, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3631, file: !3632, line: 97, baseType: !78, size: 32, offset: 96)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3631, file: !3632, line: 98, baseType: !153, size: 128, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3631, file: !3632, line: 100, baseType: !110, size: 192, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3631, file: !3632, line: 103, baseType: !1980, size: 64, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3631, file: !3632, line: 106, baseType: !3642, size: 192, offset: 512)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !950, line: 32, size: 192, elements: !3643)
!3643 = !{!3644, !3645}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3642, file: !950, line: 33, baseType: !153, size: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3642, file: !950, line: 34, baseType: !3646, size: 64, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3647, line: 25, baseType: !3648)
!3647 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3648 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3647, line: 23, size: 64, elements: !3649)
!3649 = !{!3650}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3648, file: !3647, line: 24, baseType: !2218, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3631, file: !3632, line: 109, baseType: !529, size: 64, offset: 704)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3631, file: !3632, line: 112, baseType: !78, size: 32, offset: 768)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3631, file: !3632, line: 114, baseType: !78, size: 32, offset: 800)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3631, file: !3632, line: 115, baseType: !1980, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3631, file: !3632, line: 118, baseType: !78, size: 32, offset: 896)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3631, file: !3632, line: 119, baseType: !7, size: 32, offset: 928)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3631, file: !3632, line: 121, baseType: !3658, size: 64, offset: 960)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3632, line: 80, size: 448, elements: !3660)
!3660 = !{!3661, !3662, !3668}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3659, file: !3632, line: 81, baseType: !105, size: 32)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3659, file: !3632, line: 82, baseType: !3663, size: 128, offset: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3632, line: 75, size: 128, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3663, file: !3632, line: 76, baseType: !1980, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3663, file: !3632, line: 77, baseType: !3667, size: 64, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3659, file: !3632, line: 83, baseType: !1156, size: 256, offset: 192)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3631, file: !3632, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3631, file: !3632, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3631, file: !3632, line: 138, baseType: !7, size: 32, offset: 1056)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3631, file: !3632, line: 139, baseType: !153, size: 128, offset: 1088)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3631, file: !3632, line: 142, baseType: !2091, size: 512, offset: 1216)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3631, file: !3632, line: 143, baseType: !2099, size: 64, offset: 1728)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3631, file: !3632, line: 150, baseType: !3676, size: 256, offset: 1792)
!3676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3677, size: 256, elements: !3161)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3632, line: 38, size: 128, elements: !3678)
!3678 = !{!3679, !3680}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3677, file: !3632, line: 39, baseType: !413, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3677, file: !3632, line: 40, baseType: !413, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3631, file: !3632, line: 156, baseType: !3682, size: 192, offset: 2048)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3632, line: 66, size: 192, elements: !3683)
!3683 = !{!3684}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3682, file: !3632, line: 67, baseType: !3685, size: 192)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3632, line: 47, size: 192, elements: !3686)
!3686 = !{!3687, !3688, !3689}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3685, file: !3632, line: 48, baseType: !628, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3685, file: !3632, line: 49, baseType: !628, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3685, file: !3632, line: 50, baseType: !628, size: 64, offset: 128)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3631, file: !3632, line: 160, baseType: !2384, size: 640, offset: 2240)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3631, file: !3632, line: 163, baseType: !3692, size: 256, offset: 2880)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 256, elements: !733)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3631, file: !3632, line: 169, baseType: !720, size: 64, offset: 3136)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3631, file: !3632, line: 172, baseType: !78, size: 32, offset: 3200)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3631, file: !3632, line: 174, baseType: !3696, size: 64, offset: 3264)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3632, line: 174, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3631, file: !3632, line: 185, baseType: !3154, size: 64, offset: 3328)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3631, file: !3632, line: 186, baseType: !413, size: 64, offset: 3392)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3631, file: !3632, line: 186, baseType: !413, size: 64, offset: 3456)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3631, file: !3632, line: 186, baseType: !413, size: 64, offset: 3520)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3631, file: !3632, line: 186, baseType: !413, size: 64, offset: 3584)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3631, file: !3632, line: 187, baseType: !413, size: 64, offset: 3648)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3631, file: !3632, line: 188, baseType: !413, size: 64, offset: 3712)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3631, file: !3632, line: 189, baseType: !2372, size: 192, offset: 3776)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3631, file: !3632, line: 190, baseType: !95, size: 64, offset: 3968)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3631, file: !3632, line: 190, baseType: !95, size: 64, offset: 4032)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3631, file: !3632, line: 190, baseType: !95, size: 64, offset: 4096)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3631, file: !3632, line: 190, baseType: !95, size: 64, offset: 4160)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3631, file: !3632, line: 191, baseType: !95, size: 64, offset: 4224)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3631, file: !3632, line: 191, baseType: !95, size: 64, offset: 4288)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3631, file: !3632, line: 191, baseType: !95, size: 64, offset: 4352)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3631, file: !3632, line: 191, baseType: !95, size: 64, offset: 4416)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3631, file: !3632, line: 192, baseType: !95, size: 64, offset: 4480)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3631, file: !3632, line: 192, baseType: !95, size: 64, offset: 4544)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3631, file: !3632, line: 192, baseType: !95, size: 64, offset: 4608)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3631, file: !3632, line: 192, baseType: !95, size: 64, offset: 4672)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3631, file: !3632, line: 193, baseType: !95, size: 64, offset: 4736)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3631, file: !3632, line: 193, baseType: !95, size: 64, offset: 4800)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3631, file: !3632, line: 194, baseType: !3721, size: 448, offset: 4864)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3722, line: 12, size: 448, elements: !3723)
!3722 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729, !3730}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3721, file: !3722, line: 15, baseType: !413, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3721, file: !3722, line: 17, baseType: !413, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3721, file: !3722, line: 19, baseType: !413, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3721, file: !3722, line: 21, baseType: !413, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3721, file: !3722, line: 29, baseType: !413, size: 64, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3721, file: !3722, line: 35, baseType: !413, size: 64, offset: 320)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3721, file: !3722, line: 44, baseType: !413, size: 64, offset: 384)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3631, file: !3632, line: 202, baseType: !415, size: 64, offset: 5312)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3631, file: !3632, line: 213, baseType: !3733, size: 2048, offset: 5376)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3734, size: 2048, elements: !2407)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3735, line: 43, size: 128, elements: !3736)
!3735 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3736 = !{!3737, !3738}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3734, file: !3735, line: 44, baseType: !94, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3734, file: !3735, line: 45, baseType: !94, size: 64, offset: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3631, file: !3632, line: 216, baseType: !3740, size: 448, offset: 7424)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3632, line: 30, size: 448, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3745, !3746, !3747, !3748}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3740, file: !3632, line: 31, baseType: !78, size: 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3740, file: !3632, line: 32, baseType: !301, size: 64, offset: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3740, file: !3632, line: 33, baseType: !95, size: 64, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3740, file: !3632, line: 34, baseType: !413, size: 64, offset: 192)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3740, file: !3632, line: 34, baseType: !413, size: 64, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3740, file: !3632, line: 35, baseType: !95, size: 64, offset: 320)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3740, file: !3632, line: 35, baseType: !95, size: 64, offset: 384)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3631, file: !3632, line: 219, baseType: !3750, size: 64, offset: 7872)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3632, line: 219, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3631, file: !3632, line: 222, baseType: !7, size: 32, offset: 7936)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3631, file: !3632, line: 223, baseType: !3754, size: 64, offset: 8000)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3632, line: 223, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3631, file: !3632, line: 230, baseType: !862, size: 8, offset: 8064)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3631, file: !3632, line: 231, baseType: !831, size: 16, offset: 8080)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3631, file: !3632, line: 232, baseType: !831, size: 16, offset: 8096)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3631, file: !3632, line: 234, baseType: !1204, size: 64, offset: 8128)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3631, file: !3632, line: 237, baseType: !622, size: 256, offset: 8192)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3631, file: !3632, line: 243, baseType: !803, size: 320, offset: 8448)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1981, file: !1625, line: 1111, baseType: !3763, size: 64, offset: 15424)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3632, line: 20, size: 16640, elements: !3765)
!3765 = !{!3766, !3767, !3768, !3769}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3764, file: !3632, line: 21, baseType: !115, size: 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3764, file: !3632, line: 22, baseType: !724, size: 32, offset: 32)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3764, file: !3632, line: 23, baseType: !110, size: 192, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3764, file: !3632, line: 24, baseType: !3770, size: 16384, offset: 256)
!3770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3771, size: 16384, elements: !271)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !950, line: 51, size: 256, elements: !3772)
!3772 = !{!3773}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3771, file: !950, line: 52, baseType: !3774, size: 256)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !950, line: 37, size: 256, elements: !3775)
!3775 = !{!3776, !3783, !3784, !3790}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3774, file: !950, line: 39, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3778, line: 83, baseType: !3779)
!3778 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3778, line: 82, baseType: !3781)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{null, !78}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3774, file: !950, line: 40, baseType: !95, size: 64, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3774, file: !950, line: 46, baseType: !3785, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3778, line: 86, baseType: !3786)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3778, line: 85, baseType: !3788)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{null}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3774, file: !950, line: 48, baseType: !3646, size: 64, offset: 192)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1981, file: !1625, line: 1112, baseType: !3646, size: 64, offset: 15488)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1981, file: !1625, line: 1113, baseType: !3646, size: 64, offset: 15552)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1981, file: !1625, line: 1115, baseType: !3646, size: 64, offset: 15616)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1981, file: !1625, line: 1116, baseType: !3642, size: 192, offset: 15680)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1981, file: !1625, line: 1117, baseType: !95, size: 64, offset: 15872)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1981, file: !1625, line: 1118, baseType: !91, size: 64, offset: 15936)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1981, file: !1625, line: 1119, baseType: !7, size: 32, offset: 16000)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1981, file: !1625, line: 1121, baseType: !682, size: 64, offset: 16064)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1981, file: !1625, line: 1125, baseType: !3800, size: 64, offset: 16128)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1625, line: 43, flags: DIFlagFwdDecl)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1981, file: !1625, line: 1127, baseType: !346, size: 32, offset: 16192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1981, file: !1625, line: 1128, baseType: !7, size: 32, offset: 16224)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1981, file: !1625, line: 1130, baseType: !3805, size: 128, offset: 16256)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3806, line: 37, size: 128, elements: !3807)
!3806 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3807 = !{!3808, !3809, !3810}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3805, file: !3806, line: 38, baseType: !78, size: 32)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3805, file: !3806, line: 39, baseType: !105, size: 32, offset: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3805, file: !3806, line: 40, baseType: !3811, size: 64, offset: 64)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3806, line: 24, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1981, file: !1625, line: 1131, baseType: !3814, size: 256, offset: 16384)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3815, line: 12, size: 256, elements: !3816)
!3815 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3816 = !{!3817, !3818, !3819, !3820}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3814, file: !3815, line: 13, baseType: !266, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3814, file: !3815, line: 14, baseType: !95, size: 64, offset: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3814, file: !3815, line: 15, baseType: !95, size: 64, offset: 128)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3814, file: !3815, line: 16, baseType: !862, size: 8, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1981, file: !1625, line: 1134, baseType: !413, size: 64, offset: 16640)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1981, file: !1625, line: 1135, baseType: !413, size: 64, offset: 16704)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1981, file: !1625, line: 1138, baseType: !115, size: 32, offset: 16768)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1981, file: !1625, line: 1141, baseType: !635, size: 32, offset: 16800)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1981, file: !1625, line: 1143, baseType: !3826, size: 64, offset: 16832)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1625, line: 735, size: 64, elements: !3827)
!3827 = !{!3828}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3826, file: !1625, line: 736, baseType: !3829, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1981, file: !1625, line: 1147, baseType: !2150, size: 128, offset: 16896)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1981, file: !1625, line: 1149, baseType: !1980, size: 64, offset: 17024)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1981, file: !1625, line: 1151, baseType: !3833, size: 64, offset: 17088)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1625, line: 1151, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1981, file: !1625, line: 1188, baseType: !76, size: 64, offset: 17152)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1981, file: !1625, line: 1191, baseType: !3837, size: 64, offset: 17216)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1625, line: 44, flags: DIFlagFwdDecl)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1981, file: !1625, line: 1194, baseType: !3840, size: 64, offset: 17280)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1625, line: 45, flags: DIFlagFwdDecl)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1981, file: !1625, line: 1197, baseType: !3843, size: 64, offset: 17344)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1625, line: 61, flags: DIFlagFwdDecl)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1981, file: !1625, line: 1199, baseType: !3846, size: 64, offset: 17408)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3848, line: 99, size: 128, elements: !3849)
!3848 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3849 = !{!3850, !3851, !3852}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3847, file: !3848, line: 100, baseType: !626, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3847, file: !3848, line: 101, baseType: !105, size: 32, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3847, file: !3848, line: 103, baseType: !82, size: 16, offset: 96)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1981, file: !1625, line: 1202, baseType: !3854, size: 64, offset: 17472)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1625, line: 48, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1981, file: !1625, line: 1205, baseType: !95, size: 64, offset: 17536)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1981, file: !1625, line: 1206, baseType: !3858, size: 64, offset: 17600)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !950, line: 14, baseType: !3860)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !950, line: 12, size: 384, elements: !3861)
!3861 = !{!3862}
!3862 = !DIDerivedType(tag: DW_TAG_member, scope: !3860, file: !950, line: 13, baseType: !3863, size: 384)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3860, file: !950, line: 13, size: 384, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3863, file: !950, line: 13, baseType: !78, size: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3863, file: !950, line: 13, baseType: !78, size: 32, offset: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3863, file: !950, line: 13, baseType: !78, size: 32, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3863, file: !950, line: 13, baseType: !3869, size: 256, offset: 128)
!3869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3870, line: 37, size: 256, elements: !3871)
!3870 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3871 = !{!3872, !3877, !3890, !3896, !3905, !3932, !3937}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3869, file: !3870, line: 42, baseType: !3873, size: 64)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3869, file: !3870, line: 39, size: 64, elements: !3874)
!3874 = !{!3875, !3876}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3873, file: !3870, line: 40, baseType: !2348, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3873, file: !3870, line: 41, baseType: !352, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3869, file: !3870, line: 50, baseType: !3878, size: 192)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3869, file: !3870, line: 45, size: 192, elements: !3879)
!3879 = !{!3880, !3882, !3883, !3889}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3878, file: !3870, line: 46, baseType: !3881, size: 32)
!3881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !93, line: 95, baseType: !78)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3878, file: !3870, line: 47, baseType: !78, size: 32, offset: 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3878, file: !3870, line: 48, baseType: !3884, size: 64, offset: 64)
!3884 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3870, line: 11, baseType: !3885)
!3885 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3870, line: 8, size: 64, elements: !3886)
!3886 = !{!3887, !3888}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3885, file: !3870, line: 9, baseType: !78, size: 32)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3885, file: !3870, line: 10, baseType: !76, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3878, file: !3870, line: 49, baseType: !78, size: 32, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3869, file: !3870, line: 57, baseType: !3891, size: 128)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3869, file: !3870, line: 53, size: 128, elements: !3892)
!3892 = !{!3893, !3894, !3895}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3891, file: !3870, line: 54, baseType: !2348, size: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3891, file: !3870, line: 55, baseType: !352, size: 32, offset: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3891, file: !3870, line: 56, baseType: !3884, size: 64, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3869, file: !3870, line: 66, baseType: !3897, size: 256)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3869, file: !3870, line: 60, size: 256, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3902, !3904}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3897, file: !3870, line: 61, baseType: !2348, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3897, file: !3870, line: 62, baseType: !352, size: 32, offset: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3897, file: !3870, line: 63, baseType: !78, size: 32, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3897, file: !3870, line: 64, baseType: !3903, size: 64, offset: 128)
!3903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !93, line: 94, baseType: !300)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3897, file: !3870, line: 65, baseType: !3903, size: 64, offset: 192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3869, file: !3870, line: 105, baseType: !3906, size: 256)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3869, file: !3870, line: 69, size: 256, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3906, file: !3870, line: 70, baseType: !76, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, scope: !3906, file: !3870, line: 79, baseType: !3910, size: 192, offset: 64)
!3910 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3906, file: !3870, line: 79, size: 192, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3921, !3926}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3910, file: !3870, line: 81, baseType: !78, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3910, file: !3870, line: 86, baseType: !831, size: 16)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3910, file: !3870, line: 92, baseType: !3915, size: 192)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3910, file: !3870, line: 88, size: 192, elements: !3916)
!3916 = !{!3917, !3919, !3920}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3915, file: !3870, line: 89, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, elements: !2134)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3915, file: !3870, line: 90, baseType: !76, size: 64, offset: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3915, file: !3870, line: 91, baseType: !76, size: 64, offset: 128)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3910, file: !3870, line: 97, baseType: !3922, size: 96)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3910, file: !3870, line: 94, size: 96, elements: !3923)
!3923 = !{!3924, !3925}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3922, file: !3870, line: 95, baseType: !3918, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3922, file: !3870, line: 96, baseType: !410, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3910, file: !3870, line: 103, baseType: !3927, size: 128)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3910, file: !3870, line: 99, size: 128, elements: !3928)
!3928 = !{!3929, !3930, !3931}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3927, file: !3870, line: 100, baseType: !95, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3927, file: !3870, line: 101, baseType: !410, size: 32, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3927, file: !3870, line: 102, baseType: !410, size: 32, offset: 96)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3869, file: !3870, line: 111, baseType: !3933, size: 128)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3869, file: !3870, line: 108, size: 128, elements: !3934)
!3934 = !{!3935, !3936}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3933, file: !3870, line: 109, baseType: !301, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3933, file: !3870, line: 110, baseType: !78, size: 32, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3869, file: !3870, line: 118, baseType: !3938, size: 128)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3869, file: !3870, line: 114, size: 128, elements: !3939)
!3939 = !{!3940, !3941, !3942}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3938, file: !3870, line: 115, baseType: !76, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3938, file: !3870, line: 116, baseType: !78, size: 32, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3938, file: !3870, line: 117, baseType: !7, size: 32, offset: 96)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1981, file: !1625, line: 1208, baseType: !3721, size: 448, offset: 17664)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1981, file: !1625, line: 1215, baseType: !413, size: 64, offset: 18112)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1981, file: !1625, line: 1217, baseType: !413, size: 64, offset: 18176)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1981, file: !1625, line: 1219, baseType: !413, size: 64, offset: 18240)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1981, file: !1625, line: 1223, baseType: !3948, size: 64, offset: 18304)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3949, line: 99, baseType: !3950)
!3949 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3949, line: 99, size: 64, elements: !3951)
!3951 = !{!3952}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3950, file: !3949, line: 99, baseType: !2218, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1981, file: !1625, line: 1225, baseType: !381, size: 32, offset: 18368)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1981, file: !1625, line: 1226, baseType: !78, size: 32, offset: 18400)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1981, file: !1625, line: 1227, baseType: !78, size: 32, offset: 18432)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1981, file: !1625, line: 1231, baseType: !3957, size: 64, offset: 18496)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1625, line: 1231, flags: DIFlagFwdDecl)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1981, file: !1625, line: 1233, baseType: !153, size: 128, offset: 18560)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1981, file: !1625, line: 1240, baseType: !3961, size: 64, offset: 18688)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1625, line: 62, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1981, file: !1625, line: 1242, baseType: !3964, size: 64, offset: 18752)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1625, line: 1242, flags: DIFlagFwdDecl)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1981, file: !1625, line: 1244, baseType: !153, size: 128, offset: 18816)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1981, file: !1625, line: 1245, baseType: !3968, size: 64, offset: 18944)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1625, line: 51, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1981, file: !1625, line: 1246, baseType: !622, size: 256, offset: 19008)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1981, file: !1625, line: 1247, baseType: !7, size: 32, offset: 19264)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1981, file: !1625, line: 1250, baseType: !3973, size: 64, offset: 19328)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1625, line: 57, flags: DIFlagFwdDecl)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1981, file: !1625, line: 1251, baseType: !622, size: 256, offset: 19392)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1981, file: !1625, line: 1252, baseType: !153, size: 128, offset: 19648)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1981, file: !1625, line: 1259, baseType: !1449, size: 64, offset: 19776)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1981, file: !1625, line: 1260, baseType: !831, size: 16, offset: 19840)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1981, file: !1625, line: 1261, baseType: !831, size: 16, offset: 19856)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1981, file: !1625, line: 1314, baseType: !3981, size: 64, offset: 19904)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3983, line: 62, size: 256, align: 256, elements: !3984)
!3983 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3984 = !{!3985, !3986, !3987, !3988, !3989, !3990, !3991}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3982, file: !3983, line: 75, baseType: !410, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3982, file: !3983, line: 90, baseType: !410, size: 32, offset: 32)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3982, file: !3983, line: 112, baseType: !414, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3982, file: !3983, line: 132, baseType: !410, size: 32, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3982, file: !3983, line: 140, baseType: !410, size: 32, offset: 160)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3982, file: !3983, line: 149, baseType: !410, size: 32, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3982, file: !3983, line: 154, baseType: !3071, offset: 224)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1981, file: !1625, line: 1315, baseType: !409, size: 32, offset: 19968)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1981, file: !1625, line: 1316, baseType: !409, size: 32, offset: 20000)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1981, file: !1625, line: 1321, baseType: !95, size: 64, offset: 20032)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1981, file: !1625, line: 1325, baseType: !78, size: 32, offset: 20096)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1981, file: !1625, line: 1326, baseType: !78, size: 32, offset: 20128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1981, file: !1625, line: 1327, baseType: !78, size: 32, offset: 20160)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1981, file: !1625, line: 1328, baseType: !78, size: 32, offset: 20192)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1981, file: !1625, line: 1329, baseType: !679, size: 128, align: 64, offset: 20224)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1981, file: !1625, line: 1332, baseType: !4001, size: 128, offset: 20352)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4002, line: 51, size: 128, elements: !4003)
!4002 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4003 = !{!4004, !4009, !4010}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4001, file: !4002, line: 60, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4006, line: 7, size: 64, elements: !4007)
!4006 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4007 = !{!4008}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4005, file: !4006, line: 12, baseType: !2215, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4001, file: !4002, line: 63, baseType: !862, size: 8, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4001, file: !4002, line: 70, baseType: !862, size: 8, offset: 72)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1981, file: !1625, line: 1335, baseType: !1623, size: 64, offset: 20480)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1981, file: !1625, line: 1337, baseType: !4013, size: 128, offset: 20544)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4002, line: 39, size: 128, elements: !4014)
!4014 = !{!4015, !4016, !4017}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4013, file: !4002, line: 40, baseType: !1071, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4013, file: !4002, line: 42, baseType: !410, size: 32, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4013, file: !4002, line: 43, baseType: !410, size: 32, offset: 96)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1981, file: !1625, line: 1340, baseType: !4019, size: 64, offset: 20672)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1625, line: 69, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1981, file: !1625, line: 1351, baseType: !78, size: 32, offset: 20736)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1981, file: !1625, line: 1352, baseType: !78, size: 32, offset: 20768)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1981, file: !1625, line: 1354, baseType: !95, size: 64, offset: 20800)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1981, file: !1625, line: 1364, baseType: !413, size: 64, offset: 20864)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1981, file: !1625, line: 1365, baseType: !413, size: 64, offset: 20928)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1981, file: !1625, line: 1412, baseType: !95, size: 64, offset: 20992)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1981, file: !1625, line: 1453, baseType: !4028, size: 64, offset: 21056)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1625, line: 1453, flags: DIFlagFwdDecl)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1981, file: !1625, line: 1457, baseType: !4031, size: 64, offset: 21120)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !164, line: 61, size: 576, elements: !4033)
!4033 = !{!4034, !4035, !4054, !4057, !4058, !4091, !4101}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4032, file: !164, line: 62, baseType: !163, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !164, line: 64, baseType: !4036, size: 192, offset: 64)
!4036 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4032, file: !164, line: 64, size: 192, elements: !4037)
!4037 = !{!4038, !4049}
!4038 = !DIDerivedType(tag: DW_TAG_member, scope: !4036, file: !164, line: 65, baseType: !4039, size: 192)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4036, file: !164, line: 65, size: 192, elements: !4040)
!4040 = !{!4041, !4048}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4039, file: !164, line: 66, baseType: !4042, size: 128)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4043, line: 50, size: 128, elements: !4044)
!4043 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4044 = !{!4045, !4046, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4042, file: !4043, line: 52, baseType: !95, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4042, file: !4043, line: 54, baseType: !7, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4042, file: !4043, line: 55, baseType: !7, size: 32, offset: 96)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4039, file: !164, line: 67, baseType: !95, size: 64, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, scope: !4036, file: !164, line: 70, baseType: !4050, size: 192)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4036, file: !164, line: 70, size: 192, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4050, file: !164, line: 71, baseType: !679, size: 128, align: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4050, file: !164, line: 72, baseType: !95, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4032, file: !164, line: 76, baseType: !4055, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !164, line: 76, flags: DIFlagFwdDecl)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4032, file: !164, line: 77, baseType: !95, size: 64, offset: 320)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4032, file: !164, line: 79, baseType: !4059, size: 64, offset: 384)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4043, line: 25, size: 256, elements: !4061)
!4061 = !{!4062, !4068, !4072}
!4062 = !DIDerivedType(tag: DW_TAG_member, scope: !4060, file: !4043, line: 26, baseType: !4063, size: 128)
!4063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4060, file: !4043, line: 26, size: 128, elements: !4064)
!4064 = !{!4065, !4067}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4063, file: !4043, line: 27, baseType: !4066, size: 128)
!4066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !2407)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4063, file: !4043, line: 28, baseType: !4066, size: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4060, file: !4043, line: 31, baseType: !4069, size: 64, offset: 128)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4071)
!4071 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4043, line: 23, flags: DIFlagFwdDecl)
!4072 = !DIDerivedType(tag: DW_TAG_member, scope: !4060, file: !4043, line: 33, baseType: !4073, size: 64, offset: 192)
!4073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4060, file: !4043, line: 33, size: 64, elements: !4074)
!4074 = !{!4075, !4081, !4086}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4073, file: !4043, line: 38, baseType: !4076, size: 64)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4073, file: !4043, line: 34, size: 64, elements: !4077)
!4077 = !{!4078, !4079, !4080}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4076, file: !4043, line: 35, baseType: !788, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4076, file: !4043, line: 36, baseType: !139, size: 8, offset: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4076, file: !4043, line: 37, baseType: !139, size: 8, offset: 40)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4073, file: !4043, line: 42, baseType: !4082, size: 16)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4073, file: !4043, line: 39, size: 16, elements: !4083)
!4083 = !{!4084, !4085}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4082, file: !4043, line: 40, baseType: !139, size: 8)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4082, file: !4043, line: 41, baseType: !139, size: 8, offset: 8)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4073, file: !4043, line: 46, baseType: !4087, size: 16)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4073, file: !4043, line: 43, size: 16, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4087, file: !4043, line: 44, baseType: !139, size: 8)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4087, file: !4043, line: 45, baseType: !139, size: 8, offset: 8)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4032, file: !164, line: 81, baseType: !4092, size: 64, offset: 448)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !164, line: 85, size: 384, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4093, file: !164, line: 86, baseType: !4055, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4093, file: !164, line: 87, baseType: !95, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4093, file: !164, line: 88, baseType: !95, size: 64, offset: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4093, file: !164, line: 89, baseType: !95, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4093, file: !164, line: 90, baseType: !862, size: 8, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4093, file: !164, line: 92, baseType: !4092, size: 64, offset: 320)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4032, file: !164, line: 82, baseType: !7, size: 32, offset: 512)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1981, file: !1625, line: 1463, baseType: !4103, offset: 21184)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1625, line: 739, elements: !541)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1981, file: !1625, line: 1470, baseType: !679, size: 128, align: 64, offset: 21184)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1981, file: !1625, line: 1471, baseType: !724, size: 32, offset: 21312)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1981, file: !1625, line: 1472, baseType: !78, size: 32, offset: 21344)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1981, file: !1625, line: 1474, baseType: !1980, size: 64, offset: 21376)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1981, file: !1625, line: 1475, baseType: !2825, size: 320, offset: 21440)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1981, file: !1625, line: 1478, baseType: !4110, size: 64, offset: 21760)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4112, line: 49, size: 512, elements: !4113)
!4112 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4113 = !{!4114, !4115, !4116, !4117, !4118, !4120, !4121, !4122, !4124}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4111, file: !4112, line: 50, baseType: !4110, size: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4111, file: !4112, line: 51, baseType: !76, size: 64, offset: 64)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4111, file: !4112, line: 52, baseType: !95, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4111, file: !4112, line: 53, baseType: !95, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4111, file: !4112, line: 54, baseType: !4119, size: 64, offset: 256)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4111, file: !4112, line: 56, baseType: !7, size: 32, offset: 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4111, file: !4112, line: 58, baseType: !7, size: 32, offset: 352)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4111, file: !4112, line: 59, baseType: !4123, size: 64, offset: 384)
!4123 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !81, line: 159, baseType: !413)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4111, file: !4112, line: 60, baseType: !1319, size: 64, offset: 448)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1981, file: !1625, line: 1482, baseType: !724, size: 32, offset: 21824)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1981, file: !1625, line: 1489, baseType: !76, size: 64, offset: 21888)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1981, file: !1625, line: 1504, baseType: !76, size: 64, offset: 21952)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1981, file: !1625, line: 1505, baseType: !414, size: 64, offset: 22016)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1981, file: !1625, line: 1506, baseType: !413, size: 64, offset: 22080)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1981, file: !1625, line: 1507, baseType: !414, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1981, file: !1625, line: 1508, baseType: !414, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1981, file: !1625, line: 1509, baseType: !414, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1981, file: !1625, line: 1510, baseType: !679, size: 128, align: 64, offset: 22208)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1981, file: !1625, line: 1511, baseType: !78, size: 32, offset: 22336)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1981, file: !1625, line: 1515, baseType: !4136, size: 64, offset: 22400)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !674, line: 56, size: 64, elements: !4137)
!4137 = !{!4138}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4136, file: !674, line: 57, baseType: !677, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1981, file: !1625, line: 1518, baseType: !4136, size: 64, offset: 22464)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1981, file: !1625, line: 1528, baseType: !679, size: 128, align: 64, offset: 22528)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1981, file: !1625, line: 1552, baseType: !4142, size: 35328, offset: 23040)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4143, line: 430, size: 35328, elements: !4144)
!4143 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4144 = !{!4145, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4174, !4175, !4176, !4177, !4178, !4179, !4182, !4183, !4184, !4185}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4142, file: !4143, line: 432, baseType: !4146, size: 192)
!4146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4147, size: 192, elements: !267)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4148, line: 16, size: 64, elements: !4149)
!4148 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4149 = !{!4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4147, file: !4148, line: 17, baseType: !149, size: 16)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4147, file: !4148, line: 18, baseType: !149, size: 16, offset: 16)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4147, file: !4148, line: 19, baseType: !149, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4147, file: !4148, line: 19, baseType: !149, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4147, file: !4148, line: 19, baseType: !149, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4147, file: !4148, line: 19, baseType: !149, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4147, file: !4148, line: 19, baseType: !149, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4147, file: !4148, line: 20, baseType: !149, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4147, file: !4148, line: 20, baseType: !149, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4147, file: !4148, line: 20, baseType: !149, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4147, file: !4148, line: 20, baseType: !149, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4147, file: !4148, line: 20, baseType: !149, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4147, file: !4148, line: 20, baseType: !149, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4142, file: !4143, line: 436, baseType: !95, size: 64, offset: 192)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4142, file: !4143, line: 440, baseType: !82, size: 16, offset: 256)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4142, file: !4143, line: 441, baseType: !82, size: 16, offset: 272)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4142, file: !4143, line: 442, baseType: !82, size: 16, offset: 288)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4142, file: !4143, line: 443, baseType: !82, size: 16, offset: 304)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4142, file: !4143, line: 447, baseType: !95, size: 64, offset: 320)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4142, file: !4143, line: 448, baseType: !95, size: 64, offset: 384)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4142, file: !4143, line: 459, baseType: !4171, size: 256, offset: 448)
!4171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4172, size: 256, elements: !733)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4143, line: 428, flags: DIFlagFwdDecl)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4142, file: !4143, line: 461, baseType: !95, size: 64, offset: 704)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4142, file: !4143, line: 463, baseType: !95, size: 64, offset: 768)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4142, file: !4143, line: 465, baseType: !95, size: 64, offset: 832)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4142, file: !4143, line: 466, baseType: !95, size: 64, offset: 896)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4142, file: !4143, line: 467, baseType: !95, size: 64, offset: 960)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4142, file: !4143, line: 473, baseType: !4180, size: 64, offset: 1024)
!4180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4181, size: 64)
!4181 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4143, line: 10, flags: DIFlagFwdDecl)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4142, file: !4143, line: 480, baseType: !95, size: 64, offset: 1088)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4142, file: !4143, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4142, file: !4143, line: 491, baseType: !409, size: 32, offset: 1184)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4142, file: !4143, line: 501, baseType: !4186, size: 33792, offset: 1536)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4187, line: 448, size: 33792, elements: !4188)
!4187 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4188 = !{!4189, !4190, !4191, !4353, !4354, !4360, !4361}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4186, file: !4187, line: 461, baseType: !7, size: 32)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4186, file: !4187, line: 468, baseType: !95, size: 64, offset: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4186, file: !4187, line: 476, baseType: !4192, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4187, line: 356, size: 33280, align: 512, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4193, file: !4187, line: 358, baseType: !7, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4193, file: !4187, line: 361, baseType: !7, size: 32, offset: 32)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4193, file: !4187, line: 364, baseType: !413, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4193, file: !4187, line: 367, baseType: !413, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4193, file: !4187, line: 370, baseType: !413, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4193, file: !4187, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4193, file: !4187, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4193, file: !4187, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4193, file: !4187, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4193, file: !4187, line: 397, baseType: !4205, size: 32768, offset: 512)
!4205 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4187, line: 348, size: 32768, elements: !4206)
!4206 = !{!4207, !4222, !4259, !4336, !4349}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4205, file: !4187, line: 349, baseType: !4208, size: 896)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4187, line: 12, size: 896, elements: !4209)
!4209 = !{!4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4221}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4208, file: !4187, line: 13, baseType: !409, size: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4208, file: !4187, line: 14, baseType: !409, size: 32, offset: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4208, file: !4187, line: 15, baseType: !409, size: 32, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4208, file: !4187, line: 16, baseType: !409, size: 32, offset: 96)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4208, file: !4187, line: 17, baseType: !409, size: 32, offset: 128)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4208, file: !4187, line: 18, baseType: !409, size: 32, offset: 160)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4208, file: !4187, line: 19, baseType: !409, size: 32, offset: 192)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4208, file: !4187, line: 22, baseType: !4218, size: 640, offset: 224)
!4218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 640, elements: !4219)
!4219 = !{!4220}
!4220 = !DISubrange(count: 20)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4208, file: !4187, line: 25, baseType: !409, size: 32, offset: 864)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4205, file: !4187, line: 350, baseType: !4223, size: 4096, align: 128)
!4223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4187, line: 34, size: 4096, align: 128, elements: !4224)
!4224 = !{!4225, !4226, !4227, !4228, !4229, !4244, !4245, !4246, !4248, !4250, !4254}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4223, file: !4187, line: 35, baseType: !149, size: 16)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4223, file: !4187, line: 36, baseType: !149, size: 16, offset: 16)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4223, file: !4187, line: 37, baseType: !149, size: 16, offset: 32)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4223, file: !4187, line: 38, baseType: !149, size: 16, offset: 48)
!4229 = !DIDerivedType(tag: DW_TAG_member, scope: !4223, file: !4187, line: 39, baseType: !4230, size: 128, offset: 64)
!4230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4223, file: !4187, line: 39, size: 128, elements: !4231)
!4231 = !{!4232, !4237}
!4232 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4187, line: 40, baseType: !4233, size: 128)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4230, file: !4187, line: 40, size: 128, elements: !4234)
!4234 = !{!4235, !4236}
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4233, file: !4187, line: 41, baseType: !413, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4233, file: !4187, line: 42, baseType: !413, size: 64, offset: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, scope: !4230, file: !4187, line: 44, baseType: !4238, size: 128)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4230, file: !4187, line: 44, size: 128, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4238, file: !4187, line: 45, baseType: !409, size: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4238, file: !4187, line: 46, baseType: !409, size: 32, offset: 32)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4238, file: !4187, line: 47, baseType: !409, size: 32, offset: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4238, file: !4187, line: 48, baseType: !409, size: 32, offset: 96)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4223, file: !4187, line: 51, baseType: !409, size: 32, offset: 192)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4223, file: !4187, line: 52, baseType: !409, size: 32, offset: 224)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4223, file: !4187, line: 55, baseType: !4247, size: 1024, offset: 256)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 1024, elements: !422)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4223, file: !4187, line: 58, baseType: !4249, size: 2048, offset: 1280)
!4249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 2048, elements: !271)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4223, file: !4187, line: 60, baseType: !4251, size: 384, offset: 3328)
!4251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 384, elements: !4252)
!4252 = !{!4253}
!4253 = !DISubrange(count: 12)
!4254 = !DIDerivedType(tag: DW_TAG_member, scope: !4223, file: !4187, line: 62, baseType: !4255, size: 384, offset: 3712)
!4255 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4223, file: !4187, line: 62, size: 384, elements: !4256)
!4256 = !{!4257, !4258}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4255, file: !4187, line: 63, baseType: !4251, size: 384)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4255, file: !4187, line: 64, baseType: !4251, size: 384)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4205, file: !4187, line: 351, baseType: !4260, size: 1088)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4187, line: 79, size: 1088, elements: !4261)
!4261 = !{!4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4335}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4260, file: !4187, line: 80, baseType: !409, size: 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4260, file: !4187, line: 81, baseType: !409, size: 32, offset: 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4260, file: !4187, line: 82, baseType: !409, size: 32, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4260, file: !4187, line: 83, baseType: !409, size: 32, offset: 96)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4260, file: !4187, line: 84, baseType: !409, size: 32, offset: 128)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4260, file: !4187, line: 85, baseType: !409, size: 32, offset: 160)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4260, file: !4187, line: 86, baseType: !409, size: 32, offset: 192)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4260, file: !4187, line: 88, baseType: !4218, size: 640, offset: 224)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4260, file: !4187, line: 89, baseType: !139, size: 8, offset: 864)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4260, file: !4187, line: 90, baseType: !139, size: 8, offset: 872)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4260, file: !4187, line: 91, baseType: !139, size: 8, offset: 880)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4260, file: !4187, line: 92, baseType: !139, size: 8, offset: 888)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4260, file: !4187, line: 93, baseType: !139, size: 8, offset: 896)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4260, file: !4187, line: 94, baseType: !139, size: 8, offset: 904)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4260, file: !4187, line: 95, baseType: !4277, size: 64, offset: 960)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4279, line: 11, size: 128, elements: !4280)
!4279 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4280 = !{!4281, !4282}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4278, file: !4279, line: 12, baseType: !301, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4278, file: !4279, line: 13, baseType: !4283, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4285, line: 103, size: 1344, elements: !4286)
!4285 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4315, !4316, !4317}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4284, file: !4285, line: 109, baseType: !95, size: 64)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4284, file: !4285, line: 110, baseType: !95, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4284, file: !4285, line: 111, baseType: !95, size: 64, offset: 128)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4284, file: !4285, line: 112, baseType: !95, size: 64, offset: 192)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4284, file: !4285, line: 113, baseType: !95, size: 64, offset: 256)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4284, file: !4285, line: 114, baseType: !95, size: 64, offset: 320)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4284, file: !4285, line: 117, baseType: !95, size: 64, offset: 384)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4284, file: !4285, line: 118, baseType: !95, size: 64, offset: 448)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4284, file: !4285, line: 119, baseType: !95, size: 64, offset: 512)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4284, file: !4285, line: 120, baseType: !95, size: 64, offset: 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4284, file: !4285, line: 121, baseType: !95, size: 64, offset: 640)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4284, file: !4285, line: 122, baseType: !95, size: 64, offset: 704)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4284, file: !4285, line: 123, baseType: !95, size: 64, offset: 768)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4284, file: !4285, line: 124, baseType: !95, size: 64, offset: 832)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4284, file: !4285, line: 125, baseType: !95, size: 64, offset: 896)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4284, file: !4285, line: 139, baseType: !95, size: 64, offset: 960)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4284, file: !4285, line: 142, baseType: !95, size: 64, offset: 1024)
!4304 = !DIDerivedType(tag: DW_TAG_member, scope: !4284, file: !4285, line: 144, baseType: !4305, size: 64, offset: 1088)
!4305 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4284, file: !4285, line: 144, size: 64, elements: !4306)
!4306 = !{!4307, !4308, !4309}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4305, file: !4285, line: 146, baseType: !149, size: 16)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4305, file: !4285, line: 148, baseType: !413, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4305, file: !4285, line: 150, baseType: !4310, size: 64)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4285, line: 59, size: 64, elements: !4311)
!4311 = !{!4312, !4313, !4314}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4310, file: !4285, line: 61, baseType: !413, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4310, file: !4285, line: 63, baseType: !413, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4310, file: !4285, line: 65, baseType: !413, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4284, file: !4285, line: 153, baseType: !95, size: 64, offset: 1152)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4284, file: !4285, line: 154, baseType: !95, size: 64, offset: 1216)
!4317 = !DIDerivedType(tag: DW_TAG_member, scope: !4284, file: !4285, line: 156, baseType: !4318, size: 64, offset: 1280)
!4318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4284, file: !4285, line: 156, size: 64, elements: !4319)
!4319 = !{!4320, !4321, !4322}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4318, file: !4285, line: 158, baseType: !149, size: 16)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4318, file: !4285, line: 160, baseType: !413, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4318, file: !4285, line: 162, baseType: !4323, size: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4285, line: 69, size: 64, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4323, file: !4285, line: 71, baseType: !413, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4323, file: !4285, line: 73, baseType: !413, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4323, file: !4285, line: 75, baseType: !413, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4323, file: !4285, line: 77, baseType: !413, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4323, file: !4285, line: 80, baseType: !413, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4323, file: !4285, line: 83, baseType: !413, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4323, file: !4285, line: 86, baseType: !413, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4323, file: !4285, line: 88, baseType: !413, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4323, file: !4285, line: 93, baseType: !413, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4323, file: !4285, line: 100, baseType: !413, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4260, file: !4187, line: 96, baseType: !409, size: 32, offset: 1024)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4205, file: !4187, line: 352, baseType: !4337, size: 4608, align: 512)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4187, line: 333, size: 4608, align: 512, elements: !4338)
!4338 = !{!4339, !4340, !4347}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4337, file: !4187, line: 334, baseType: !4223, size: 4096, align: 128)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4337, file: !4187, line: 335, baseType: !4341, size: 512, offset: 4096)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4187, line: 312, size: 512, elements: !4342)
!4342 = !{!4343, !4344, !4345}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4341, file: !4187, line: 313, baseType: !413, size: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4341, file: !4187, line: 314, baseType: !413, size: 64, offset: 64)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4341, file: !4187, line: 315, baseType: !4346, size: 384, offset: 128)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 384, elements: !849)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4337, file: !4187, line: 336, baseType: !4348, offset: 4608)
!4348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, elements: !746)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4205, file: !4187, line: 353, baseType: !4350, size: 32768)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 32768, elements: !4351)
!4351 = !{!4352}
!4352 = !DISubrange(count: 4096)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4186, file: !4187, line: 484, baseType: !4192, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4186, file: !4187, line: 491, baseType: !4355, size: 128, offset: 256)
!4355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4187, line: 404, size: 128, elements: !4356)
!4356 = !{!4357, !4358, !4359}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4355, file: !4187, line: 424, baseType: !413, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4355, file: !4187, line: 432, baseType: !7, size: 32, offset: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4355, file: !4187, line: 440, baseType: !7, size: 32, offset: 96)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4186, file: !4187, line: 498, baseType: !4355, size: 128, offset: 384)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4186, file: !4187, line: 508, baseType: !4193, size: 33280, align: 512, offset: 512)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1962, file: !1963, line: 16, baseType: !110, size: 192, offset: 512)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1962, file: !1963, line: 17, baseType: !105, size: 32, offset: 704)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !492, file: !14, line: 1240, baseType: !76, size: 64, offset: 6912)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !492, file: !14, line: 1243, baseType: !409, size: 32, offset: 6976)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !492, file: !14, line: 1245, baseType: !819, size: 64, offset: 7040)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !492, file: !14, line: 1246, baseType: !819, size: 64, offset: 7104)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !492, file: !14, line: 1248, baseType: !410, size: 32, offset: 7168)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !492, file: !14, line: 1249, baseType: !4370, size: 64, offset: 7232)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !492, file: !14, line: 1252, baseType: !4373, size: 256, offset: 7296)
!4373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !422)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !492, file: !14, line: 1253, baseType: !4375, size: 128, offset: 7552)
!4375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4376, line: 21, baseType: !4377)
!4376 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4376, line: 19, size: 128, elements: !4378)
!4378 = !{!4379}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4377, file: !4376, line: 20, baseType: !2815, size: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !492, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !492, file: !14, line: 1261, baseType: !622, size: 256, offset: 7744)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !492, file: !14, line: 1267, baseType: !72, size: 64, offset: 8000)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !492, file: !14, line: 1269, baseType: !438, size: 64, offset: 8064)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !492, file: !14, line: 1271, baseType: !4385, size: 448, offset: 8128)
!4385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1742, line: 63, size: 448, elements: !4386)
!4386 = !{!4387, !4392, !4393, !4394, !4395, !4396, !4397}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4385, file: !1742, line: 64, baseType: !4388, size: 64)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!95, !4391, !1740}
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4385, size: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4385, file: !1742, line: 66, baseType: !4388, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4385, file: !1742, line: 69, baseType: !301, size: 64, offset: 128)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4385, file: !1742, line: 70, baseType: !78, size: 32, offset: 192)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4385, file: !1742, line: 71, baseType: !7, size: 32, offset: 224)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4385, file: !1742, line: 74, baseType: !153, size: 128, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4385, file: !1742, line: 85, baseType: !4398, size: 64, offset: 384)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !492, file: !14, line: 1274, baseType: !626, size: 64, offset: 8576)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !492, file: !14, line: 1280, baseType: !626, size: 64, offset: 8640)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !492, file: !14, line: 1283, baseType: !78, size: 32, offset: 8704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !492, file: !14, line: 1286, baseType: !1674, size: 32, offset: 8736)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !492, file: !14, line: 1289, baseType: !3447, size: 64, offset: 8768)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !492, file: !14, line: 1290, baseType: !529, size: 64, offset: 8832)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !492, file: !14, line: 1297, baseType: !945, size: 64, offset: 8896)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !492, file: !14, line: 1304, baseType: !4407, size: 64, offset: 8960)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4408, line: 49, size: 64, elements: !4409)
!4408 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4409 = !{!4410}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4407, file: !4408, line: 50, baseType: !4411, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4408, line: 41, size: 512, align: 512, elements: !4413)
!4413 = !{!4414, !4415, !4420}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4412, file: !4408, line: 43, baseType: !115, size: 32)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4412, file: !4408, line: 45, baseType: !4416, size: 192, offset: 64)
!4416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4408, line: 29, size: 192, elements: !4417)
!4417 = !{!4418, !4419}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4416, file: !4408, line: 30, baseType: !153, size: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4416, file: !4408, line: 32, baseType: !301, size: 64, offset: 128)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4412, file: !4408, line: 46, baseType: !301, size: 64, offset: 256)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !492, file: !14, line: 1305, baseType: !4407, size: 64, offset: 9024)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !492, file: !14, line: 1306, baseType: !679, size: 128, align: 64, offset: 9088)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !492, file: !14, line: 1307, baseType: !1358, size: 256, offset: 9216)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !492, file: !14, line: 1309, baseType: !622, size: 256, offset: 9472)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !492, file: !14, line: 1314, baseType: !78, size: 32, offset: 9728)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !492, file: !14, line: 1317, baseType: !115, size: 32, align: 512, offset: 10240)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !492, file: !14, line: 1318, baseType: !153, size: 128, offset: 10304)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !492, file: !14, line: 1320, baseType: !115, size: 32, offset: 10432)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !492, file: !14, line: 1321, baseType: !153, size: 128, offset: 10496)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !486, file: !487, line: 73, baseType: !78, size: 32, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !486, file: !487, line: 74, baseType: !4432, size: 64, offset: 192)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !770, line: 42, flags: DIFlagFwdDecl)
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !440, file: !377, line: 141, baseType: !4436, size: 64, offset: 704)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!78, !1802, !862}
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !440, file: !377, line: 142, baseType: !4440, size: 64, offset: 768)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!375, !375, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !376, file: !377, line: 96, baseType: !491, size: 64, offset: 832)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !376, file: !377, line: 97, baseType: !95, size: 64, offset: 896)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !376, file: !377, line: 98, baseType: !76, size: 64, offset: 960)
!4448 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !377, line: 100, baseType: !4449, size: 128, offset: 1024)
!4449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !377, line: 100, size: 128, elements: !4450)
!4450 = !{!4451, !4452}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4449, file: !377, line: 101, baseType: !153, size: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4449, file: !377, line: 102, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !376, file: !377, line: 104, baseType: !153, size: 128, offset: 1152)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !376, file: !377, line: 105, baseType: !153, size: 128, offset: 1280)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !376, file: !377, line: 113, baseType: !4457, size: 128, offset: 1408)
!4457 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !377, line: 109, size: 128, elements: !4458)
!4458 = !{!4459, !4460, !4461}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4457, file: !377, line: 110, baseType: !533, size: 128)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4457, file: !377, line: 111, baseType: !391, size: 128)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4457, file: !377, line: 112, baseType: !679, size: 128, align: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !369, file: !14, line: 1968, baseType: !4463, size: 64, offset: 64)
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4464, size: 64)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!72, !375, !340, !4466}
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4468, line: 10, size: 128, elements: !4469)
!4468 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4469 = !{!4470, !4474}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4467, file: !4468, line: 11, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{null, !76}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4467, file: !4468, line: 12, baseType: !76, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !369, file: !14, line: 1969, baseType: !4476, size: 64, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!78, !4432, !340, !78}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !369, file: !14, line: 1970, baseType: !4480, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!363, !340, !78, !862}
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !369, file: !14, line: 1972, baseType: !4484, size: 64, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!78, !375, !266, !78}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !369, file: !14, line: 1974, baseType: !4488, size: 64, offset: 320)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!78, !4432, !340, !375, !80, !862}
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !369, file: !14, line: 1976, baseType: !4492, size: 64, offset: 384)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = !DISubroutineType(types: !4494)
!4494 = !{!78, !375, !340, !375}
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !369, file: !14, line: 1977, baseType: !4496, size: 64, offset: 448)
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!78, !340, !375}
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !369, file: !14, line: 1978, baseType: !4500, size: 64, offset: 512)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!78, !4432, !340, !375, !72}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !369, file: !14, line: 1980, baseType: !4504, size: 64, offset: 576)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!78, !4432, !340, !375, !80}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !369, file: !14, line: 1982, baseType: !4496, size: 64, offset: 640)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !369, file: !14, line: 1983, baseType: !4509, size: 64, offset: 704)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!78, !4432, !340, !375, !80, !496}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !369, file: !14, line: 1985, baseType: !4513, size: 64, offset: 768)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!78, !4432, !340, !375, !340, !375, !7}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !369, file: !14, line: 1987, baseType: !4517, size: 64, offset: 832)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!78, !4432, !375, !4520}
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4521, size: 64)
!4521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4522)
!4522 = !{!4523, !4524, !4525, !4535, !4544, !4545, !4550, !4551, !4552}
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4521, file: !14, line: 227, baseType: !7, size: 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4521, file: !14, line: 228, baseType: !80, size: 16, offset: 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, scope: !4521, file: !14, line: 241, baseType: !4526, size: 32, offset: 64)
!4526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4521, file: !14, line: 241, size: 32, elements: !4527)
!4527 = !{!4528, !4529}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4526, file: !14, line: 242, baseType: !346, size: 32)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4526, file: !14, line: 243, baseType: !4530, size: 32)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4531, line: 16, baseType: !4532)
!4531 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4531, line: 14, size: 32, elements: !4533)
!4533 = !{!4534}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4532, file: !4531, line: 15, baseType: !351, size: 32)
!4535 = !DIDerivedType(tag: DW_TAG_member, scope: !4521, file: !14, line: 245, baseType: !4536, size: 32, offset: 96)
!4536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4521, file: !14, line: 245, size: 32, elements: !4537)
!4537 = !{!4538, !4539}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4536, file: !14, line: 246, baseType: !355, size: 32)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4536, file: !14, line: 247, baseType: !4540, size: 32)
!4540 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4531, line: 20, baseType: !4541)
!4541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4531, line: 18, size: 32, elements: !4542)
!4542 = !{!4543}
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4541, file: !4531, line: 19, baseType: !359, size: 32)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4521, file: !14, line: 249, baseType: !97, size: 64, offset: 128)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4521, file: !14, line: 250, baseType: !4546, size: 128, offset: 192)
!4546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !820, line: 13, size: 128, elements: !4547)
!4547 = !{!4548, !4549}
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4546, file: !820, line: 14, baseType: !819, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4546, file: !820, line: 15, baseType: !301, size: 64, offset: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4521, file: !14, line: 251, baseType: !4546, size: 128, offset: 320)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4521, file: !14, line: 252, baseType: !4546, size: 128, offset: 448)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4521, file: !14, line: 259, baseType: !990, size: 64, offset: 576)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !369, file: !14, line: 1988, baseType: !4554, size: 64, offset: 896)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!78, !4432, !1802, !4557, !409, !7}
!4557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4558, size: 64)
!4558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4559, line: 22, size: 1280, elements: !4560)
!4559 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4560 = !{!4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4558, file: !4559, line: 23, baseType: !409, size: 32)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4558, file: !4559, line: 24, baseType: !80, size: 16, offset: 32)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4558, file: !4559, line: 25, baseType: !7, size: 32, offset: 64)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4558, file: !4559, line: 26, baseType: !827, size: 32, offset: 96)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4558, file: !4559, line: 27, baseType: !413, size: 64, offset: 128)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4558, file: !4559, line: 28, baseType: !413, size: 64, offset: 192)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4558, file: !4559, line: 41, baseType: !413, size: 64, offset: 256)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4558, file: !4559, line: 42, baseType: !496, size: 32, offset: 320)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4558, file: !4559, line: 43, baseType: !496, size: 32, offset: 352)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4558, file: !4559, line: 44, baseType: !346, size: 32, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4558, file: !4559, line: 45, baseType: !355, size: 32, offset: 416)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4558, file: !4559, line: 46, baseType: !97, size: 64, offset: 448)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4558, file: !4559, line: 47, baseType: !4546, size: 128, offset: 512)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4558, file: !4559, line: 48, baseType: !4546, size: 128, offset: 640)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4558, file: !4559, line: 49, baseType: !4546, size: 128, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4558, file: !4559, line: 50, baseType: !4546, size: 128, offset: 896)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4558, file: !4559, line: 51, baseType: !413, size: 64, offset: 1024)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4558, file: !4559, line: 52, baseType: !413, size: 64, offset: 1088)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4558, file: !4559, line: 53, baseType: !409, size: 32, offset: 1152)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4558, file: !4559, line: 54, baseType: !409, size: 32, offset: 1184)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4558, file: !4559, line: 55, baseType: !413, size: 64, offset: 1216)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !369, file: !14, line: 1990, baseType: !4583, size: 64, offset: 960)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!298, !375, !266, !91}
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !369, file: !14, line: 1991, baseType: !4587, size: 64, offset: 1024)
!4587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4588, size: 64)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!78, !340, !4590, !413, !413}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !369, file: !14, line: 1993, baseType: !4593, size: 64, offset: 1088)
!4593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4594, size: 64)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!78, !340, !78}
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !369, file: !14, line: 1994, baseType: !4597, size: 64, offset: 1152)
!4597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4598, size: 64)
!4598 = !DISubroutineType(types: !4599)
!4599 = !{!78, !340, !375, !990, !7, !80}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !369, file: !14, line: 1997, baseType: !4601, size: 64, offset: 1216)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{!78, !4432, !340, !990, !80}
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !369, file: !14, line: 1999, baseType: !4605, size: 64, offset: 1280)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DISubroutineType(types: !4607)
!4607 = !{!363, !4432, !375, !78}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !369, file: !14, line: 2001, baseType: !4609, size: 64, offset: 1344)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!78, !4432, !375, !363, !78}
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !369, file: !14, line: 2003, baseType: !4613, size: 64, offset: 1408)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!78, !4432, !375, !4616}
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !369, file: !14, line: 2005, baseType: !4619, size: 64, offset: 1472)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = !DISubroutineType(types: !4621)
!4621 = !{!78, !375, !4616}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !369, file: !14, line: 2006, baseType: !4623, size: 64, offset: 1536)
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4624, size: 64)
!4624 = !DISubroutineType(types: !4625)
!4625 = !{!4626, !340}
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4628)
!4628 = !{!4629, !4630}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4627, file: !14, line: 3193, baseType: !1538, size: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4627, file: !14, line: 3194, baseType: !409, size: 32, offset: 128)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !341, file: !14, line: 655, baseType: !491, size: 64, offset: 448)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !341, file: !14, line: 656, baseType: !336, size: 64, offset: 512)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !341, file: !14, line: 659, baseType: !76, size: 64, offset: 576)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !341, file: !14, line: 663, baseType: !95, size: 64, offset: 640)
!4635 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !14, line: 671, baseType: !4636, size: 32, offset: 704)
!4636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !14, line: 671, size: 32, elements: !4637)
!4637 = !{!4638, !4640}
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4636, file: !14, line: 672, baseType: !4639, size: 32)
!4639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4636, file: !14, line: 673, baseType: !7, size: 32)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !341, file: !14, line: 675, baseType: !496, size: 32, offset: 736)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !341, file: !14, line: 676, baseType: !97, size: 64, offset: 768)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !341, file: !14, line: 677, baseType: !4546, size: 128, offset: 832)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !341, file: !14, line: 678, baseType: !4546, size: 128, offset: 960)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !341, file: !14, line: 679, baseType: !4546, size: 128, offset: 1088)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !341, file: !14, line: 680, baseType: !115, size: 32, offset: 1216)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !341, file: !14, line: 681, baseType: !82, size: 16, offset: 1248)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !341, file: !14, line: 682, baseType: !139, size: 8, offset: 1264)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !341, file: !14, line: 683, baseType: !139, size: 8, offset: 1272)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !341, file: !14, line: 684, baseType: !1875, size: 64, offset: 1280)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !341, file: !14, line: 691, baseType: !95, size: 64, offset: 1344)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !341, file: !14, line: 692, baseType: !803, size: 320, offset: 1408)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !341, file: !14, line: 694, baseType: !95, size: 64, offset: 1728)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !341, file: !14, line: 695, baseType: !95, size: 64, offset: 1792)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !341, file: !14, line: 697, baseType: !533, size: 128, offset: 1856)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !341, file: !14, line: 698, baseType: !153, size: 128, offset: 1984)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !341, file: !14, line: 707, baseType: !153, size: 128, offset: 2112)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !341, file: !14, line: 708, baseType: !153, size: 128, offset: 2240)
!4659 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !14, line: 709, baseType: !4660, size: 128, offset: 2368)
!4660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !14, line: 709, size: 128, elements: !4661)
!4661 = !{!4662, !4663}
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4660, file: !14, line: 710, baseType: !529, size: 64)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4660, file: !14, line: 711, baseType: !679, size: 128, align: 64)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !341, file: !14, line: 713, baseType: !628, size: 64, offset: 2496)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !341, file: !14, line: 714, baseType: !628, size: 64, offset: 2560)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !341, file: !14, line: 715, baseType: !105, size: 32, offset: 2624)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !341, file: !14, line: 716, baseType: !105, size: 32, offset: 2656)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !341, file: !14, line: 717, baseType: !105, size: 32, offset: 2688)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !341, file: !14, line: 719, baseType: !105, size: 32, offset: 2720)
!4670 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !14, line: 721, baseType: !4671, size: 64, offset: 2752)
!4671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !14, line: 721, size: 64, elements: !4672)
!4672 = !{!4673, !4674}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4671, file: !14, line: 722, baseType: !981, size: 64)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4671, file: !14, line: 723, baseType: !560, size: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !341, file: !14, line: 725, baseType: !4676, size: 64, offset: 2816)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !341, file: !14, line: 726, baseType: !337, size: 1536, align: 64, offset: 2880)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !341, file: !14, line: 727, baseType: !153, size: 128, offset: 4416)
!4680 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !14, line: 728, baseType: !4681, size: 64, offset: 4544)
!4681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !14, line: 728, size: 64, elements: !4682)
!4682 = !{!4683, !4684, !4687, !4688}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4681, file: !14, line: 729, baseType: !1623, size: 64)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4681, file: !14, line: 730, baseType: !4685, size: 64)
!4685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4686, size: 64)
!4686 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4681, file: !14, line: 731, baseType: !266, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4681, file: !14, line: 732, baseType: !7, size: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !341, file: !14, line: 735, baseType: !410, size: 32, offset: 4608)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !341, file: !14, line: 738, baseType: !410, size: 32, offset: 4640)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !341, file: !14, line: 739, baseType: !4370, size: 64, offset: 4672)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !341, file: !14, line: 750, baseType: !76, size: 64, offset: 4736)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !337, file: !14, line: 474, baseType: !1538, size: 128, offset: 64)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !337, file: !14, line: 475, baseType: !803, size: 320, offset: 192)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !337, file: !14, line: 476, baseType: !1467, size: 32, offset: 512)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !337, file: !14, line: 477, baseType: !105, size: 32, offset: 544)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !337, file: !14, line: 482, baseType: !2150, size: 128, offset: 576)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !337, file: !14, line: 483, baseType: !95, size: 64, offset: 704)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !337, file: !14, line: 484, baseType: !95, size: 64, offset: 768)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !337, file: !14, line: 485, baseType: !4701, size: 64, offset: 832)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4703)
!4703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4704)
!4704 = !{!4705, !4709, !4779, !4783, !4787, !4793, !4797, !4801, !4806, !4810, !4814, !4818, !4819, !4823, !4827, !4831, !4836, !4840, !4847, !4848}
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4703, file: !14, line: 405, baseType: !4706, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4707, size: 64)
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!78, !1071, !572}
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4703, file: !14, line: 406, baseType: !4710, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4711, size: 64)
!4711 = !DISubroutineType(types: !4712)
!4712 = !{!78, !990, !4713}
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !35, line: 293, size: 1536, elements: !4715)
!4715 = !{!4716, !4746, !4760}
!4716 = !DIDerivedType(tag: DW_TAG_member, scope: !4714, file: !35, line: 295, baseType: !4717, size: 512)
!4717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4714, file: !35, line: 295, size: 512, elements: !4718)
!4718 = !{!4719, !4745}
!4719 = !DIDerivedType(tag: DW_TAG_member, scope: !4717, file: !35, line: 296, baseType: !4720, size: 448)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4717, file: !35, line: 296, size: 448, elements: !4721)
!4721 = !{!4722, !4723, !4732, !4733, !4734, !4743, !4744}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4720, file: !35, line: 298, baseType: !95, size: 64)
!4723 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !35, line: 299, baseType: !4724, size: 128, offset: 64)
!4724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4720, file: !35, line: 299, size: 128, elements: !4725)
!4725 = !{!4726, !4727}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4724, file: !35, line: 300, baseType: !153, size: 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, scope: !4724, file: !35, line: 302, baseType: !4728, size: 128)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4724, file: !35, line: 302, size: 128, elements: !4729)
!4729 = !{!4730, !4731}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4728, file: !35, line: 303, baseType: !76, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4728, file: !35, line: 305, baseType: !7, size: 32, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4720, file: !35, line: 310, baseType: !336, size: 64, offset: 192)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4720, file: !35, line: 311, baseType: !95, size: 64, offset: 256)
!4734 = !DIDerivedType(tag: DW_TAG_member, scope: !4720, file: !35, line: 312, baseType: !4735, size: 64, offset: 320)
!4735 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4720, file: !35, line: 312, size: 64, elements: !4736)
!4736 = !{!4737, !4738}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4735, file: !35, line: 313, baseType: !76, size: 64)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4735, file: !35, line: 314, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !35, line: 257, baseType: !4740)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 255, size: 64, elements: !4741)
!4741 = !{!4742}
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4740, file: !35, line: 256, baseType: !95, size: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4720, file: !35, line: 316, baseType: !105, size: 32, offset: 384)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4720, file: !35, line: 317, baseType: !105, size: 32, offset: 416)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4717, file: !35, line: 323, baseType: !1072, size: 512, align: 128)
!4746 = !DIDerivedType(tag: DW_TAG_member, scope: !4714, file: !35, line: 325, baseType: !4747, size: 512, offset: 512)
!4747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4714, file: !35, line: 325, size: 512, elements: !4748)
!4748 = !{!4749, !4759}
!4749 = !DIDerivedType(tag: DW_TAG_member, scope: !4747, file: !35, line: 326, baseType: !4750, size: 320)
!4750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4747, file: !35, line: 326, size: 320, elements: !4751)
!4751 = !{!4752, !4753, !4754, !4755, !4756, !4757, !4758}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4750, file: !35, line: 327, baseType: !95, size: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4750, file: !35, line: 328, baseType: !95, size: 64, offset: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4750, file: !35, line: 329, baseType: !95, size: 64, offset: 128)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4750, file: !35, line: 331, baseType: !105, size: 32, offset: 192)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4750, file: !35, line: 332, baseType: !105, size: 32, offset: 224)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4750, file: !35, line: 333, baseType: !105, size: 32, offset: 256)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4750, file: !35, line: 335, baseType: !7, size: 32, offset: 288)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4747, file: !35, line: 339, baseType: !1072, size: 512, align: 128)
!4760 = !DIDerivedType(tag: DW_TAG_member, scope: !4714, file: !35, line: 341, baseType: !4761, size: 512, offset: 1024)
!4761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4714, file: !35, line: 341, size: 512, elements: !4762)
!4762 = !{!4763, !4772, !4778}
!4763 = !DIDerivedType(tag: DW_TAG_member, scope: !4761, file: !35, line: 342, baseType: !4764, size: 384)
!4764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !35, line: 342, size: 384, elements: !4765)
!4765 = !{!4766, !4767, !4768, !4769, !4770, !4771}
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4764, file: !35, line: 343, baseType: !95, size: 64)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4764, file: !35, line: 344, baseType: !95, size: 64, offset: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4764, file: !35, line: 346, baseType: !76, size: 64, offset: 128)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4764, file: !35, line: 347, baseType: !76, size: 64, offset: 192)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4764, file: !35, line: 348, baseType: !76, size: 64, offset: 256)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4764, file: !35, line: 349, baseType: !76, size: 64, offset: 320)
!4772 = !DIDerivedType(tag: DW_TAG_member, scope: !4761, file: !35, line: 352, baseType: !4773, size: 256)
!4773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4761, file: !35, line: 352, size: 256, elements: !4774)
!4774 = !{!4775, !4776, !4777}
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4773, file: !35, line: 353, baseType: !95, size: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4773, file: !35, line: 354, baseType: !95, size: 64, offset: 64)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4773, file: !35, line: 356, baseType: !153, size: 128, offset: 128)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4761, file: !35, line: 359, baseType: !1072, size: 512, align: 128)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4703, file: !14, line: 409, baseType: !4780, size: 64, offset: 128)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!78, !336, !572}
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4703, file: !14, line: 412, baseType: !4784, size: 64, offset: 192)
!4784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4785, size: 64)
!4785 = !DISubroutineType(types: !4786)
!4786 = !{!862, !336, !4713}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4703, file: !14, line: 414, baseType: !4788, size: 64, offset: 256)
!4788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4789, size: 64)
!4789 = !DISubroutineType(types: !4790)
!4790 = !{null, !4791}
!4791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4792, size: 64)
!4792 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4703, file: !14, line: 416, baseType: !4794, size: 64, offset: 320)
!4794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!78, !990, !336, !97, !7, !4119, !1639}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4703, file: !14, line: 419, baseType: !4798, size: 64, offset: 384)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!78, !990, !336, !97, !7, !7, !1071, !76}
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4703, file: !14, line: 424, baseType: !4802, size: 64, offset: 448)
!4802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!4803 = !DISubroutineType(types: !4804)
!4804 = !{!4805, !336, !4805}
!4805 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !81, line: 131, baseType: !413)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4703, file: !14, line: 425, baseType: !4807, size: 64, offset: 512)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{null, !4713, !91, !91}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4703, file: !14, line: 426, baseType: !4811, size: 64, offset: 576)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!862, !4713, !1467}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4703, file: !14, line: 427, baseType: !4815, size: 64, offset: 640)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{null, !4713}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4703, file: !14, line: 428, baseType: !1000, size: 64, offset: 704)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4703, file: !14, line: 433, baseType: !4820, size: 64, offset: 768)
!4820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4821, size: 64)
!4821 = !DISubroutineType(types: !4822)
!4822 = !{!78, !336, !4713, !4713, !170}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4703, file: !14, line: 435, baseType: !4824, size: 64, offset: 832)
!4824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4825, size: 64)
!4825 = !DISubroutineType(types: !4826)
!4826 = !{!78, !4713}
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4703, file: !14, line: 436, baseType: !4828, size: 64, offset: 896)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!862, !4713, !91, !91}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4703, file: !14, line: 438, baseType: !4832, size: 64, offset: 960)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{null, !4713, !4835, !4835}
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4703, file: !14, line: 439, baseType: !4837, size: 64, offset: 1024)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DISubroutineType(types: !4839)
!4839 = !{!78, !336, !1071}
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4703, file: !14, line: 442, baseType: !4841, size: 64, offset: 1088)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!78, !4844, !990, !4846}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4703, file: !14, line: 444, baseType: !1631, size: 64, offset: 1152)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4703, file: !14, line: 445, baseType: !4849, size: 64, offset: 1216)
!4849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4850, size: 64)
!4850 = !DISubroutineType(types: !4851)
!4851 = !{!78, !1003, !1025}
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !337, file: !14, line: 486, baseType: !95, size: 64, offset: 896)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !337, file: !14, line: 487, baseType: !803, size: 320, offset: 960)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !337, file: !14, line: 488, baseType: !1674, size: 32, offset: 1280)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !337, file: !14, line: 489, baseType: !115, size: 32, offset: 1312)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !337, file: !14, line: 490, baseType: !153, size: 128, offset: 1344)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !337, file: !14, line: 491, baseType: !76, size: 64, offset: 1472)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !327, file: !292, line: 180, baseType: !4859, size: 64, offset: 320)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!298, !990, !231, !326, !266, !97, !91}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !327, file: !292, line: 182, baseType: !4859, size: 64, offset: 384)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !327, file: !292, line: 184, baseType: !4864, size: 64, offset: 448)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!78, !990, !231, !326, !1191}
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !315, file: !292, line: 90, baseType: !4868, size: 64, offset: 192)
!4868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !315, file: !292, line: 91, baseType: !4870, size: 64, offset: 256)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !282, file: !226, line: 120, baseType: !4872, size: 64, offset: 192)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{!4875, !249}
!4875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4876, size: 64)
!4876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4877)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !178, line: 39, size: 384, elements: !4878)
!4878 = !{!4879, !4880, !4884, !4888, !4892, !4896}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4877, file: !178, line: 40, baseType: !177, size: 32)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4877, file: !178, line: 41, baseType: !4881, size: 64, offset: 64)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!862}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4877, file: !178, line: 42, baseType: !4885, size: 64, offset: 128)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!76}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4877, file: !178, line: 43, baseType: !4889, size: 64, offset: 192)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{!1319, !2574}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4877, file: !178, line: 44, baseType: !4893, size: 64, offset: 256)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!1319}
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4877, file: !178, line: 45, baseType: !4471, size: 64, offset: 320)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !282, file: !226, line: 121, baseType: !4898, size: 64, offset: 256)
!4898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4899, size: 64)
!4899 = !DISubroutineType(types: !4900)
!4900 = !{!1319, !249}
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !282, file: !226, line: 122, baseType: !4902, size: 64, offset: 320)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{null, !249, !2556, !2557}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !225, file: !226, line: 70, baseType: !4906, size: 64, offset: 384)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !513, line: 190, size: 1152, elements: !4908)
!4908 = !{!4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4988, !4989, !4990, !4991, !4992, !4995}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4907, file: !513, line: 191, baseType: !105, size: 32)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4907, file: !513, line: 192, baseType: !105, size: 32, offset: 32)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4907, file: !513, line: 202, baseType: !4906, size: 64, offset: 64)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4907, file: !513, line: 203, baseType: !72, size: 64, offset: 128)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4907, file: !513, line: 205, baseType: !795, size: 192, align: 64, offset: 192)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4907, file: !513, line: 207, baseType: !1319, size: 64, offset: 384)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4907, file: !513, line: 208, baseType: !7, size: 32, offset: 448)
!4916 = !DIDerivedType(tag: DW_TAG_member, scope: !4907, file: !513, line: 209, baseType: !4917, size: 256, offset: 512)
!4917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4907, file: !513, line: 209, size: 256, elements: !4918)
!4918 = !{!4919, !4928, !4932}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4917, file: !513, line: 210, baseType: !4920, size: 256)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !513, line: 153, size: 256, elements: !4921)
!4921 = !{!4922, !4923, !4924, !4927}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4920, file: !513, line: 154, baseType: !95, size: 64)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4920, file: !513, line: 156, baseType: !2153, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4920, file: !513, line: 162, baseType: !4925, size: 64, offset: 128)
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !513, line: 162, flags: DIFlagFwdDecl)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4920, file: !513, line: 167, baseType: !95, size: 64, offset: 192)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4917, file: !513, line: 211, baseType: !4929, size: 64)
!4929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !513, line: 170, size: 64, elements: !4930)
!4930 = !{!4931}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4929, file: !513, line: 171, baseType: !4906, size: 64)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4917, file: !513, line: 212, baseType: !4933, size: 256)
!4933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !513, line: 174, size: 256, elements: !4934)
!4934 = !{!4935, !4983, !4986, !4987}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4933, file: !513, line: 175, baseType: !4936, size: 64)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4938)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !513, line: 271, size: 768, elements: !4939)
!4939 = !{!4940, !4960, !4964, !4965, !4966, !4967, !4968, !4972, !4973, !4974, !4975, !4979}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4938, file: !513, line: 276, baseType: !4941, size: 64)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DISubroutineType(types: !4943)
!4943 = !{!78, !4944}
!4944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4945, size: 64)
!4945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !513, line: 251, size: 1216, elements: !4946)
!4946 = !{!4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959}
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4945, file: !513, line: 253, baseType: !4906, size: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4945, file: !513, line: 254, baseType: !990, size: 64, offset: 64)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4945, file: !513, line: 255, baseType: !610, size: 64, offset: 128)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4945, file: !513, line: 256, baseType: !76, size: 64, offset: 192)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4945, file: !513, line: 259, baseType: !622, size: 256, offset: 256)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4945, file: !513, line: 260, baseType: !622, size: 256, offset: 512)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4945, file: !513, line: 261, baseType: !78, size: 32, offset: 768)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4945, file: !513, line: 262, baseType: !153, size: 128, offset: 832)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4945, file: !513, line: 263, baseType: !266, size: 64, offset: 960)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4945, file: !513, line: 265, baseType: !91, size: 64, offset: 1024)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4945, file: !513, line: 266, baseType: !862, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4945, file: !513, line: 267, baseType: !862, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4945, file: !513, line: 268, baseType: !1401, size: 64, offset: 1152)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4938, file: !513, line: 277, baseType: !4961, size: 64, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{null, !4944}
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4938, file: !513, line: 290, baseType: !660, size: 64, offset: 128)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4938, file: !513, line: 292, baseType: !648, size: 64, offset: 192)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4938, file: !513, line: 293, baseType: !656, size: 64, offset: 256)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4938, file: !513, line: 294, baseType: !652, size: 64, offset: 320)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4938, file: !513, line: 296, baseType: !4969, size: 64, offset: 384)
!4969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4970, size: 64)
!4970 = !DISubroutineType(types: !4971)
!4971 = !{!298, !4944, !266, !91, !97}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4938, file: !513, line: 306, baseType: !91, size: 64, offset: 448)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4938, file: !513, line: 313, baseType: !862, size: 8, offset: 512)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4938, file: !513, line: 314, baseType: !4969, size: 64, offset: 576)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4938, file: !513, line: 317, baseType: !4976, size: 64, offset: 640)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!1575, !4944, !1577}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4938, file: !513, line: 320, baseType: !4980, size: 64, offset: 704)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!78, !4944, !1191}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4933, file: !513, line: 176, baseType: !4984, size: 64, offset: 64)
!4984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4985, size: 64)
!4985 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !513, line: 35, flags: DIFlagFwdDecl)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4933, file: !513, line: 177, baseType: !97, size: 64, offset: 128)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4933, file: !513, line: 178, baseType: !4906, size: 64, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4907, file: !513, line: 215, baseType: !76, size: 64, offset: 768)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4907, file: !513, line: 221, baseType: !413, size: 64, offset: 832)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4907, file: !513, line: 223, baseType: !82, size: 16, offset: 896)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4907, file: !513, line: 224, baseType: !80, size: 16, offset: 912)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4907, file: !513, line: 225, baseType: !4993, size: 64, offset: 960)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !513, line: 36, flags: DIFlagFwdDecl)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4907, file: !513, line: 227, baseType: !679, size: 128, align: 64, offset: 1024)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !225, file: !226, line: 71, baseType: !4997, size: 32, offset: 448)
!4997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4998, line: 19, size: 32, elements: !4999)
!4998 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4999 = !{!5000}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4997, file: !4998, line: 20, baseType: !724, size: 32)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !225, file: !226, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !225, file: !226, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !225, file: !226, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !225, file: !226, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !225, file: !226, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !222, file: !6, line: 47, baseType: !212, size: 64, offset: 512)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !222, file: !6, line: 48, baseType: !231, size: 64, offset: 576)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !222, file: !6, line: 49, baseType: !5009, size: 64, offset: 640)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !222, file: !6, line: 50, baseType: !2364, size: 64, offset: 704)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !213, file: !6, line: 418, baseType: !5013, size: 64, offset: 1408)
!5013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5014, size: 64)
!5014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !5015)
!5015 = !{!5016, !5017, !5022, !5026, !5030, !5034}
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5014, file: !6, line: 54, baseType: !303, size: 128)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5014, file: !6, line: 55, baseType: !5018, size: 64, offset: 128)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{!298, !5013, !5021, !266}
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5014, file: !6, line: 57, baseType: !5023, size: 64, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!298, !5013, !5021, !72, !91}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5014, file: !6, line: 59, baseType: !5027, size: 64, offset: 256)
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5028, size: 64)
!5028 = !DISubroutineType(types: !5029)
!5029 = !{null, !212, !72}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5014, file: !6, line: 60, baseType: !5031, size: 64, offset: 320)
!5031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5032, size: 64)
!5032 = !DISubroutineType(types: !5033)
!5033 = !{!78, !212}
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5014, file: !6, line: 61, baseType: !5035, size: 64, offset: 384)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DISubroutineType(types: !5037)
!5037 = !{null, !212}
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !213, file: !6, line: 419, baseType: !72, size: 64, offset: 1472)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !213, file: !6, line: 420, baseType: !72, size: 64, offset: 1536)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !213, file: !6, line: 421, baseType: !231, size: 64, offset: 1600)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !213, file: !6, line: 424, baseType: !5042, size: 64, offset: 1664)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5044)
!5044 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !213, file: !6, line: 425, baseType: !5046, size: 64, offset: 1728)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !788)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !213, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !213, file: !6, line: 435, baseType: !622, size: 256, offset: 1856)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !213, file: !6, line: 437, baseType: !5051, size: 64, offset: 2112)
!5051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5052, size: 64)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5053, line: 69, size: 320, elements: !5054)
!5053 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5054 = !{!5055, !5056, !5057, !5074, !5076, !5080, !5081}
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5052, file: !5053, line: 70, baseType: !72, size: 64)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5052, file: !5053, line: 71, baseType: !212, size: 64, offset: 64)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5052, file: !5053, line: 72, baseType: !5058, size: 64, offset: 128)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5060)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5053, line: 47, size: 256, elements: !5061)
!5061 = !{!5062, !5063, !5069, !5073}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5060, file: !5053, line: 49, baseType: !7, size: 32)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5060, file: !5053, line: 51, baseType: !5064, size: 64, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5065, size: 64)
!5065 = !DISubroutineType(types: !5066)
!5066 = !{!78, !72, !5067}
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5052)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5060, file: !5053, line: 53, baseType: !5070, size: 64, offset: 128)
!5070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5071, size: 64)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!78, !266, !5067}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5060, file: !5053, line: 55, baseType: !4471, size: 64, offset: 192)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5052, file: !5053, line: 73, baseType: !5075, size: 16, offset: 192)
!5075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5052, file: !5053, line: 74, baseType: !5077, size: 8, offset: 208)
!5077 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !140, line: 16, baseType: !5078)
!5078 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !142, line: 20, baseType: !5079)
!5079 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5052, file: !5053, line: 75, baseType: !139, size: 8, offset: 216)
!5081 = !DIDerivedType(tag: DW_TAG_member, scope: !5052, file: !5053, line: 76, baseType: !5082, size: 64, offset: 256)
!5082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5052, file: !5053, line: 76, size: 64, elements: !5083)
!5083 = !{!5084, !5085, !5092}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5082, file: !5053, line: 77, baseType: !76, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5082, file: !5053, line: 78, baseType: !5086, size: 64)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5088)
!5088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5053, line: 86, size: 128, elements: !5089)
!5089 = !{!5090, !5091}
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5088, file: !5053, line: 87, baseType: !7, size: 32)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5088, file: !5053, line: 88, baseType: !266, size: 64, offset: 64)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5082, file: !5053, line: 79, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5095)
!5095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5053, line: 92, size: 256, elements: !5096)
!5096 = !{!5097, !5098, !5099, !5100, !5101}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5095, file: !5053, line: 94, baseType: !7, size: 32)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5095, file: !5053, line: 95, baseType: !7, size: 32, offset: 32)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5095, file: !5053, line: 96, baseType: !1974, size: 64, offset: 64)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5095, file: !5053, line: 97, baseType: !5058, size: 64, offset: 128)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5095, file: !5053, line: 98, baseType: !76, size: 64, offset: 192)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !213, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !213, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !213, file: !6, line: 442, baseType: !5042, size: 64, offset: 2240)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !213, file: !6, line: 443, baseType: !5046, size: 64, offset: 2304)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !213, file: !6, line: 444, baseType: !862, size: 8, offset: 2368)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !213, file: !6, line: 451, baseType: !862, size: 8, offset: 2376)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !213, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !213, file: !6, line: 455, baseType: !5110, size: 64, offset: 2432)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5111, size: 64)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5112, line: 23, size: 96, elements: !5113)
!5112 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5113 = !{!5114, !5115, !5116}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5111, file: !5112, line: 24, baseType: !78, size: 32)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5111, file: !5112, line: 24, baseType: !78, size: 32, offset: 32)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5111, file: !5112, line: 24, baseType: !78, size: 32, offset: 64)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !213, file: !6, line: 458, baseType: !5118, size: 64, offset: 2496)
!5118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5119, size: 64)
!5119 = !DISubroutineType(types: !5120)
!5120 = !{!78}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !213, file: !6, line: 460, baseType: !5122, size: 4032, align: 512, offset: 2560)
!5122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5123, size: 4032, elements: !2679)
!5123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5124)
!5124 = !{!5125, !5126, !5127}
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5123, file: !6, line: 363, baseType: !76, size: 64)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5123, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5123, file: !6, line: 367, baseType: !5128, size: 448, offset: 128)
!5128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5129)
!5129 = !{!5130, !5131}
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5128, file: !6, line: 320, baseType: !212, size: 64)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5128, file: !6, line: 321, baseType: !5132, size: 384, offset: 64)
!5132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5133, line: 40, size: 384, elements: !5134)
!5133 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5134 = !{!5135}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5132, file: !5133, line: 41, baseType: !5136, size: 384, align: 64)
!5136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !795, size: 384, align: 64, elements: !3161)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !213, file: !6, line: 463, baseType: !5138, size: 192, offset: 6592)
!5138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5139, line: 8, size: 192, elements: !5140)
!5139 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5140 = !{!5141, !5142, !5143}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5138, file: !5139, line: 10, baseType: !7, size: 32)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5138, file: !5139, line: 11, baseType: !604, size: 64, offset: 64)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5138, file: !5139, line: 12, baseType: !5144, size: 64, offset: 128)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5146, line: 59, size: 48, elements: !5147)
!5146 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5147 = !{!5148, !5149, !5150, !5151, !5152, !5153}
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5145, file: !5146, line: 60, baseType: !1336, size: 16)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5145, file: !5146, line: 61, baseType: !1336, size: 16, offset: 16)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5145, file: !5146, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5145, file: !5146, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5145, file: !5146, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5145, file: !5146, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !213, file: !6, line: 465, baseType: !95, size: 64, offset: 6784)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !213, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !213, file: !6, line: 470, baseType: !153, size: 128, offset: 6912)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !213, file: !6, line: 471, baseType: !5158, size: 64, offset: 7040)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5160, line: 33, size: 96, elements: !5161)
!5160 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5161 = !{!5162, !5163, !5164, !5165}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5159, file: !5160, line: 37, baseType: !78, size: 32)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5159, file: !5160, line: 43, baseType: !78, size: 32, offset: 32)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5159, file: !5160, line: 45, baseType: !82, size: 16, offset: 64)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5159, file: !5160, line: 47, baseType: !82, size: 16, offset: 80)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !213, file: !6, line: 476, baseType: !5167, size: 64, offset: 7104)
!5167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5168, size: 64)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5169)
!5169 = !{!5170, !5186, !5187, !5188}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5168, file: !6, line: 379, baseType: !5171, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5173, line: 204, baseType: !5174)
!5173 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5173, line: 197, size: 192, elements: !5175)
!5175 = !{!5176, !5178, !5179, !5180, !5182, !5184}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5174, file: !5173, line: 198, baseType: !5177, size: 32)
!5177 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5173, line: 21, baseType: !410)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5174, file: !5173, line: 199, baseType: !143, size: 8, offset: 32)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5174, file: !5173, line: 200, baseType: !143, size: 8, offset: 40)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5174, file: !5173, line: 201, baseType: !5181, size: 16, offset: 48)
!5181 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5173, line: 17, baseType: !150)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5174, file: !5173, line: 202, baseType: !5183, size: 64, offset: 64)
!5183 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5173, line: 16, baseType: !414)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5174, file: !5173, line: 203, baseType: !5185, size: 64, offset: 128)
!5185 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5173, line: 22, baseType: !414)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5168, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5168, file: !6, line: 381, baseType: !266, size: 64, offset: 128)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5168, file: !6, line: 382, baseType: !266, size: 64, offset: 192)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !213, file: !6, line: 477, baseType: !5168, size: 256, offset: 7168)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !213, file: !6, line: 480, baseType: !5191, size: 64, offset: 7424)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5193 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !213, file: !6, line: 483, baseType: !5194, size: 64, offset: 7488)
!5194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5195, size: 64)
!5195 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !213, file: !6, line: 488, baseType: !266, size: 64, offset: 7552)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !213, file: !6, line: 492, baseType: !76, size: 64, offset: 7616)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !213, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !213, file: !6, line: 495, baseType: !76, size: 64, offset: 7744)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !213, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !213, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !213, file: !6, line: 500, baseType: !5203, size: 64, offset: 7872)
!5203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5204, size: 64)
!5204 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5205, line: 45, baseType: !5206)
!5205 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !213, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !213, file: !6, line: 504, baseType: !5209, size: 64, offset: 8000)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5211, size: 64)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5212, line: 96, size: 192, elements: !5213)
!5212 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5213 = !{!5214, !5215, !5257, !5259}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5211, file: !5212, line: 97, baseType: !7, size: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5211, file: !5212, line: 98, baseType: !5216, size: 64, offset: 64)
!5216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5217, size: 64)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5212, line: 24, size: 3072, elements: !5218)
!5218 = !{!5219, !5221, !5222, !5223, !5224, !5237, !5238, !5239, !5240, !5241, !5242, !5243, !5254, !5255, !5256}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5217, file: !5212, line: 26, baseType: !5220, size: 128)
!5220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, size: 128, elements: !3161)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5217, file: !5212, line: 27, baseType: !5220, size: 128, offset: 128)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5217, file: !5212, line: 28, baseType: !78, size: 32, offset: 256)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5217, file: !5212, line: 31, baseType: !115, size: 32, align: 512, offset: 512)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5217, file: !5212, line: 32, baseType: !5225, size: 960, offset: 576)
!5225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !5226, line: 206, size: 960, elements: !5227)
!5226 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!5227 = !{!5228, !5229, !5232, !5233, !5234, !5236}
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5225, file: !5226, line: 207, baseType: !682, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !5225, file: !5226, line: 208, baseType: !5230, size: 256, offset: 64)
!5230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5231, size: 256, elements: !733)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !5225, file: !5226, line: 209, baseType: !3390, size: 256, offset: 320)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5225, file: !5226, line: 213, baseType: !301, size: 64, offset: 576)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !5225, file: !5226, line: 215, baseType: !5235, size: 256, offset: 640)
!5235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 256, elements: !733)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5225, file: !5226, line: 216, baseType: !139, size: 8, offset: 896)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5217, file: !5212, line: 33, baseType: !95, size: 64, offset: 1536)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5217, file: !5212, line: 34, baseType: !95, size: 64, offset: 1600)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5217, file: !5212, line: 35, baseType: !862, size: 8, offset: 1664)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5217, file: !5212, line: 36, baseType: !2825, size: 320, offset: 1728)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5217, file: !5212, line: 37, baseType: !1358, size: 256, offset: 2048)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5217, file: !5212, line: 38, baseType: !679, size: 128, align: 64, offset: 2304)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5217, file: !5212, line: 39, baseType: !5244, size: 64, offset: 2432)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5212, line: 49, size: 768, elements: !5246)
!5246 = !{!5247, !5248, !5249, !5250, !5251, !5252, !5253}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5245, file: !5212, line: 50, baseType: !115, size: 32)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !5245, file: !5212, line: 51, baseType: !3390, size: 256, offset: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !5245, file: !5212, line: 53, baseType: !3390, size: 256, offset: 320)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5245, file: !5212, line: 54, baseType: !95, size: 64, offset: 576)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !5245, file: !5212, line: 55, baseType: !5244, size: 64, offset: 640)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !5245, file: !5212, line: 56, baseType: !78, size: 32, offset: 704)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !5245, file: !5212, line: 57, baseType: !78, size: 32, offset: 736)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5217, file: !5212, line: 40, baseType: !95, size: 64, offset: 2496)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5217, file: !5212, line: 42, baseType: !78, size: 32, offset: 2560)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5217, file: !5212, line: 43, baseType: !5210, size: 64, offset: 2624)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5211, file: !5212, line: 99, baseType: !5258, offset: 128)
!5258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !540, line: 211, elements: !541)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5211, file: !5212, line: 100, baseType: !5260, size: 64, offset: 128)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5212, line: 63, size: 3008, elements: !5262)
!5262 = !{!5263, !5264, !5266, !5267, !5268, !5269, !5270, !5271, !5272, !5273, !5274, !5275, !5276, !5277, !5278, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5261, file: !5212, line: 64, baseType: !5244, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5261, file: !5212, line: 65, baseType: !5265, size: 192, offset: 64)
!5265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5244, size: 192, elements: !267)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !5261, file: !5212, line: 67, baseType: !78, size: 32, offset: 256)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !5261, file: !5212, line: 68, baseType: !622, size: 256, offset: 320)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5261, file: !5212, line: 69, baseType: !115, size: 32, offset: 576)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !5261, file: !5212, line: 70, baseType: !622, size: 256, offset: 640)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !5261, file: !5212, line: 71, baseType: !95, size: 64, offset: 896)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5261, file: !5212, line: 72, baseType: !95, size: 64, offset: 960)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5261, file: !5212, line: 73, baseType: !95, size: 64, offset: 1024)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !5261, file: !5212, line: 74, baseType: !95, size: 64, offset: 1088)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !5261, file: !5212, line: 75, baseType: !95, size: 64, offset: 1152)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !5261, file: !5212, line: 76, baseType: !95, size: 64, offset: 1216)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !5261, file: !5212, line: 77, baseType: !95, size: 64, offset: 1280)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !5261, file: !5212, line: 78, baseType: !95, size: 64, offset: 1344)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !5261, file: !5212, line: 79, baseType: !862, size: 8, offset: 1408)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !5261, file: !5212, line: 80, baseType: !95, size: 64, offset: 1472)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !5261, file: !5212, line: 81, baseType: !622, size: 256, offset: 1536)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !5261, file: !5212, line: 82, baseType: !1156, size: 256, offset: 1792)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !5261, file: !5212, line: 84, baseType: !105, size: 32, offset: 2048)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !5261, file: !5212, line: 87, baseType: !95, size: 64, offset: 2112)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !5261, file: !5212, line: 88, baseType: !95, size: 64, offset: 2176)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5261, file: !5212, line: 89, baseType: !3442, size: 704, offset: 2240)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !5261, file: !5212, line: 90, baseType: !5210, size: 64, offset: 2944)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !213, file: !6, line: 515, baseType: !5288, size: 64, offset: 8064)
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5290, line: 117, size: 128, elements: !5291)
!5290 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5291 = !{!5292, !5293, !5294}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5289, file: !5290, line: 118, baseType: !788, size: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5289, file: !5290, line: 119, baseType: !788, size: 32, offset: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5289, file: !5290, line: 120, baseType: !301, size: 64, offset: 64)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !213, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !213, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !213, file: !6, line: 520, baseType: !5298, size: 64, offset: 8192)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !213, file: !6, line: 523, baseType: !5300, size: 64, offset: 8256)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5302, size: 64)
!5302 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !213, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !213, file: !6, line: 525, baseType: !5305, size: 64, offset: 8384)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5307, size: 64)
!5307 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !213, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !213, file: !6, line: 533, baseType: !76, size: 64, offset: 8512)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !213, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !213, file: !6, line: 535, baseType: !3274, size: 64, offset: 8640)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !213, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !213, file: !6, line: 539, baseType: !78, size: 32, offset: 8736)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !213, file: !6, line: 540, baseType: !5315, size: 64, offset: 8768)
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5316, size: 64)
!5316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5317, line: 32, size: 64, elements: !5318)
!5317 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5318 = !{!5319, !5320}
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5316, file: !5317, line: 33, baseType: !788, size: 32)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5316, file: !5317, line: 34, baseType: !788, size: 32, offset: 32)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !213, file: !6, line: 563, baseType: !153, size: 128, offset: 8832)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !213, file: !6, line: 565, baseType: !153, size: 128, offset: 8960)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !213, file: !6, line: 568, baseType: !5324, size: 64, offset: 9088)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !213, file: !6, line: 570, baseType: !105, size: 32, offset: 9152)
!5326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5327, size: 64)
!5327 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !632)
!5328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5329, size: 64)
!5329 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !78)
!5330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5331, size: 64)
!5331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5329)
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!5333 = !{!0, !5334, !5339, !5341, !5346, !5348, !5350, !5353, !5358, !5363, !5365, !5369, !5372, !5740, !5742, !5747, !5959, !5961, !5963, !5966, !5969, !5974, !5984, !5987, !5989}
!5334 = !DIGlobalVariableExpression(var: !5335, expr: !DIExpression())
!5335 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias344", scope: !2, file: !3, line: 629, type: !5336, isLocal: true, isDefinition: true, align: 8)
!5336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 328, elements: !5337)
!5337 = !{!5338}
!5338 = !DISubrange(count: 41)
!5339 = !DIGlobalVariableExpression(var: !5340, expr: !DIExpression())
!5340 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias345", scope: !2, file: !3, line: 630, type: !5336, isLocal: true, isDefinition: true, align: 8)
!5341 = !DIGlobalVariableExpression(var: !5342, expr: !DIExpression())
!5342 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias346", scope: !2, file: !3, line: 631, type: !5343, isLocal: true, isDefinition: true, align: 8)
!5343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 336, elements: !5344)
!5344 = !{!5345}
!5345 = !DISubrange(count: 42)
!5346 = !DIGlobalVariableExpression(var: !5347, expr: !DIExpression())
!5347 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias347", scope: !2, file: !3, line: 632, type: !5343, isLocal: true, isDefinition: true, align: 8)
!5348 = !DIGlobalVariableExpression(var: !5349, expr: !DIExpression())
!5349 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias348", scope: !2, file: !3, line: 633, type: !5343, isLocal: true, isDefinition: true, align: 8)
!5350 = !DIGlobalVariableExpression(var: !5351, expr: !DIExpression())
!5351 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias349", scope: !2, file: !3, line: 634, type: !5352, isLocal: true, isDefinition: true, align: 8)
!5352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 448, elements: !219)
!5353 = !DIGlobalVariableExpression(var: !5354, expr: !DIExpression())
!5354 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file350", scope: !2, file: !3, line: 662, type: !5355, isLocal: true, isDefinition: true, align: 8)
!5355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 456, elements: !5356)
!5356 = !{!5357}
!5357 = !DISubrange(count: 57)
!5358 = !DIGlobalVariableExpression(var: !5359, expr: !DIExpression())
!5359 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license351", scope: !2, file: !3, line: 662, type: !5360, isLocal: true, isDefinition: true, align: 8)
!5360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 224, elements: !5361)
!5361 = !{!5362}
!5362 = !DISubrange(count: 28)
!5363 = !DIGlobalVariableExpression(var: !5364, expr: !DIExpression())
!5364 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6353", scope: !2, file: !3, line: 663, type: !76, isLocal: true, isDefinition: true)
!5365 = !DIGlobalVariableExpression(var: !5366, expr: !DIExpression())
!5366 = distinct !DIGlobalVariable(name: "__exitcall_cleanup_kerberos_module", scope: !2, file: !3, line: 664, type: !5367, isLocal: true, isDefinition: true)
!5367 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5368, line: 120, baseType: !5324)
!5368 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5369 = !DIGlobalVariableExpression(var: !5370, expr: !DIExpression())
!5370 = distinct !DIGlobalVariable(scope: null, file: !3, line: 637, type: !5371, isLocal: true, isDefinition: true)
!5371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 40, elements: !3484)
!5372 = !DIGlobalVariableExpression(var: !5373, expr: !DIExpression())
!5373 = distinct !DIGlobalVariable(name: "gss_kerberos_mech", scope: !2, file: !3, line: 636, type: !5374, isLocal: true, isDefinition: true)
!5374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gss_api_mech", file: !5375, line: 95, size: 832, elements: !5376)
!5375 = !DIFile(filename: "./include/linux/sunrpc/gss_api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ae2776912f4b958da8f2a82dadc98fe")
!5376 = !{!5377, !5378, !5379, !5385, !5386, !5439, !5440, !5739}
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "gm_list", scope: !5374, file: !5375, line: 96, baseType: !153, size: 128)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "gm_owner", scope: !5374, file: !5375, line: 97, baseType: !212, size: 64, offset: 128)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "gm_oid", scope: !5374, file: !5375, line: 98, baseType: !5380, size: 288, offset: 192)
!5380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpcsec_gss_oid", file: !5375, line: 33, size: 288, elements: !5381)
!5381 = !{!5382, !5383}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5380, file: !5375, line: 34, baseType: !7, size: 32)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5380, file: !5375, line: 35, baseType: !5384, size: 256, offset: 32)
!5384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !422)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "gm_name", scope: !5374, file: !5375, line: 99, baseType: !266, size: 64, offset: 512)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "gm_ops", scope: !5374, file: !5375, line: 100, baseType: !5387, size: 64, offset: 576)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5389)
!5389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gss_api_ops", file: !5375, line: 109, size: 384, elements: !5390)
!5390 = !{!5391, !5404, !5429, !5430, !5434, !5438}
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "gss_import_sec_context", scope: !5389, file: !5375, line: 110, baseType: !5392, size: 64)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5393, size: 64)
!5393 = !DISubroutineType(types: !5394)
!5394 = !{!78, !1319, !91, !5395, !5403, !1467}
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gss_ctx", file: !5375, line: 21, size: 192, elements: !5397)
!5397 = !{!5398, !5400, !5401, !5402}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "mech_type", scope: !5396, file: !5375, line: 22, baseType: !5399, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5374, size: 64)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ctx_id", scope: !5396, file: !5375, line: 23, baseType: !76, size: 64, offset: 64)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "slack", scope: !5396, file: !5375, line: 24, baseType: !7, size: 32, offset: 128)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !5396, file: !5375, line: 24, baseType: !7, size: 32, offset: 160)
!5403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "gss_get_mic", scope: !5389, file: !5375, line: 116, baseType: !5405, size: 64, offset: 64)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!409, !5395, !5408, !5423}
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5409, size: 64)
!5409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_buf", file: !5410, line: 56, size: 576, elements: !5411)
!5410 = !DIFile(filename: "./include/linux/sunrpc/xdr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd69bdc3c02e377f91d2dfdb179d69f2")
!5411 = !{!5412, !5414, !5415, !5417, !5418, !5419, !5420, !5421, !5422}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5409, file: !5410, line: 57, baseType: !5413, size: 128)
!5413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 128, elements: !2219)
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5409, file: !5410, line: 58, baseType: !5413, size: 128, offset: 128)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !5409, file: !5410, line: 60, baseType: !5416, size: 64, offset: 256)
!5416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5409, file: !5410, line: 61, baseType: !4119, size: 64, offset: 320)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "page_base", scope: !5409, file: !5410, line: 62, baseType: !7, size: 32, offset: 384)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "page_len", scope: !5409, file: !5410, line: 63, baseType: !7, size: 32, offset: 416)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5409, file: !5410, line: 64, baseType: !7, size: 32, offset: 448)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !5409, file: !5410, line: 69, baseType: !7, size: 32, offset: 480)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5409, file: !5410, line: 70, baseType: !7, size: 32, offset: 512)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_netobj", file: !5410, line: 38, size: 128, elements: !5425)
!5425 = !{!5426, !5427}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5424, file: !5410, line: 39, baseType: !7, size: 32)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5424, file: !5410, line: 40, baseType: !5428, size: 64, offset: 64)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "gss_verify_mic", scope: !5389, file: !5375, line: 120, baseType: !5405, size: 64, offset: 128)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "gss_wrap", scope: !5389, file: !5375, line: 124, baseType: !5431, size: 64, offset: 192)
!5431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5432, size: 64)
!5432 = !DISubroutineType(types: !5433)
!5433 = !{!409, !5395, !78, !5408, !4119}
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "gss_unwrap", scope: !5389, file: !5375, line: 129, baseType: !5435, size: 64, offset: 256)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = !DISubroutineType(types: !5437)
!5437 = !{!409, !5395, !78, !78, !5408}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "gss_delete_sec_context", scope: !5389, file: !5375, line: 134, baseType: !4471, size: 64, offset: 320)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "gm_pf_num", scope: !5374, file: !5375, line: 102, baseType: !78, size: 32, offset: 640)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "gm_pfs", scope: !5374, file: !5375, line: 103, baseType: !5441, size: 64, offset: 704)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pf_desc", file: !5375, line: 81, size: 384, elements: !5443)
!5443 = !{!5444, !5445, !5446, !5447, !5448, !5449, !5738}
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "pseudoflavor", scope: !5442, file: !5375, line: 82, baseType: !409, size: 32)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "qop", scope: !5442, file: !5375, line: 83, baseType: !409, size: 32, offset: 32)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "service", scope: !5442, file: !5375, line: 84, baseType: !409, size: 32, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5442, file: !5375, line: 85, baseType: !266, size: 64, offset: 128)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "auth_domain_name", scope: !5442, file: !5375, line: 86, baseType: !266, size: 64, offset: 192)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5442, file: !5375, line: 87, baseType: !5450, size: 64, offset: 256)
!5450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5451, size: 64)
!5451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auth_domain", file: !184, line: 78, size: 448, elements: !5452)
!5452 = !{!5453, !5454, !5455, !5456, !5737}
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5451, file: !184, line: 79, baseType: !4997, size: 32)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5451, file: !184, line: 80, baseType: !533, size: 128, offset: 64)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5451, file: !184, line: 81, baseType: !266, size: 64, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "flavour", scope: !5451, file: !184, line: 82, baseType: !5457, size: 64, offset: 256)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auth_ops", file: !184, line: 137, size: 448, elements: !5459)
!5459 = !{!5460, !5461, !5462, !5463, !5731, !5732, !5736}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5458, file: !184, line: 138, baseType: !266, size: 64)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5458, file: !184, line: 139, baseType: !212, size: 64, offset: 64)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "flavour", scope: !5458, file: !184, line: 140, baseType: !78, size: 32, offset: 128)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !5458, file: !184, line: 142, baseType: !5464, size: 64, offset: 192)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{!183, !5467}
!5467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5468, size: 64)
!5468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_rqst", file: !5469, line: 187, size: 91200, elements: !5470)
!5469 = !DIFile(filename: "./include/linux/sunrpc/svc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9aeff009c30cd914e86ac84826c52a56")
!5470 = !{!5471, !5472, !5473, !5476, !5493, !5494, !5495, !5496, !5623, !5624, !5625, !5626, !5637, !5638, !5673, !5674, !5675, !5676, !5677, !5678, !5682, !5683, !5684, !5685, !5695, !5699, !5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5726, !5727, !5728, !5729, !5730}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "rq_all", scope: !5468, file: !5469, line: 188, baseType: !153, size: 128)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "rq_rcu_head", scope: !5468, file: !5469, line: 189, baseType: !679, size: 128, align: 64, offset: 128)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "rq_xprt", scope: !5468, file: !5469, line: 190, baseType: !5474, size: 64, offset: 256)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DICompositeType(tag: DW_TAG_structure_type, name: "svc_xprt", file: !184, line: 148, flags: DIFlagFwdDecl)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "rq_addr", scope: !5468, file: !5469, line: 192, baseType: !5477, size: 1024, offset: 320)
!5477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_sockaddr_storage", file: !5478, line: 16, size: 1024, elements: !5479)
!5478 = !DIFile(filename: "./include/uapi/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9188d06e118bd729d386f60af56244e2")
!5479 = !{!5480}
!5480 = !DIDerivedType(tag: DW_TAG_member, scope: !5477, file: !5478, line: 17, baseType: !5481, size: 1024)
!5481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5477, file: !5478, line: 17, size: 1024, elements: !5482)
!5482 = !{!5483, !5492}
!5483 = !DIDerivedType(tag: DW_TAG_member, scope: !5481, file: !5478, line: 18, baseType: !5484, size: 1024)
!5484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5481, file: !5478, line: 18, size: 1024, elements: !5485)
!5485 = !{!5486, !5488}
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !5484, file: !5478, line: 19, baseType: !5487, size: 16)
!5487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_sa_family_t", file: !5478, line: 10, baseType: !82)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !5484, file: !5478, line: 21, baseType: !5489, size: 1008, offset: 16)
!5489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1008, elements: !5490)
!5490 = !{!5491}
!5491 = !DISubrange(count: 126)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !5481, file: !5478, line: 25, baseType: !76, size: 64)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "rq_addrlen", scope: !5468, file: !5469, line: 193, baseType: !91, size: 64, offset: 1344)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "rq_daddr", scope: !5468, file: !5469, line: 194, baseType: !5477, size: 1024, offset: 1408)
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "rq_daddrlen", scope: !5468, file: !5469, line: 196, baseType: !91, size: 64, offset: 2432)
!5496 = !DIDerivedType(tag: DW_TAG_member, name: "rq_server", scope: !5468, file: !5469, line: 198, baseType: !5497, size: 64, offset: 2496)
!5497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5498, size: 64)
!5498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_serv", file: !5469, line: 66, size: 1280, elements: !5499)
!5499 = !{!5500, !5590, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5619}
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "sv_program", scope: !5498, file: !5469, line: 67, baseType: !5501, size: 64)
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_program", file: !5469, line: 330, size: 576, elements: !5503)
!5503 = !{!5504, !5505, !5506, !5507, !5508, !5509, !5565, !5566, !5567, !5568, !5586}
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "pg_next", scope: !5502, file: !5469, line: 331, baseType: !5501, size: 64)
!5505 = !DIDerivedType(tag: DW_TAG_member, name: "pg_prog", scope: !5502, file: !5469, line: 332, baseType: !409, size: 32, offset: 64)
!5506 = !DIDerivedType(tag: DW_TAG_member, name: "pg_lovers", scope: !5502, file: !5469, line: 333, baseType: !7, size: 32, offset: 96)
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "pg_hivers", scope: !5502, file: !5469, line: 334, baseType: !7, size: 32, offset: 128)
!5508 = !DIDerivedType(tag: DW_TAG_member, name: "pg_nvers", scope: !5502, file: !5469, line: 335, baseType: !7, size: 32, offset: 160)
!5509 = !DIDerivedType(tag: DW_TAG_member, name: "pg_vers", scope: !5502, file: !5469, line: 336, baseType: !5510, size: 64, offset: 192)
!5510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5511, size: 64)
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5513)
!5513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_version", file: !5469, line: 353, size: 320, elements: !5514)
!5514 = !{!5515, !5516, !5517, !5556, !5557, !5558, !5559, !5560, !5561}
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "vs_vers", scope: !5513, file: !5469, line: 354, baseType: !409, size: 32)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "vs_nproc", scope: !5513, file: !5469, line: 355, baseType: !409, size: 32, offset: 32)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "vs_proc", scope: !5513, file: !5469, line: 356, baseType: !5518, size: 64, offset: 64)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5520)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_procedure", file: !5469, line: 376, size: 512, elements: !5521)
!5521 = !{!5522, !5526, !5545, !5546, !5550, !5551, !5552, !5553, !5554, !5555}
!5522 = !DIDerivedType(tag: DW_TAG_member, name: "pc_func", scope: !5520, file: !5469, line: 378, baseType: !5523, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5524, size: 64)
!5524 = !DISubroutineType(types: !5525)
!5525 = !{!2797, !5467}
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "pc_decode", scope: !5520, file: !5469, line: 380, baseType: !5527, size: 64, offset: 64)
!5527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5528, size: 64)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!862, !5467, !5530}
!5530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!5531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_stream", file: !5410, line: 221, size: 640, elements: !5532)
!5532 = !{!5533, !5534, !5535, !5536, !5538, !5539, !5540, !5541, !5542}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5531, file: !5410, line: 222, baseType: !5332, size: 64)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5531, file: !5410, line: 223, baseType: !5408, size: 64, offset: 64)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5531, file: !5410, line: 225, baseType: !5332, size: 64, offset: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !5531, file: !5410, line: 226, baseType: !5537, size: 64, offset: 192)
!5537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "scratch", scope: !5531, file: !5410, line: 227, baseType: !1060, size: 128, offset: 256)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "page_ptr", scope: !5531, file: !5410, line: 228, baseType: !4119, size: 64, offset: 384)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "page_kaddr", scope: !5531, file: !5410, line: 229, baseType: !76, size: 64, offset: 448)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "nwords", scope: !5531, file: !5410, line: 230, baseType: !7, size: 32, offset: 512)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "rqst", scope: !5531, file: !5410, line: 232, baseType: !5543, size: 64, offset: 576)
!5543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5544, size: 64)
!5544 = !DICompositeType(tag: DW_TAG_structure_type, name: "rpc_rqst", file: !5410, line: 20, flags: DIFlagFwdDecl)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "pc_encode", scope: !5520, file: !5469, line: 383, baseType: !5527, size: 64, offset: 128)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "pc_release", scope: !5520, file: !5469, line: 386, baseType: !5547, size: 64, offset: 192)
!5547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5548, size: 64)
!5548 = !DISubroutineType(types: !5549)
!5549 = !{null, !5467}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "pc_argsize", scope: !5520, file: !5469, line: 387, baseType: !7, size: 32, offset: 256)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "pc_argzero", scope: !5520, file: !5469, line: 388, baseType: !7, size: 32, offset: 288)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "pc_ressize", scope: !5520, file: !5469, line: 389, baseType: !7, size: 32, offset: 320)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "pc_cachetype", scope: !5520, file: !5469, line: 390, baseType: !7, size: 32, offset: 352)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "pc_xdrressize", scope: !5520, file: !5469, line: 391, baseType: !7, size: 32, offset: 384)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "pc_name", scope: !5520, file: !5469, line: 392, baseType: !72, size: 64, offset: 448)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "vs_count", scope: !5513, file: !5469, line: 357, baseType: !3274, size: 64, offset: 128)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "vs_xdrsize", scope: !5513, file: !5469, line: 358, baseType: !409, size: 32, offset: 192)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "vs_hidden", scope: !5513, file: !5469, line: 361, baseType: !862, size: 8, offset: 224)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "vs_rpcb_optnl", scope: !5513, file: !5469, line: 364, baseType: !862, size: 8, offset: 232)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "vs_need_cong_ctrl", scope: !5513, file: !5469, line: 367, baseType: !862, size: 8, offset: 240)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "vs_dispatch", scope: !5513, file: !5469, line: 370, baseType: !5562, size: 64, offset: 256)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!78, !5467}
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "pg_name", scope: !5502, file: !5469, line: 337, baseType: !266, size: 64, offset: 256)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "pg_class", scope: !5502, file: !5469, line: 338, baseType: !266, size: 64, offset: 320)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "pg_authenticate", scope: !5502, file: !5469, line: 339, baseType: !5464, size: 64, offset: 384)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "pg_init_request", scope: !5502, file: !5469, line: 340, baseType: !5569, size: 64, offset: 448)
!5569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5570, size: 64)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!2797, !5467, !5572, !5574}
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5573, size: 64)
!5573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5502)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_process_info", file: !5469, line: 317, size: 64, elements: !5576)
!5576 = !{!5577}
!5577 = !DIDerivedType(tag: DW_TAG_member, scope: !5575, file: !5469, line: 318, baseType: !5578, size: 64)
!5578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5575, file: !5469, line: 318, size: 64, elements: !5579)
!5579 = !{!5580, !5581}
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !5578, file: !5469, line: 319, baseType: !5562, size: 64)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "mismatch", scope: !5578, file: !5469, line: 323, baseType: !5582, size: 64)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5578, file: !5469, line: 320, size: 64, elements: !5583)
!5583 = !{!5584, !5585}
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "lovers", scope: !5582, file: !5469, line: 321, baseType: !7, size: 32)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "hivers", scope: !5582, file: !5469, line: 322, baseType: !7, size: 32, offset: 32)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "pg_rpcbind_set", scope: !5502, file: !5469, line: 343, baseType: !5587, size: 64, offset: 512)
!5587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5588, size: 64)
!5588 = !DISubroutineType(types: !5589)
!5589 = !{!78, !2478, !5572, !409, !78, !82, !82}
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "sv_stats", scope: !5498, file: !5469, line: 68, baseType: !5591, size: 64, offset: 64)
!5591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5592, size: 64)
!5592 = !DICompositeType(tag: DW_TAG_structure_type, name: "svc_stat", file: !5469, line: 68, flags: DIFlagFwdDecl)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "sv_lock", scope: !5498, file: !5469, line: 69, baseType: !115, size: 32, offset: 128)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "sv_refcnt", scope: !5498, file: !5469, line: 70, baseType: !4997, size: 32, offset: 160)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "sv_nrthreads", scope: !5498, file: !5469, line: 71, baseType: !7, size: 32, offset: 192)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "sv_maxconn", scope: !5498, file: !5469, line: 72, baseType: !7, size: 32, offset: 224)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "sv_max_payload", scope: !5498, file: !5469, line: 76, baseType: !7, size: 32, offset: 256)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "sv_max_mesg", scope: !5498, file: !5469, line: 77, baseType: !7, size: 32, offset: 288)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "sv_xdrsize", scope: !5498, file: !5469, line: 78, baseType: !7, size: 32, offset: 320)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "sv_permsocks", scope: !5498, file: !5469, line: 79, baseType: !153, size: 128, offset: 384)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "sv_tempsocks", scope: !5498, file: !5469, line: 80, baseType: !153, size: 128, offset: 512)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "sv_tmpcnt", scope: !5498, file: !5469, line: 81, baseType: !78, size: 32, offset: 640)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "sv_temptimer", scope: !5498, file: !5469, line: 82, baseType: !2825, size: 320, offset: 704)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "sv_name", scope: !5498, file: !5469, line: 84, baseType: !266, size: 64, offset: 1024)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "sv_nrpools", scope: !5498, file: !5469, line: 86, baseType: !7, size: 32, offset: 1088)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "sv_pools", scope: !5498, file: !5469, line: 87, baseType: !5607, size: 64, offset: 1152)
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_pool", file: !5469, line: 34, size: 1536, align: 512, elements: !5609)
!5609 = !{!5610, !5611, !5612, !5613, !5614, !5615, !5616, !5617, !5618}
!5610 = !DIDerivedType(tag: DW_TAG_member, name: "sp_id", scope: !5608, file: !5469, line: 35, baseType: !7, size: 32)
!5611 = !DIDerivedType(tag: DW_TAG_member, name: "sp_lock", scope: !5608, file: !5469, line: 36, baseType: !115, size: 32, offset: 32)
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "sp_sockets", scope: !5608, file: !5469, line: 37, baseType: !153, size: 128, offset: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "sp_nrthreads", scope: !5608, file: !5469, line: 38, baseType: !7, size: 32, offset: 192)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "sp_all_threads", scope: !5608, file: !5469, line: 39, baseType: !153, size: 128, offset: 256)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "sp_messages_arrived", scope: !5608, file: !5469, line: 42, baseType: !920, size: 320, offset: 384)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "sp_sockets_queued", scope: !5608, file: !5469, line: 43, baseType: !920, size: 320, offset: 704)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "sp_threads_woken", scope: !5608, file: !5469, line: 44, baseType: !920, size: 320, offset: 1024)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "sp_flags", scope: !5608, file: !5469, line: 46, baseType: !95, size: 64, offset: 1344)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "sv_threadfn", scope: !5498, file: !5469, line: 88, baseType: !5620, size: 64, offset: 1216)
!5620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5621, size: 64)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!78, !76}
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "rq_pool", scope: !5468, file: !5469, line: 199, baseType: !5607, size: 64, offset: 2560)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "rq_procinfo", scope: !5468, file: !5469, line: 200, baseType: !5518, size: 64, offset: 2624)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "rq_authop", scope: !5468, file: !5469, line: 201, baseType: !5457, size: 64, offset: 2688)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "rq_cred", scope: !5468, file: !5469, line: 202, baseType: !5627, size: 448, offset: 2752)
!5627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_cred", file: !184, line: 21, size: 448, elements: !5628)
!5628 = !{!5629, !5630, !5631, !5632, !5633, !5634, !5635, !5636}
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "cr_uid", scope: !5627, file: !184, line: 22, baseType: !346, size: 32)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "cr_gid", scope: !5627, file: !184, line: 23, baseType: !355, size: 32, offset: 32)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "cr_group_info", scope: !5627, file: !184, line: 24, baseType: !952, size: 64, offset: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "cr_flavor", scope: !5627, file: !184, line: 25, baseType: !409, size: 32, offset: 128)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "cr_raw_principal", scope: !5627, file: !184, line: 28, baseType: !266, size: 64, offset: 192)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "cr_principal", scope: !5627, file: !184, line: 31, baseType: !266, size: 64, offset: 256)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "cr_targ_princ", scope: !5627, file: !184, line: 32, baseType: !266, size: 64, offset: 320)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "cr_gss_mech", scope: !5627, file: !184, line: 33, baseType: !5399, size: 64, offset: 384)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "rq_xprt_ctxt", scope: !5468, file: !5469, line: 203, baseType: !76, size: 64, offset: 3200)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "rq_deferred", scope: !5468, file: !5469, line: 204, baseType: !5639, size: 64, offset: 3264)
!5639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5640, size: 64)
!5640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "svc_deferred_req", file: !5469, line: 304, size: 2880, elements: !5641)
!5641 = !{!5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5670, !5671}
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "prot", scope: !5640, file: !5469, line: 305, baseType: !409, size: 32)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "xprt", scope: !5640, file: !5469, line: 306, baseType: !5474, size: 64, offset: 64)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5640, file: !5469, line: 307, baseType: !5477, size: 1024, offset: 128)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "addrlen", scope: !5640, file: !5469, line: 308, baseType: !91, size: 64, offset: 1152)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !5640, file: !5469, line: 309, baseType: !5477, size: 1024, offset: 1216)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "daddrlen", scope: !5640, file: !5469, line: 310, baseType: !91, size: 64, offset: 2240)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "xprt_ctxt", scope: !5640, file: !5469, line: 311, baseType: !76, size: 64, offset: 2304)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5640, file: !5469, line: 312, baseType: !5650, size: 448, offset: 2368)
!5650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_deferred_req", file: !5651, line: 142, size: 448, elements: !5652)
!5651 = !DIFile(filename: "./include/linux/sunrpc/cache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4c4e9d82ce16dcfb34bc43d18b3b8870")
!5652 = !{!5653, !5654, !5655, !5664, !5665}
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5650, file: !5651, line: 143, baseType: !533, size: 128)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "recent", scope: !5650, file: !5651, line: 144, baseType: !153, size: 128, offset: 128)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !5650, file: !5651, line: 145, baseType: !5656, size: 64, offset: 256)
!5656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5657, size: 64)
!5657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_head", file: !5651, line: 47, size: 384, elements: !5658)
!5658 = !{!5659, !5660, !5661, !5662, !5663}
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "cache_list", scope: !5657, file: !5651, line: 48, baseType: !533, size: 128)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_time", scope: !5657, file: !5651, line: 49, baseType: !819, size: 64, offset: 128)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "last_refresh", scope: !5657, file: !5651, line: 51, baseType: !819, size: 64, offset: 192)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5657, file: !5651, line: 56, baseType: !4997, size: 32, offset: 256)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5657, file: !5651, line: 57, baseType: !95, size: 64, offset: 320)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5650, file: !5651, line: 146, baseType: !76, size: 64, offset: 320)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "revisit", scope: !5650, file: !5651, line: 148, baseType: !5666, size: 64, offset: 384)
!5666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5667, size: 64)
!5667 = !DISubroutineType(types: !5668)
!5668 = !{null, !5669, !78}
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5650, size: 64)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "argslen", scope: !5640, file: !5469, line: 313, baseType: !78, size: 32, offset: 2816)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5640, file: !5469, line: 314, baseType: !5672, offset: 2848)
!5672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2797, elements: !746)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "rq_arg", scope: !5468, file: !5469, line: 206, baseType: !5409, size: 576, offset: 3328)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "rq_arg_stream", scope: !5468, file: !5469, line: 207, baseType: !5531, size: 640, offset: 3904)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "rq_res_stream", scope: !5468, file: !5469, line: 208, baseType: !5531, size: 640, offset: 4544)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "rq_scratch_page", scope: !5468, file: !5469, line: 209, baseType: !1071, size: 64, offset: 5184)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "rq_res", scope: !5468, file: !5469, line: 210, baseType: !5409, size: 576, offset: 5248)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "rq_pages", scope: !5468, file: !5469, line: 211, baseType: !5679, size: 16640, offset: 5824)
!5679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1071, size: 16640, elements: !5680)
!5680 = !{!5681}
!5681 = !DISubrange(count: 260)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "rq_respages", scope: !5468, file: !5469, line: 212, baseType: !4119, size: 64, offset: 22464)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next_page", scope: !5468, file: !5469, line: 213, baseType: !4119, size: 64, offset: 22528)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "rq_page_end", scope: !5468, file: !5469, line: 214, baseType: !4119, size: 64, offset: 22592)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "rq_fbatch", scope: !5468, file: !5469, line: 216, baseType: !5686, size: 1024, offset: 22656)
!5686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio_batch", file: !5687, line: 28, size: 1024, elements: !5688)
!5687 = !DIFile(filename: "./include/linux/pagevec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96dc8b5d10867236333999bfaf26756d")
!5688 = !{!5689, !5690, !5691}
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5686, file: !5687, line: 29, baseType: !143, size: 8)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_pvec_drained", scope: !5686, file: !5687, line: 30, baseType: !862, size: 8, offset: 8)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "folios", scope: !5686, file: !5687, line: 31, baseType: !5692, size: 960, offset: 64)
!5692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4713, size: 960, elements: !5693)
!5693 = !{!5694}
!5694 = !DISubrange(count: 15)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "rq_vec", scope: !5468, file: !5469, line: 217, baseType: !5696, size: 33152, offset: 23680)
!5696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1060, size: 33152, elements: !5697)
!5697 = !{!5698}
!5698 = !DISubrange(count: 259)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "rq_bvec", scope: !5468, file: !5469, line: 218, baseType: !5700, size: 33152, offset: 56832)
!5700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1067, size: 33152, elements: !5697)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "rq_xid", scope: !5468, file: !5469, line: 220, baseType: !2797, size: 32, offset: 89984)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "rq_prog", scope: !5468, file: !5469, line: 221, baseType: !409, size: 32, offset: 90016)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "rq_vers", scope: !5468, file: !5469, line: 222, baseType: !409, size: 32, offset: 90048)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "rq_proc", scope: !5468, file: !5469, line: 223, baseType: !409, size: 32, offset: 90080)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "rq_prot", scope: !5468, file: !5469, line: 224, baseType: !409, size: 32, offset: 90112)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "rq_cachetype", scope: !5468, file: !5469, line: 225, baseType: !78, size: 32, offset: 90144)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !5468, file: !5469, line: 226, baseType: !95, size: 64, offset: 90176)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qtime", scope: !5468, file: !5469, line: 227, baseType: !2099, size: 64, offset: 90240)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "rq_argp", scope: !5468, file: !5469, line: 229, baseType: !76, size: 64, offset: 90304)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "rq_resp", scope: !5468, file: !5469, line: 230, baseType: !76, size: 64, offset: 90368)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "rq_accept_statp", scope: !5468, file: !5469, line: 231, baseType: !5332, size: 64, offset: 90432)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "rq_auth_data", scope: !5468, file: !5469, line: 232, baseType: !76, size: 64, offset: 90496)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "rq_auth_stat", scope: !5468, file: !5469, line: 233, baseType: !2797, size: 32, offset: 90560)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "rq_auth_slack", scope: !5468, file: !5469, line: 234, baseType: !78, size: 32, offset: 90592)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "rq_reserved", scope: !5468, file: !5469, line: 238, baseType: !78, size: 32, offset: 90624)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "rq_stime", scope: !5468, file: !5469, line: 241, baseType: !2099, size: 64, offset: 90688)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "rq_chandle", scope: !5468, file: !5469, line: 243, baseType: !5718, size: 128, offset: 90752)
!5718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_req", file: !5651, line: 132, size: 128, elements: !5719)
!5719 = !{!5720, !5725}
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "defer", scope: !5718, file: !5651, line: 133, baseType: !5721, size: 64)
!5721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5722, size: 64)
!5722 = !DISubroutineType(types: !5723)
!5723 = !{!5669, !5724}
!5724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5718, size: 64)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "thread_wait", scope: !5718, file: !5651, line: 134, baseType: !95, size: 64, offset: 64)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "rq_client", scope: !5468, file: !5469, line: 247, baseType: !5450, size: 64, offset: 90880)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "rq_gssclient", scope: !5468, file: !5469, line: 248, baseType: !5450, size: 64, offset: 90944)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "rq_task", scope: !5468, file: !5469, line: 249, baseType: !1980, size: 64, offset: 91008)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "rq_bc_net", scope: !5468, file: !5469, line: 250, baseType: !2478, size: 64, offset: 91072)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "rq_lease_breaker", scope: !5468, file: !5469, line: 253, baseType: !1639, size: 64, offset: 91136)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5458, file: !184, line: 143, baseType: !5562, size: 64, offset: 256)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "domain_release", scope: !5458, file: !184, line: 144, baseType: !5733, size: 64, offset: 320)
!5733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5734, size: 64)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{null, !5450}
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "set_client", scope: !5458, file: !184, line: 145, baseType: !5464, size: 64, offset: 384)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !5451, file: !184, line: 83, baseType: !679, size: 128, align: 64, offset: 320)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "datatouch", scope: !5442, file: !5375, line: 88, baseType: !862, size: 8, offset: 320)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "gm_upcall_enctypes", scope: !5374, file: !5375, line: 105, baseType: !72, size: 64, offset: 768)
!5740 = !DIGlobalVariableExpression(var: !5741, expr: !DIExpression())
!5741 = distinct !DIGlobalVariable(name: "gss_kerberos_ops", scope: !2, file: !3, line: 596, type: !5388, isLocal: true, isDefinition: true)
!5742 = !DIGlobalVariableExpression(var: !5743, expr: !DIExpression())
!5743 = distinct !DIGlobalVariable(scope: null, file: !202, line: 480, type: !5744, isLocal: true, isDefinition: true)
!5744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 168, elements: !5745)
!5745 = !{!5746}
!5746 = !DISubrange(count: 21)
!5747 = !DIGlobalVariableExpression(var: !5748, expr: !DIExpression())
!5748 = distinct !DIGlobalVariable(name: "supported_gss_krb5_enctypes", scope: !2, file: !3, line: 33, type: !5749, isLocal: true, isDefinition: true)
!5749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5750, elements: !2890)
!5750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5751)
!5751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gss_krb5_enctype", file: !5752, line: 19, size: 1024, elements: !5753)
!5752 = !DIFile(filename: "net/sunrpc/auth_gss/gss_krb5_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "be41da191708fa04dbd64a98a39e525b")
!5753 = !{!5754, !5756, !5757, !5758, !5759, !5760, !5761, !5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5770, !5777, !5942, !5946, !5950, !5951, !5955}
!5754 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !5751, file: !5752, line: 20, baseType: !5755, size: 32)
!5755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "ctype", scope: !5751, file: !5752, line: 21, baseType: !5755, size: 32, offset: 32)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5751, file: !5752, line: 22, baseType: !72, size: 64, offset: 64)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt_name", scope: !5751, file: !5752, line: 23, baseType: !72, size: 64, offset: 128)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "aux_cipher", scope: !5751, file: !5752, line: 24, baseType: !72, size: 64, offset: 192)
!5760 = !DIDerivedType(tag: DW_TAG_member, name: "cksum_name", scope: !5751, file: !5752, line: 25, baseType: !72, size: 64, offset: 256)
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "signalg", scope: !5751, file: !5752, line: 26, baseType: !5075, size: 16, offset: 320)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "sealalg", scope: !5751, file: !5752, line: 27, baseType: !5075, size: 16, offset: 336)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "cksumlength", scope: !5751, file: !5752, line: 28, baseType: !5755, size: 32, offset: 352)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "keyed_cksum", scope: !5751, file: !5752, line: 29, baseType: !5755, size: 32, offset: 384)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "keybytes", scope: !5751, file: !5752, line: 30, baseType: !5755, size: 32, offset: 416)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "keylength", scope: !5751, file: !5752, line: 31, baseType: !5755, size: 32, offset: 448)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "Kc_length", scope: !5751, file: !5752, line: 32, baseType: !5755, size: 32, offset: 480)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "Ke_length", scope: !5751, file: !5752, line: 33, baseType: !5755, size: 32, offset: 512)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "Ki_length", scope: !5751, file: !5752, line: 34, baseType: !5755, size: 32, offset: 544)
!5770 = !DIDerivedType(tag: DW_TAG_member, name: "derive_key", scope: !5751, file: !5752, line: 36, baseType: !5771, size: 64, offset: 576)
!5771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5772, size: 64)
!5772 = !DISubroutineType(types: !5773)
!5773 = !{!78, !5774, !5775, !5423, !5775, !1467}
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5750, size: 64)
!5775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5776, size: 64)
!5776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5424)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "encrypt", scope: !5751, file: !5752, line: 41, baseType: !5778, size: 64, offset: 640)
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5779, size: 64)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!409, !5781, !409, !5408, !4119}
!5781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5782, size: 64)
!5782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "krb5_ctx", file: !5752, line: 60, size: 1664, elements: !5783)
!5783 = !{!5784, !5785, !5786, !5787, !5788, !5869, !5870, !5871, !5872, !5873, !5874, !5933, !5934, !5935, !5936, !5937, !5938, !5939, !5940, !5941}
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "initiate", scope: !5782, file: !5752, line: 61, baseType: !78, size: 32)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "enctype", scope: !5782, file: !5752, line: 62, baseType: !409, size: 32, offset: 32)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5782, file: !5752, line: 63, baseType: !409, size: 32, offset: 64)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "gk5e", scope: !5782, file: !5752, line: 64, baseType: !5774, size: 64, offset: 128)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !5782, file: !5752, line: 65, baseType: !5789, size: 64, offset: 192)
!5789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5790, size: 64)
!5790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_sync_skcipher", file: !5791, line: 48, size: 320, elements: !5792)
!5791 = !DIFile(filename: "./include/crypto/skcipher.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e93186fb464044d79c042c8e9efb9dc")
!5792 = !{!5793}
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5790, file: !5791, line: 49, baseType: !5794, size: 320)
!5794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_skcipher", file: !5791, line: 42, size: 320, elements: !5795)
!5795 = !{!5796, !5797}
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "reqsize", scope: !5794, file: !5791, line: 43, baseType: !7, size: 32)
!5797 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5794, file: !5791, line: 45, baseType: !5798, size: 256, offset: 64)
!5798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_tfm", file: !5799, line: 422, size: 256, elements: !5800)
!5799 = !DIFile(filename: "./include/linux/crypto.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfd5dd8032a2dca49778e0abbbe9ad8")
!5800 = !{!5801, !5802, !5803, !5804, !5809, !5867}
!5801 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !5798, file: !5799, line: 423, baseType: !724, size: 32)
!5802 = !DIDerivedType(tag: DW_TAG_member, name: "crt_flags", scope: !5798, file: !5799, line: 425, baseType: !409, size: 32, offset: 32)
!5803 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5798, file: !5799, line: 427, baseType: !78, size: 32, offset: 64)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5798, file: !5799, line: 429, baseType: !5805, size: 64, offset: 128)
!5805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5806, size: 64)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{null, !5808}
!5808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_alg", scope: !5798, file: !5799, line: 431, baseType: !5810, size: 64, offset: 192)
!5810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5811, size: 64)
!5811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_alg", file: !5799, line: 343, size: 3072, align: 64, elements: !5812)
!5812 = !{!5813, !5814, !5815, !5816, !5817, !5818, !5819, !5820, !5821, !5825, !5826, !5830, !5857, !5861, !5862, !5866}
!5813 = !DIDerivedType(tag: DW_TAG_member, name: "cra_list", scope: !5811, file: !5799, line: 344, baseType: !153, size: 128)
!5814 = !DIDerivedType(tag: DW_TAG_member, name: "cra_users", scope: !5811, file: !5799, line: 345, baseType: !153, size: 128, offset: 128)
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "cra_flags", scope: !5811, file: !5799, line: 347, baseType: !409, size: 32, offset: 256)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "cra_blocksize", scope: !5811, file: !5799, line: 348, baseType: !7, size: 32, offset: 288)
!5817 = !DIDerivedType(tag: DW_TAG_member, name: "cra_ctxsize", scope: !5811, file: !5799, line: 349, baseType: !7, size: 32, offset: 320)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "cra_alignmask", scope: !5811, file: !5799, line: 350, baseType: !7, size: 32, offset: 352)
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "cra_priority", scope: !5811, file: !5799, line: 352, baseType: !78, size: 32, offset: 384)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "cra_refcnt", scope: !5811, file: !5799, line: 353, baseType: !724, size: 32, offset: 416)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "cra_name", scope: !5811, file: !5799, line: 355, baseType: !5822, size: 1024, offset: 448)
!5822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !5823)
!5823 = !{!5824}
!5824 = !DISubrange(count: 128)
!5825 = !DIDerivedType(tag: DW_TAG_member, name: "cra_driver_name", scope: !5811, file: !5799, line: 356, baseType: !5822, size: 1024, offset: 1472)
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "cra_type", scope: !5811, file: !5799, line: 358, baseType: !5827, size: 64, offset: 2496)
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5828, size: 64)
!5828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5829)
!5829 = !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_type", file: !5799, line: 160, flags: DIFlagFwdDecl)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "cra_u", scope: !5811, file: !5799, line: 363, baseType: !5831, size: 256, offset: 2560)
!5831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5811, file: !5799, line: 360, size: 256, elements: !5832)
!5832 = !{!5833, !5849}
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !5831, file: !5799, line: 361, baseType: !5834, size: 256)
!5834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cipher_alg", file: !5799, line: 235, size: 256, elements: !5835)
!5835 = !{!5836, !5837, !5838, !5844, !5848}
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "cia_min_keysize", scope: !5834, file: !5799, line: 236, baseType: !7, size: 32)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "cia_max_keysize", scope: !5834, file: !5799, line: 237, baseType: !7, size: 32, offset: 32)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "cia_setkey", scope: !5834, file: !5799, line: 238, baseType: !5839, size: 64, offset: 64)
!5839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5840, size: 64)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{!78, !5808, !5842, !7}
!5842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5843, size: 64)
!5843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "cia_encrypt", scope: !5834, file: !5799, line: 240, baseType: !5845, size: 64, offset: 128)
!5845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5846, size: 64)
!5846 = !DISubroutineType(types: !5847)
!5847 = !{null, !5808, !5428, !5842}
!5848 = !DIDerivedType(tag: DW_TAG_member, name: "cia_decrypt", scope: !5834, file: !5799, line: 241, baseType: !5845, size: 64, offset: 192)
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !5831, file: !5799, line: 362, baseType: !5850, size: 128)
!5850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compress_alg", file: !5799, line: 255, size: 128, elements: !5851)
!5851 = !{!5852, !5856}
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "coa_compress", scope: !5850, file: !5799, line: 256, baseType: !5853, size: 64)
!5853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5854, size: 64)
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!78, !5808, !5842, !7, !5428, !1974}
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "coa_decompress", scope: !5850, file: !5799, line: 258, baseType: !5853, size: 64, offset: 64)
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "cra_init", scope: !5811, file: !5799, line: 365, baseType: !5858, size: 64, offset: 2816)
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = !DISubroutineType(types: !5860)
!5860 = !{!78, !5808}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "cra_exit", scope: !5811, file: !5799, line: 366, baseType: !5805, size: 64, offset: 2880)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "cra_destroy", scope: !5811, file: !5799, line: 367, baseType: !5863, size: 64, offset: 2944)
!5863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5864, size: 64)
!5864 = !DISubroutineType(types: !5865)
!5865 = !{null, !5810}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "cra_module", scope: !5811, file: !5799, line: 369, baseType: !212, size: 64, offset: 3008)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "__crt_ctx", scope: !5798, file: !5799, line: 433, baseType: !5868, align: 64, offset: 256)
!5868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, elements: !746)
!5869 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5782, file: !5752, line: 66, baseType: !5789, size: 64, offset: 256)
!5870 = !DIDerivedType(tag: DW_TAG_member, name: "acceptor_enc", scope: !5782, file: !5752, line: 67, baseType: !5789, size: 64, offset: 320)
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "initiator_enc", scope: !5782, file: !5752, line: 68, baseType: !5789, size: 64, offset: 384)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "acceptor_enc_aux", scope: !5782, file: !5752, line: 69, baseType: !5789, size: 64, offset: 448)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "initiator_enc_aux", scope: !5782, file: !5752, line: 70, baseType: !5789, size: 64, offset: 512)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "acceptor_sign", scope: !5782, file: !5752, line: 71, baseType: !5875, size: 64, offset: 576)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_ahash", file: !5877, line: 252, size: 832, elements: !5878)
!5877 = !DIFile(filename: "./include/crypto/hash.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "898bc22f4cdebdebab6f93eb5fefb325")
!5878 = !{!5879, !5914, !5915, !5916, !5917, !5918, !5922, !5926, !5930, !5931, !5932}
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !5876, file: !5877, line: 253, baseType: !5880, size: 64)
!5880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5881, size: 64)
!5881 = !DISubroutineType(types: !5882)
!5882 = !{!78, !5883}
!5883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5884, size: 64)
!5884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ahash_request", file: !5877, line: 72, size: 640, elements: !5885)
!5885 = !{!5886, !5898, !5899, !5911, !5912, !5913}
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5884, file: !5877, line: 73, baseType: !5887, size: 384)
!5887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "crypto_async_request", file: !5799, line: 172, size: 384, elements: !5888)
!5888 = !{!5889, !5890, !5895, !5896, !5897}
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5887, file: !5799, line: 173, baseType: !153, size: 128)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5887, file: !5799, line: 174, baseType: !5891, size: 64, offset: 128)
!5891 = !DIDerivedType(tag: DW_TAG_typedef, name: "crypto_completion_t", file: !5799, line: 163, baseType: !5892)
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = !DISubroutineType(types: !5894)
!5894 = !{null, !76, !78}
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5887, file: !5799, line: 175, baseType: !76, size: 64, offset: 192)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "tfm", scope: !5887, file: !5799, line: 176, baseType: !5808, size: 64, offset: 256)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5887, file: !5799, line: 178, baseType: !409, size: 32, offset: 320)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !5884, file: !5877, line: 75, baseType: !7, size: 32, offset: 384)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !5884, file: !5877, line: 76, baseType: !5900, size: 64, offset: 448)
!5900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5901, size: 64)
!5901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !5902, line: 11, size: 256, elements: !5903)
!5902 = !DIFile(filename: "./include/linux/scatterlist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc5d709d01f4c0a80a46fc78d63fc593")
!5903 = !{!5904, !5905, !5906, !5907, !5909, !5910}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "page_link", scope: !5901, file: !5902, line: 12, baseType: !95, size: 64)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5901, file: !5902, line: 13, baseType: !7, size: 32, offset: 64)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5901, file: !5902, line: 14, baseType: !7, size: 32, offset: 96)
!5907 = !DIDerivedType(tag: DW_TAG_member, name: "dma_address", scope: !5901, file: !5902, line: 15, baseType: !5908, size: 64, offset: 128)
!5908 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !81, line: 149, baseType: !413)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "dma_length", scope: !5901, file: !5902, line: 17, baseType: !7, size: 32, offset: 192)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "dma_flags", scope: !5901, file: !5902, line: 20, baseType: !7, size: 32, offset: 224)
!5911 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !5884, file: !5877, line: 77, baseType: !5428, size: 64, offset: 512)
!5912 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5884, file: !5877, line: 80, baseType: !76, size: 64, offset: 576)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "__ctx", scope: !5884, file: !5877, line: 82, baseType: !5868, align: 64, offset: 640)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "update", scope: !5876, file: !5877, line: 254, baseType: !5880, size: 64, offset: 64)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !5876, file: !5877, line: 255, baseType: !5880, size: 64, offset: 128)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "finup", scope: !5876, file: !5877, line: 256, baseType: !5880, size: 64, offset: 192)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "digest", scope: !5876, file: !5877, line: 257, baseType: !5880, size: 64, offset: 256)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !5876, file: !5877, line: 258, baseType: !5919, size: 64, offset: 320)
!5919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5920, size: 64)
!5920 = !DISubroutineType(types: !5921)
!5921 = !{!78, !5883, !76}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "import", scope: !5876, file: !5877, line: 259, baseType: !5923, size: 64, offset: 384)
!5923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5924, size: 64)
!5924 = !DISubroutineType(types: !5925)
!5925 = !{!78, !5883, !1319}
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "setkey", scope: !5876, file: !5877, line: 260, baseType: !5927, size: 64, offset: 448)
!5927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5928, size: 64)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!78, !5875, !5842, !7}
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "statesize", scope: !5876, file: !5877, line: 263, baseType: !7, size: 32, offset: 512)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "reqsize", scope: !5876, file: !5877, line: 264, baseType: !7, size: 32, offset: 544)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5876, file: !5877, line: 265, baseType: !5798, size: 256, offset: 576)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "initiator_sign", scope: !5782, file: !5752, line: 72, baseType: !5875, size: 64, offset: 640)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "initiator_integ", scope: !5782, file: !5752, line: 73, baseType: !5875, size: 64, offset: 704)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "acceptor_integ", scope: !5782, file: !5752, line: 74, baseType: !5875, size: 64, offset: 768)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "Ksess", scope: !5782, file: !5752, line: 75, baseType: !5384, size: 256, offset: 832)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "cksum", scope: !5782, file: !5752, line: 76, baseType: !5384, size: 256, offset: 1088)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "seq_send", scope: !5782, file: !5752, line: 77, baseType: !105, size: 32, offset: 1344)
!5939 = !DIDerivedType(tag: DW_TAG_member, name: "seq_send64", scope: !5782, file: !5752, line: 78, baseType: !628, size: 64, offset: 1408)
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "endtime", scope: !5782, file: !5752, line: 79, baseType: !819, size: 64, offset: 1472)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "mech_used", scope: !5782, file: !5752, line: 80, baseType: !5424, size: 128, offset: 1536)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "decrypt", scope: !5751, file: !5752, line: 43, baseType: !5943, size: 64, offset: 704)
!5943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5944, size: 64)
!5944 = !DISubroutineType(types: !5945)
!5945 = !{!409, !5781, !409, !409, !5408, !2305, !2305}
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "get_mic", scope: !5751, file: !5752, line: 45, baseType: !5947, size: 64, offset: 768)
!5947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5948, size: 64)
!5948 = !DISubroutineType(types: !5949)
!5949 = !{!409, !5781, !5408, !5423}
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "verify_mic", scope: !5751, file: !5752, line: 47, baseType: !5947, size: 64, offset: 832)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "wrap", scope: !5751, file: !5752, line: 49, baseType: !5952, size: 64, offset: 896)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DISubroutineType(types: !5954)
!5954 = !{!409, !5781, !78, !5408, !4119}
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "unwrap", scope: !5751, file: !5752, line: 51, baseType: !5956, size: 64, offset: 960)
!5956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5957, size: 64)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!409, !5781, !78, !78, !5408, !1974, !1974}
!5959 = !DIGlobalVariableExpression(var: !5960, expr: !DIExpression())
!5960 = distinct !DIGlobalVariable(scope: null, file: !3, line: 616, type: !848, isLocal: true, isDefinition: true)
!5961 = !DIGlobalVariableExpression(var: !5962, expr: !DIExpression())
!5962 = distinct !DIGlobalVariable(scope: null, file: !3, line: 623, type: !848, isLocal: true, isDefinition: true)
!5963 = !DIGlobalVariableExpression(var: !5964, expr: !DIExpression())
!5964 = distinct !DIGlobalVariable(name: "gss_kerberos_pfs", scope: !2, file: !3, line: 605, type: !5965, isLocal: true, isDefinition: true)
!5965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5442, size: 1152, elements: !267)
!5966 = !DIGlobalVariableExpression(var: !5967, expr: !DIExpression())
!5967 = distinct !DIGlobalVariable(name: "gss_krb5_enctype_priority_list", scope: !2, file: !3, line: 210, type: !5968, isLocal: true, isDefinition: true)
!5968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 512, elements: !271)
!5969 = !DIGlobalVariableExpression(var: !5970, expr: !DIExpression())
!5970 = distinct !DIGlobalVariable(scope: null, file: !3, line: 653, type: !5971, isLocal: true, isDefinition: true)
!5971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 352, elements: !5972)
!5972 = !{!5973}
!5973 = !DISubrange(count: 44)
!5974 = !DIGlobalVariableExpression(var: !5975, expr: !DIExpression())
!5975 = distinct !DIGlobalVariable(name: "gss_krb5_enctypes", scope: !5976, file: !3, line: 214, type: !5983, isLocal: true, isDefinition: true)
!5976 = distinct !DISubprogram(name: "gss_krb5_prepare_enctype_priority_list", scope: !3, file: !3, line: 212, type: !3788, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5977)
!5977 = !{!5978, !5979, !5980, !5981, !5982}
!5978 = !DILocalVariable(name: "total", scope: !5976, file: !3, line: 228, type: !91)
!5979 = !DILocalVariable(name: "i", scope: !5976, file: !3, line: 228, type: !91)
!5980 = !DILocalVariable(name: "buf", scope: !5976, file: !3, line: 229, type: !2406)
!5981 = !DILocalVariable(name: "sep", scope: !5976, file: !3, line: 230, type: !266)
!5982 = !DILocalVariable(name: "n", scope: !5976, file: !3, line: 231, type: !78)
!5983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5755, elements: !2890)
!5984 = !DIGlobalVariableExpression(var: !5985, expr: !DIExpression())
!5985 = distinct !DIGlobalVariable(scope: null, file: !3, line: 233, type: !5986, isLocal: true, isDefinition: true)
!5986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 8, elements: !2219)
!5987 = !DIGlobalVariableExpression(var: !5988, expr: !DIExpression())
!5988 = distinct !DIGlobalVariable(scope: null, file: !3, line: 236, type: !5371, isLocal: true, isDefinition: true)
!5989 = !DIGlobalVariableExpression(var: !5990, expr: !DIExpression())
!5990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 242, type: !5991, isLocal: true, isDefinition: true)
!5991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 16, elements: !3161)
!5992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 320, elements: !5993)
!5993 = !{!5994}
!5994 = !DISubrange(count: 40)
!5995 = !{i32 7, !"Dwarf Version", i32 5}
!5996 = !{i32 2, !"Debug Info Version", i32 3}
!5997 = !{i32 1, !"wchar_size", i32 2}
!5998 = !{i32 8, !"cf-protection-branch", i32 1}
!5999 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6000 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6001 = !{i32 1, !"Code Model", i32 2}
!6002 = !{i32 1, !"override-stack-alignment", i32 8}
!6003 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6004 = distinct !DISubprogram(name: "cleanup_kerberos_module", scope: !3, file: !3, line: 657, type: !3788, scopeLine: 658, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6005 = !DILocation(line: 659, column: 2, scope: !6004)
!6006 = !DILocation(line: 660, column: 1, scope: !6004)
!6007 = !DISubprogram(name: "gss_mech_unregister", scope: !5375, file: !5375, line: 139, type: !6008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6008 = !DISubroutineType(types: !6009)
!6009 = !{null, !5399}
!6010 = distinct !DISubprogram(name: "__initstub__kmod_rpcsec_gss_krb5__352_663_init_kerberos_module6", scope: !3, file: !3, line: 663, type: !5119, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6011 = !DILocation(line: 663, column: 1, scope: !6010)
!6012 = distinct !DISubprogram(name: "init_kerberos_module", scope: !3, file: !3, line: 646, type: !5119, scopeLine: 647, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6013)
!6013 = !{!6014}
!6014 = !DILocalVariable(name: "status", scope: !6012, file: !3, line: 648, type: !78)
!6015 = !DILocation(line: 648, column: 2, scope: !6012)
!6016 = !DILocation(line: 648, column: 6, scope: !6012)
!6017 = !DILocation(line: 650, column: 2, scope: !6012)
!6018 = !DILocation(line: 651, column: 11, scope: !6012)
!6019 = !DILocation(line: 651, column: 9, scope: !6012)
!6020 = !DILocation(line: 652, column: 6, scope: !6021)
!6021 = distinct !DILexicalBlock(scope: !6012, file: !3, line: 652, column: 6)
!6022 = !DILocation(line: 652, column: 6, scope: !6012)
!6023 = !DILocation(line: 653, column: 3, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6021, file: !3, line: 653, column: 3)
!6025 = !DILocation(line: 653, column: 3, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6024, file: !3, line: 653, column: 3)
!6027 = !DILocation(line: 653, column: 3, scope: !6021)
!6028 = !DILocation(line: 654, column: 9, scope: !6012)
!6029 = !DILocation(line: 655, column: 1, scope: !6012)
!6030 = !DILocation(line: 654, column: 2, scope: !6012)
!6031 = distinct !DISubprogram(name: "gss_krb5_import_sec_context", scope: !3, file: !3, line: 469, type: !5393, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6032)
!6032 = !{!6033, !6034, !6035, !6036, !6037, !6038, !6039, !6040}
!6033 = !DILocalVariable(name: "p", arg: 1, scope: !6031, file: !3, line: 469, type: !1319)
!6034 = !DILocalVariable(name: "len", arg: 2, scope: !6031, file: !3, line: 469, type: !91)
!6035 = !DILocalVariable(name: "ctx_id", arg: 3, scope: !6031, file: !3, line: 469, type: !5395)
!6036 = !DILocalVariable(name: "endtime", arg: 4, scope: !6031, file: !3, line: 470, type: !5403)
!6037 = !DILocalVariable(name: "gfp_mask", arg: 5, scope: !6031, file: !3, line: 470, type: !1467)
!6038 = !DILocalVariable(name: "end", scope: !6031, file: !3, line: 472, type: !1319)
!6039 = !DILocalVariable(name: "ctx", scope: !6031, file: !3, line: 473, type: !5781)
!6040 = !DILocalVariable(name: "ret", scope: !6031, file: !3, line: 474, type: !78)
!6041 = !DILocation(line: 469, column: 41, scope: !6031)
!6042 = !DILocation(line: 469, column: 51, scope: !6031)
!6043 = !DILocation(line: 469, column: 72, scope: !6031)
!6044 = !DILocation(line: 470, column: 18, scope: !6031)
!6045 = !DILocation(line: 470, column: 33, scope: !6031)
!6046 = !DILocation(line: 472, column: 2, scope: !6031)
!6047 = !DILocation(line: 472, column: 14, scope: !6031)
!6048 = !DILocation(line: 472, column: 49, scope: !6031)
!6049 = !DILocation(line: 472, column: 53, scope: !6031)
!6050 = !DILocation(line: 472, column: 51, scope: !6031)
!6051 = !DILocation(line: 473, column: 2, scope: !6031)
!6052 = !DILocation(line: 473, column: 20, scope: !6031)
!6053 = !DILocation(line: 474, column: 2, scope: !6031)
!6054 = !DILocation(line: 474, column: 6, scope: !6031)
!6055 = !DILocation(line: 476, column: 30, scope: !6031)
!6056 = !DILocation(line: 476, column: 8, scope: !6031)
!6057 = !DILocation(line: 476, column: 6, scope: !6031)
!6058 = !DILocation(line: 477, column: 6, scope: !6059)
!6059 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 477, column: 6)
!6060 = !DILocation(line: 477, column: 10, scope: !6059)
!6061 = !DILocation(line: 477, column: 6, scope: !6031)
!6062 = !DILocation(line: 478, column: 3, scope: !6059)
!6063 = !DILocation(line: 480, column: 30, scope: !6031)
!6064 = !DILocation(line: 480, column: 33, scope: !6031)
!6065 = !DILocation(line: 480, column: 38, scope: !6031)
!6066 = !DILocation(line: 480, column: 43, scope: !6031)
!6067 = !DILocation(line: 480, column: 8, scope: !6031)
!6068 = !DILocation(line: 480, column: 6, scope: !6031)
!6069 = !DILocation(line: 481, column: 20, scope: !6031)
!6070 = !DILocation(line: 481, column: 25, scope: !6031)
!6071 = !DILocation(line: 481, column: 2, scope: !6031)
!6072 = !DILocation(line: 482, column: 6, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 482, column: 6)
!6074 = !DILocation(line: 482, column: 6, scope: !6031)
!6075 = !DILocation(line: 483, column: 9, scope: !6076)
!6076 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 482, column: 11)
!6077 = !DILocation(line: 483, column: 3, scope: !6076)
!6078 = !DILocation(line: 484, column: 10, scope: !6076)
!6079 = !DILocation(line: 484, column: 3, scope: !6076)
!6080 = !DILocation(line: 487, column: 28, scope: !6031)
!6081 = !DILocation(line: 487, column: 2, scope: !6031)
!6082 = !DILocation(line: 487, column: 10, scope: !6031)
!6083 = !DILocation(line: 487, column: 26, scope: !6031)
!6084 = !DILocation(line: 488, column: 6, scope: !6085)
!6085 = distinct !DILexicalBlock(scope: !6031, file: !3, line: 488, column: 6)
!6086 = !DILocation(line: 488, column: 6, scope: !6031)
!6087 = !DILocation(line: 489, column: 14, scope: !6085)
!6088 = !DILocation(line: 489, column: 19, scope: !6085)
!6089 = !DILocation(line: 489, column: 4, scope: !6085)
!6090 = !DILocation(line: 489, column: 12, scope: !6085)
!6091 = !DILocation(line: 489, column: 3, scope: !6085)
!6092 = !DILocation(line: 490, column: 2, scope: !6031)
!6093 = !DILocation(line: 491, column: 1, scope: !6031)
!6094 = distinct !DISubprogram(name: "gss_krb5_get_mic", scope: !3, file: !3, line: 523, type: !5406, scopeLine: 525, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6095)
!6095 = !{!6096, !6097, !6098, !6099}
!6096 = !DILocalVariable(name: "gctx", arg: 1, scope: !6094, file: !3, line: 523, type: !5395)
!6097 = !DILocalVariable(name: "text", arg: 2, scope: !6094, file: !3, line: 523, type: !5408)
!6098 = !DILocalVariable(name: "token", arg: 3, scope: !6094, file: !3, line: 524, type: !5423)
!6099 = !DILocalVariable(name: "kctx", scope: !6094, file: !3, line: 526, type: !5781)
!6100 = !DILocation(line: 523, column: 45, scope: !6094)
!6101 = !DILocation(line: 523, column: 67, scope: !6094)
!6102 = !DILocation(line: 524, column: 27, scope: !6094)
!6103 = !DILocation(line: 526, column: 2, scope: !6094)
!6104 = !DILocation(line: 526, column: 19, scope: !6094)
!6105 = !DILocation(line: 526, column: 26, scope: !6094)
!6106 = !DILocation(line: 526, column: 32, scope: !6094)
!6107 = !DILocation(line: 528, column: 9, scope: !6094)
!6108 = !DILocation(line: 528, column: 15, scope: !6094)
!6109 = !DILocation(line: 528, column: 21, scope: !6094)
!6110 = !DILocation(line: 528, column: 29, scope: !6094)
!6111 = !DILocation(line: 528, column: 35, scope: !6094)
!6112 = !DILocation(line: 528, column: 41, scope: !6094)
!6113 = !DILocation(line: 529, column: 1, scope: !6094)
!6114 = !DILocation(line: 528, column: 2, scope: !6094)
!6115 = distinct !DISubprogram(name: "gss_krb5_verify_mic", scope: !3, file: !3, line: 544, type: !5406, scopeLine: 547, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6116)
!6116 = !{!6117, !6118, !6119, !6120}
!6117 = !DILocalVariable(name: "gctx", arg: 1, scope: !6115, file: !3, line: 544, type: !5395)
!6118 = !DILocalVariable(name: "message_buffer", arg: 2, scope: !6115, file: !3, line: 545, type: !5408)
!6119 = !DILocalVariable(name: "read_token", arg: 3, scope: !6115, file: !3, line: 546, type: !5423)
!6120 = !DILocalVariable(name: "kctx", scope: !6115, file: !3, line: 548, type: !5781)
!6121 = !DILocation(line: 544, column: 48, scope: !6115)
!6122 = !DILocation(line: 545, column: 27, scope: !6115)
!6123 = !DILocation(line: 546, column: 30, scope: !6115)
!6124 = !DILocation(line: 548, column: 2, scope: !6115)
!6125 = !DILocation(line: 548, column: 19, scope: !6115)
!6126 = !DILocation(line: 548, column: 26, scope: !6115)
!6127 = !DILocation(line: 548, column: 32, scope: !6115)
!6128 = !DILocation(line: 550, column: 9, scope: !6115)
!6129 = !DILocation(line: 550, column: 15, scope: !6115)
!6130 = !DILocation(line: 550, column: 21, scope: !6115)
!6131 = !DILocation(line: 550, column: 32, scope: !6115)
!6132 = !DILocation(line: 550, column: 38, scope: !6115)
!6133 = !DILocation(line: 550, column: 54, scope: !6115)
!6134 = !DILocation(line: 551, column: 1, scope: !6115)
!6135 = !DILocation(line: 550, column: 2, scope: !6115)
!6136 = distinct !DISubprogram(name: "gss_krb5_wrap", scope: !3, file: !3, line: 565, type: !5432, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6137)
!6137 = !{!6138, !6139, !6140, !6141, !6142}
!6138 = !DILocalVariable(name: "gctx", arg: 1, scope: !6136, file: !3, line: 565, type: !5395)
!6139 = !DILocalVariable(name: "offset", arg: 2, scope: !6136, file: !3, line: 565, type: !78)
!6140 = !DILocalVariable(name: "buf", arg: 3, scope: !6136, file: !3, line: 566, type: !5408)
!6141 = !DILocalVariable(name: "pages", arg: 4, scope: !6136, file: !3, line: 566, type: !4119)
!6142 = !DILocalVariable(name: "kctx", scope: !6136, file: !3, line: 568, type: !5781)
!6143 = !DILocation(line: 565, column: 42, scope: !6136)
!6144 = !DILocation(line: 565, column: 52, scope: !6136)
!6145 = !DILocation(line: 566, column: 21, scope: !6136)
!6146 = !DILocation(line: 566, column: 40, scope: !6136)
!6147 = !DILocation(line: 568, column: 2, scope: !6136)
!6148 = !DILocation(line: 568, column: 19, scope: !6136)
!6149 = !DILocation(line: 568, column: 26, scope: !6136)
!6150 = !DILocation(line: 568, column: 32, scope: !6136)
!6151 = !DILocation(line: 570, column: 9, scope: !6136)
!6152 = !DILocation(line: 570, column: 15, scope: !6136)
!6153 = !DILocation(line: 570, column: 21, scope: !6136)
!6154 = !DILocation(line: 570, column: 26, scope: !6136)
!6155 = !DILocation(line: 570, column: 32, scope: !6136)
!6156 = !DILocation(line: 570, column: 40, scope: !6136)
!6157 = !DILocation(line: 570, column: 45, scope: !6136)
!6158 = !DILocation(line: 571, column: 1, scope: !6136)
!6159 = !DILocation(line: 570, column: 2, scope: !6136)
!6160 = distinct !DISubprogram(name: "gss_krb5_unwrap", scope: !3, file: !3, line: 587, type: !5436, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6161 = !{!6162, !6163, !6164, !6165, !6166}
!6162 = !DILocalVariable(name: "gctx", arg: 1, scope: !6160, file: !3, line: 587, type: !5395)
!6163 = !DILocalVariable(name: "offset", arg: 2, scope: !6160, file: !3, line: 587, type: !78)
!6164 = !DILocalVariable(name: "len", arg: 3, scope: !6160, file: !3, line: 588, type: !78)
!6165 = !DILocalVariable(name: "buf", arg: 4, scope: !6160, file: !3, line: 588, type: !5408)
!6166 = !DILocalVariable(name: "kctx", scope: !6160, file: !3, line: 590, type: !5781)
!6167 = !DILocation(line: 587, column: 44, scope: !6160)
!6168 = !DILocation(line: 587, column: 54, scope: !6160)
!6169 = !DILocation(line: 588, column: 11, scope: !6160)
!6170 = !DILocation(line: 588, column: 32, scope: !6160)
!6171 = !DILocation(line: 590, column: 2, scope: !6160)
!6172 = !DILocation(line: 590, column: 19, scope: !6160)
!6173 = !DILocation(line: 590, column: 26, scope: !6160)
!6174 = !DILocation(line: 590, column: 32, scope: !6160)
!6175 = !DILocation(line: 592, column: 9, scope: !6160)
!6176 = !DILocation(line: 592, column: 15, scope: !6160)
!6177 = !DILocation(line: 592, column: 21, scope: !6160)
!6178 = !DILocation(line: 592, column: 28, scope: !6160)
!6179 = !DILocation(line: 592, column: 34, scope: !6160)
!6180 = !DILocation(line: 592, column: 42, scope: !6160)
!6181 = !DILocation(line: 592, column: 47, scope: !6160)
!6182 = !DILocation(line: 593, column: 8, scope: !6160)
!6183 = !DILocation(line: 593, column: 14, scope: !6160)
!6184 = !DILocation(line: 593, column: 22, scope: !6160)
!6185 = !DILocation(line: 593, column: 28, scope: !6160)
!6186 = !DILocation(line: 594, column: 1, scope: !6160)
!6187 = !DILocation(line: 592, column: 2, scope: !6160)
!6188 = distinct !DISubprogram(name: "gss_krb5_delete_sec_context", scope: !3, file: !3, line: 494, type: !4472, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6189)
!6189 = !{!6190, !6191}
!6190 = !DILocalVariable(name: "internal_ctx", arg: 1, scope: !6188, file: !3, line: 494, type: !76)
!6191 = !DILocalVariable(name: "kctx", scope: !6188, file: !3, line: 496, type: !5781)
!6192 = !DILocation(line: 494, column: 35, scope: !6188)
!6193 = !DILocation(line: 496, column: 2, scope: !6188)
!6194 = !DILocation(line: 496, column: 19, scope: !6188)
!6195 = !DILocation(line: 496, column: 26, scope: !6188)
!6196 = !DILocation(line: 498, column: 28, scope: !6188)
!6197 = !DILocation(line: 498, column: 34, scope: !6188)
!6198 = !DILocation(line: 498, column: 2, scope: !6188)
!6199 = !DILocation(line: 499, column: 28, scope: !6188)
!6200 = !DILocation(line: 499, column: 34, scope: !6188)
!6201 = !DILocation(line: 499, column: 2, scope: !6188)
!6202 = !DILocation(line: 500, column: 28, scope: !6188)
!6203 = !DILocation(line: 500, column: 34, scope: !6188)
!6204 = !DILocation(line: 500, column: 2, scope: !6188)
!6205 = !DILocation(line: 501, column: 28, scope: !6188)
!6206 = !DILocation(line: 501, column: 34, scope: !6188)
!6207 = !DILocation(line: 501, column: 2, scope: !6188)
!6208 = !DILocation(line: 502, column: 28, scope: !6188)
!6209 = !DILocation(line: 502, column: 34, scope: !6188)
!6210 = !DILocation(line: 502, column: 2, scope: !6188)
!6211 = !DILocation(line: 503, column: 28, scope: !6188)
!6212 = !DILocation(line: 503, column: 34, scope: !6188)
!6213 = !DILocation(line: 503, column: 2, scope: !6188)
!6214 = !DILocation(line: 504, column: 20, scope: !6188)
!6215 = !DILocation(line: 504, column: 26, scope: !6188)
!6216 = !DILocation(line: 504, column: 2, scope: !6188)
!6217 = !DILocation(line: 505, column: 20, scope: !6188)
!6218 = !DILocation(line: 505, column: 26, scope: !6188)
!6219 = !DILocation(line: 505, column: 2, scope: !6188)
!6220 = !DILocation(line: 506, column: 20, scope: !6188)
!6221 = !DILocation(line: 506, column: 26, scope: !6188)
!6222 = !DILocation(line: 506, column: 2, scope: !6188)
!6223 = !DILocation(line: 507, column: 20, scope: !6188)
!6224 = !DILocation(line: 507, column: 26, scope: !6188)
!6225 = !DILocation(line: 507, column: 2, scope: !6188)
!6226 = !DILocation(line: 508, column: 8, scope: !6188)
!6227 = !DILocation(line: 508, column: 14, scope: !6188)
!6228 = !DILocation(line: 508, column: 24, scope: !6188)
!6229 = !DILocation(line: 508, column: 2, scope: !6188)
!6230 = !DILocation(line: 509, column: 8, scope: !6188)
!6231 = !DILocation(line: 509, column: 2, scope: !6188)
!6232 = !DILocation(line: 510, column: 1, scope: !6188)
!6233 = distinct !DISubprogram(name: "kzalloc", scope: !202, file: !202, line: 719, type: !6234, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6236)
!6234 = !DISubroutineType(types: !6235)
!6235 = !{!76, !91, !1467}
!6236 = !{!6237, !6238}
!6237 = !DILocalVariable(name: "size", arg: 1, scope: !6233, file: !202, line: 719, type: !91)
!6238 = !DILocalVariable(name: "flags", arg: 2, scope: !6233, file: !202, line: 719, type: !1467)
!6239 = !DILocation(line: 719, column: 52, scope: !6233)
!6240 = !DILocation(line: 719, column: 64, scope: !6233)
!6241 = !DILocation(line: 721, column: 17, scope: !6233)
!6242 = !DILocation(line: 721, column: 23, scope: !6233)
!6243 = !DILocation(line: 721, column: 29, scope: !6233)
!6244 = !DILocation(line: 721, column: 9, scope: !6233)
!6245 = !DILocation(line: 721, column: 2, scope: !6233)
!6246 = distinct !DISubprogram(name: "gss_import_v2_context", scope: !3, file: !3, line: 395, type: !6247, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6249)
!6247 = !DISubroutineType(types: !6248)
!6248 = !{!78, !1319, !1319, !5781, !1467}
!6249 = !{!6250, !6251, !6252, !6253, !6254, !6255, !6256, !6257, !6258, !6259}
!6250 = !DILocalVariable(name: "p", arg: 1, scope: !6246, file: !3, line: 395, type: !1319)
!6251 = !DILocalVariable(name: "end", arg: 2, scope: !6246, file: !3, line: 395, type: !1319)
!6252 = !DILocalVariable(name: "ctx", arg: 3, scope: !6246, file: !3, line: 395, type: !5781)
!6253 = !DILocalVariable(name: "gfp_mask", arg: 4, scope: !6246, file: !3, line: 396, type: !1467)
!6254 = !DILocalVariable(name: "seq_send64", scope: !6246, file: !3, line: 398, type: !413)
!6255 = !DILocalVariable(name: "keylen", scope: !6246, file: !3, line: 399, type: !78)
!6256 = !DILocalVariable(name: "time32", scope: !6246, file: !3, line: 400, type: !409)
!6257 = !DILocalVariable(name: "ret", scope: !6246, file: !3, line: 401, type: !78)
!6258 = !DILabel(scope: !6246, name: "out_free", file: !3, line: 462)
!6259 = !DILabel(scope: !6246, name: "out_err", file: !3, line: 464)
!6260 = !DILocation(line: 395, column: 35, scope: !6246)
!6261 = !DILocation(line: 395, column: 50, scope: !6246)
!6262 = !DILocation(line: 395, column: 72, scope: !6246)
!6263 = !DILocation(line: 396, column: 9, scope: !6246)
!6264 = !DILocation(line: 398, column: 2, scope: !6246)
!6265 = !DILocation(line: 398, column: 6, scope: !6246)
!6266 = !DILocation(line: 399, column: 2, scope: !6246)
!6267 = !DILocation(line: 399, column: 6, scope: !6246)
!6268 = !DILocation(line: 400, column: 2, scope: !6246)
!6269 = !DILocation(line: 400, column: 6, scope: !6246)
!6270 = !DILocation(line: 401, column: 2, scope: !6246)
!6271 = !DILocation(line: 401, column: 6, scope: !6246)
!6272 = !DILocation(line: 403, column: 23, scope: !6246)
!6273 = !DILocation(line: 403, column: 26, scope: !6246)
!6274 = !DILocation(line: 403, column: 32, scope: !6246)
!6275 = !DILocation(line: 403, column: 37, scope: !6246)
!6276 = !DILocation(line: 403, column: 6, scope: !6246)
!6277 = !DILocation(line: 403, column: 4, scope: !6246)
!6278 = !DILocation(line: 404, column: 13, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 404, column: 6)
!6280 = !DILocation(line: 404, column: 6, scope: !6279)
!6281 = !DILocation(line: 404, column: 6, scope: !6246)
!6282 = !DILocation(line: 405, column: 3, scope: !6279)
!6283 = !DILocation(line: 406, column: 18, scope: !6246)
!6284 = !DILocation(line: 406, column: 23, scope: !6246)
!6285 = !DILocation(line: 406, column: 29, scope: !6246)
!6286 = !DILocation(line: 406, column: 2, scope: !6246)
!6287 = !DILocation(line: 406, column: 7, scope: !6246)
!6288 = !DILocation(line: 406, column: 16, scope: !6246)
!6289 = !DILocation(line: 408, column: 23, scope: !6246)
!6290 = !DILocation(line: 408, column: 26, scope: !6246)
!6291 = !DILocation(line: 408, column: 6, scope: !6246)
!6292 = !DILocation(line: 408, column: 4, scope: !6246)
!6293 = !DILocation(line: 409, column: 13, scope: !6294)
!6294 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 409, column: 6)
!6295 = !DILocation(line: 409, column: 6, scope: !6294)
!6296 = !DILocation(line: 409, column: 6, scope: !6246)
!6297 = !DILocation(line: 410, column: 3, scope: !6294)
!6298 = !DILocation(line: 412, column: 27, scope: !6246)
!6299 = !DILocation(line: 412, column: 17, scope: !6246)
!6300 = !DILocation(line: 412, column: 2, scope: !6246)
!6301 = !DILocation(line: 412, column: 7, scope: !6246)
!6302 = !DILocation(line: 412, column: 15, scope: !6246)
!6303 = !DILocation(line: 413, column: 23, scope: !6246)
!6304 = !DILocation(line: 413, column: 26, scope: !6246)
!6305 = !DILocation(line: 413, column: 6, scope: !6246)
!6306 = !DILocation(line: 413, column: 4, scope: !6246)
!6307 = !DILocation(line: 414, column: 13, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 414, column: 6)
!6309 = !DILocation(line: 414, column: 6, scope: !6308)
!6310 = !DILocation(line: 414, column: 6, scope: !6246)
!6311 = !DILocation(line: 415, column: 3, scope: !6308)
!6312 = !DILocation(line: 416, column: 16, scope: !6246)
!6313 = !DILocation(line: 416, column: 21, scope: !6246)
!6314 = !DILocation(line: 416, column: 33, scope: !6246)
!6315 = !DILocation(line: 416, column: 2, scope: !6246)
!6316 = !DILocation(line: 418, column: 14, scope: !6246)
!6317 = !DILocation(line: 418, column: 19, scope: !6246)
!6318 = !DILocation(line: 418, column: 29, scope: !6246)
!6319 = !DILocation(line: 418, column: 2, scope: !6246)
!6320 = !DILocation(line: 419, column: 6, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 419, column: 6)
!6322 = !DILocation(line: 419, column: 33, scope: !6321)
!6323 = !DILocation(line: 419, column: 38, scope: !6321)
!6324 = !DILocation(line: 419, column: 20, scope: !6321)
!6325 = !DILocation(line: 419, column: 17, scope: !6321)
!6326 = !DILocation(line: 419, column: 6, scope: !6246)
!6327 = !DILocation(line: 420, column: 3, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6321, file: !3, line: 419, column: 49)
!6329 = !DILocation(line: 420, column: 3, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6328, file: !3, line: 420, column: 3)
!6331 = !DILocation(line: 422, column: 7, scope: !6328)
!6332 = !DILocation(line: 422, column: 5, scope: !6328)
!6333 = !DILocation(line: 423, column: 3, scope: !6328)
!6334 = !DILocation(line: 425, column: 23, scope: !6246)
!6335 = !DILocation(line: 425, column: 26, scope: !6246)
!6336 = !DILocation(line: 425, column: 32, scope: !6246)
!6337 = !DILocation(line: 425, column: 37, scope: !6246)
!6338 = !DILocation(line: 425, column: 6, scope: !6246)
!6339 = !DILocation(line: 425, column: 4, scope: !6246)
!6340 = !DILocation(line: 426, column: 13, scope: !6341)
!6341 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 426, column: 6)
!6342 = !DILocation(line: 426, column: 6, scope: !6341)
!6343 = !DILocation(line: 426, column: 6, scope: !6246)
!6344 = !DILocation(line: 427, column: 3, scope: !6341)
!6345 = !DILocation(line: 428, column: 38, scope: !6246)
!6346 = !DILocation(line: 428, column: 43, scope: !6246)
!6347 = !DILocation(line: 428, column: 14, scope: !6246)
!6348 = !DILocation(line: 428, column: 2, scope: !6246)
!6349 = !DILocation(line: 428, column: 7, scope: !6246)
!6350 = !DILocation(line: 428, column: 12, scope: !6246)
!6351 = !DILocation(line: 429, column: 6, scope: !6352)
!6352 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 429, column: 6)
!6353 = !DILocation(line: 429, column: 11, scope: !6352)
!6354 = !DILocation(line: 429, column: 16, scope: !6352)
!6355 = !DILocation(line: 429, column: 6, scope: !6246)
!6356 = !DILocation(line: 430, column: 3, scope: !6357)
!6357 = distinct !DILexicalBlock(scope: !6352, file: !3, line: 429, column: 25)
!6358 = !DILocation(line: 430, column: 3, scope: !6359)
!6359 = distinct !DILexicalBlock(scope: !6357, file: !3, line: 430, column: 3)
!6360 = !DILocation(line: 432, column: 7, scope: !6357)
!6361 = !DILocation(line: 432, column: 5, scope: !6357)
!6362 = !DILocation(line: 433, column: 3, scope: !6357)
!6363 = !DILocation(line: 435, column: 11, scope: !6246)
!6364 = !DILocation(line: 435, column: 16, scope: !6246)
!6365 = !DILocation(line: 435, column: 22, scope: !6246)
!6366 = !DILocation(line: 435, column: 9, scope: !6246)
!6367 = !DILocation(line: 437, column: 23, scope: !6246)
!6368 = !DILocation(line: 437, column: 26, scope: !6246)
!6369 = !DILocation(line: 437, column: 31, scope: !6246)
!6370 = !DILocation(line: 437, column: 36, scope: !6246)
!6371 = !DILocation(line: 437, column: 43, scope: !6246)
!6372 = !DILocation(line: 437, column: 6, scope: !6246)
!6373 = !DILocation(line: 437, column: 4, scope: !6246)
!6374 = !DILocation(line: 438, column: 13, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 438, column: 6)
!6376 = !DILocation(line: 438, column: 6, scope: !6375)
!6377 = !DILocation(line: 438, column: 6, scope: !6246)
!6378 = !DILocation(line: 439, column: 3, scope: !6375)
!6379 = !DILocation(line: 441, column: 6, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 441, column: 6)
!6381 = !DILocation(line: 441, column: 11, scope: !6380)
!6382 = !DILocation(line: 441, column: 8, scope: !6380)
!6383 = !DILocation(line: 441, column: 6, scope: !6246)
!6384 = !DILocation(line: 442, column: 7, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6380, file: !3, line: 441, column: 16)
!6386 = !DILocation(line: 442, column: 5, scope: !6385)
!6387 = !DILocation(line: 443, column: 3, scope: !6385)
!6388 = !DILocation(line: 447, column: 36, scope: !6246)
!6389 = !DILocation(line: 447, column: 11, scope: !6246)
!6390 = !DILocation(line: 447, column: 41, scope: !6246)
!6391 = !DILocation(line: 446, column: 24, scope: !6246)
!6392 = !DILocation(line: 446, column: 2, scope: !6246)
!6393 = !DILocation(line: 446, column: 7, scope: !6246)
!6394 = !DILocation(line: 446, column: 17, scope: !6246)
!6395 = !DILocation(line: 446, column: 22, scope: !6246)
!6396 = !DILocation(line: 448, column: 6, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 448, column: 6)
!6398 = !DILocation(line: 448, column: 6, scope: !6246)
!6399 = !DILocation(line: 449, column: 7, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 448, column: 45)
!6401 = !DILocation(line: 449, column: 5, scope: !6400)
!6402 = !DILocation(line: 450, column: 3, scope: !6400)
!6403 = !DILocation(line: 452, column: 48, scope: !6246)
!6404 = !DILocation(line: 452, column: 2, scope: !6246)
!6405 = !DILocation(line: 452, column: 7, scope: !6246)
!6406 = !DILocation(line: 452, column: 17, scope: !6246)
!6407 = !DILocation(line: 452, column: 21, scope: !6246)
!6408 = !DILocation(line: 454, column: 31, scope: !6246)
!6409 = !DILocation(line: 454, column: 36, scope: !6246)
!6410 = !DILocation(line: 454, column: 8, scope: !6246)
!6411 = !DILocation(line: 454, column: 6, scope: !6246)
!6412 = !DILocation(line: 455, column: 6, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6246, file: !3, line: 455, column: 6)
!6414 = !DILocation(line: 455, column: 6, scope: !6246)
!6415 = !DILocation(line: 456, column: 15, scope: !6416)
!6416 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 455, column: 11)
!6417 = !DILocation(line: 456, column: 7, scope: !6416)
!6418 = !DILocation(line: 456, column: 5, scope: !6416)
!6419 = !DILocation(line: 457, column: 3, scope: !6416)
!6420 = !DILocation(line: 460, column: 2, scope: !6246)
!6421 = !DILocation(line: 462, column: 1, scope: !6246)
!6422 = !DILocation(line: 463, column: 8, scope: !6246)
!6423 = !DILocation(line: 463, column: 13, scope: !6246)
!6424 = !DILocation(line: 463, column: 23, scope: !6246)
!6425 = !DILocation(line: 463, column: 2, scope: !6246)
!6426 = !DILocation(line: 464, column: 1, scope: !6246)
!6427 = !DILocation(line: 465, column: 17, scope: !6246)
!6428 = !DILocation(line: 465, column: 9, scope: !6246)
!6429 = !DILocation(line: 465, column: 2, scope: !6246)
!6430 = !DILocation(line: 466, column: 1, scope: !6246)
!6431 = distinct !DISubprogram(name: "memzero_explicit", scope: !6432, file: !6432, line: 276, type: !6433, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6435)
!6432 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!6433 = !DISubroutineType(types: !6434)
!6434 = !{null, !76, !91}
!6435 = !{!6436, !6437}
!6436 = !DILocalVariable(name: "s", arg: 1, scope: !6431, file: !6432, line: 276, type: !76)
!6437 = !DILocalVariable(name: "count", arg: 2, scope: !6431, file: !6432, line: 276, type: !91)
!6438 = !DILocation(line: 276, column: 43, scope: !6431)
!6439 = !DILocation(line: 276, column: 53, scope: !6431)
!6440 = !DILocation(line: 278, column: 9, scope: !6431)
!6441 = !DILocation(line: 278, column: 15, scope: !6431)
!6442 = !DILocation(line: 278, column: 2, scope: !6431)
!6443 = !DILocation(line: 279, column: 2, scope: !6431)
!6444 = !{i64 2149367727}
!6445 = !DILocation(line: 280, column: 1, scope: !6431)
!6446 = !DISubprogram(name: "kfree", scope: !202, file: !202, line: 227, type: !6447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6447 = !DISubroutineType(types: !6448)
!6448 = !{null, !1319}
!6449 = distinct !DISubprogram(name: "kmalloc", scope: !202, file: !202, line: 591, type: !6234, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6450)
!6450 = !{!6451, !6452, !6453}
!6451 = !DILocalVariable(name: "size", arg: 1, scope: !6449, file: !202, line: 591, type: !91)
!6452 = !DILocalVariable(name: "flags", arg: 2, scope: !6449, file: !202, line: 591, type: !1467)
!6453 = !DILocalVariable(name: "index", scope: !6454, file: !202, line: 594, type: !7)
!6454 = distinct !DILexicalBlock(scope: !6455, file: !202, line: 593, column: 42)
!6455 = distinct !DILexicalBlock(scope: !6449, file: !202, line: 593, column: 6)
!6456 = !DILocation(line: 591, column: 61, scope: !6449)
!6457 = !DILocation(line: 591, column: 73, scope: !6449)
!6458 = !DILocation(line: 593, column: 27, scope: !6455)
!6459 = !DILocation(line: 593, column: 6, scope: !6455)
!6460 = !DILocation(line: 593, column: 33, scope: !6455)
!6461 = !DILocation(line: 593, column: 36, scope: !6455)
!6462 = !DILocation(line: 593, column: 6, scope: !6449)
!6463 = !DILocation(line: 594, column: 3, scope: !6454)
!6464 = !DILocation(line: 594, column: 16, scope: !6454)
!6465 = !DILocation(line: 596, column: 7, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6454, file: !202, line: 596, column: 7)
!6467 = !DILocation(line: 596, column: 12, scope: !6466)
!6468 = !DILocation(line: 596, column: 7, scope: !6454)
!6469 = !DILocation(line: 597, column: 25, scope: !6466)
!6470 = !DILocation(line: 597, column: 31, scope: !6466)
!6471 = !DILocation(line: 597, column: 11, scope: !6466)
!6472 = !DILocation(line: 597, column: 4, scope: !6466)
!6473 = !DILocation(line: 599, column: 11, scope: !6454)
!6474 = !DILocation(line: 599, column: 9, scope: !6454)
!6475 = !DILocation(line: 601, column: 33, scope: !6454)
!6476 = !DILocation(line: 601, column: 40, scope: !6454)
!6477 = !DILocation(line: 601, column: 20, scope: !6454)
!6478 = !DILocation(line: 601, column: 5, scope: !6454)
!6479 = !DILocation(line: 601, column: 51, scope: !6454)
!6480 = !DILocation(line: 602, column: 5, scope: !6454)
!6481 = !DILocation(line: 602, column: 12, scope: !6454)
!6482 = !DILocation(line: 600, column: 10, scope: !6454)
!6483 = !DILocation(line: 600, column: 3, scope: !6454)
!6484 = !DILocation(line: 603, column: 2, scope: !6455)
!6485 = !DILocation(line: 604, column: 19, scope: !6449)
!6486 = !DILocation(line: 604, column: 25, scope: !6449)
!6487 = !DILocation(line: 604, column: 9, scope: !6449)
!6488 = !DILocation(line: 604, column: 2, scope: !6449)
!6489 = !DILocation(line: 605, column: 1, scope: !6449)
!6490 = !DISubprogram(name: "kmalloc_large", scope: !202, file: !202, line: 531, type: !6234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6491 = distinct !DISubprogram(name: "__kmalloc_index", scope: !202, file: !202, line: 444, type: !6492, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6494)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!7, !91, !862}
!6494 = !{!6495, !6496}
!6495 = !DILocalVariable(name: "size", arg: 1, scope: !6491, file: !202, line: 444, type: !91)
!6496 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6491, file: !202, line: 445, type: !862)
!6497 = !DILocation(line: 444, column: 60, scope: !6491)
!6498 = !DILocation(line: 445, column: 16, scope: !6491)
!6499 = !DILocation(line: 447, column: 7, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 447, column: 6)
!6501 = !DILocation(line: 447, column: 6, scope: !6491)
!6502 = !DILocation(line: 448, column: 3, scope: !6500)
!6503 = !DILocation(line: 450, column: 6, scope: !6504)
!6504 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 450, column: 6)
!6505 = !DILocation(line: 450, column: 11, scope: !6504)
!6506 = !DILocation(line: 450, column: 6, scope: !6491)
!6507 = !DILocation(line: 451, column: 3, scope: !6504)
!6508 = !DILocation(line: 453, column: 32, scope: !6509)
!6509 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 453, column: 6)
!6510 = !DILocation(line: 453, column: 37, scope: !6509)
!6511 = !DILocation(line: 453, column: 42, scope: !6509)
!6512 = !DILocation(line: 453, column: 45, scope: !6509)
!6513 = !DILocation(line: 453, column: 50, scope: !6509)
!6514 = !DILocation(line: 453, column: 6, scope: !6491)
!6515 = !DILocation(line: 454, column: 3, scope: !6509)
!6516 = !DILocation(line: 455, column: 32, scope: !6517)
!6517 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 455, column: 6)
!6518 = !DILocation(line: 455, column: 37, scope: !6517)
!6519 = !DILocation(line: 455, column: 43, scope: !6517)
!6520 = !DILocation(line: 455, column: 46, scope: !6517)
!6521 = !DILocation(line: 455, column: 51, scope: !6517)
!6522 = !DILocation(line: 455, column: 6, scope: !6491)
!6523 = !DILocation(line: 456, column: 3, scope: !6517)
!6524 = !DILocation(line: 457, column: 6, scope: !6525)
!6525 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 457, column: 6)
!6526 = !DILocation(line: 457, column: 11, scope: !6525)
!6527 = !DILocation(line: 457, column: 6, scope: !6491)
!6528 = !DILocation(line: 457, column: 26, scope: !6525)
!6529 = !DILocation(line: 458, column: 6, scope: !6530)
!6530 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 458, column: 6)
!6531 = !DILocation(line: 458, column: 11, scope: !6530)
!6532 = !DILocation(line: 458, column: 6, scope: !6491)
!6533 = !DILocation(line: 458, column: 26, scope: !6530)
!6534 = !DILocation(line: 459, column: 6, scope: !6535)
!6535 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 459, column: 6)
!6536 = !DILocation(line: 459, column: 11, scope: !6535)
!6537 = !DILocation(line: 459, column: 6, scope: !6491)
!6538 = !DILocation(line: 459, column: 26, scope: !6535)
!6539 = !DILocation(line: 460, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 460, column: 6)
!6541 = !DILocation(line: 460, column: 11, scope: !6540)
!6542 = !DILocation(line: 460, column: 6, scope: !6491)
!6543 = !DILocation(line: 460, column: 26, scope: !6540)
!6544 = !DILocation(line: 461, column: 6, scope: !6545)
!6545 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 461, column: 6)
!6546 = !DILocation(line: 461, column: 11, scope: !6545)
!6547 = !DILocation(line: 461, column: 6, scope: !6491)
!6548 = !DILocation(line: 461, column: 26, scope: !6545)
!6549 = !DILocation(line: 462, column: 6, scope: !6550)
!6550 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 462, column: 6)
!6551 = !DILocation(line: 462, column: 11, scope: !6550)
!6552 = !DILocation(line: 462, column: 6, scope: !6491)
!6553 = !DILocation(line: 462, column: 26, scope: !6550)
!6554 = !DILocation(line: 463, column: 6, scope: !6555)
!6555 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 463, column: 6)
!6556 = !DILocation(line: 463, column: 11, scope: !6555)
!6557 = !DILocation(line: 463, column: 6, scope: !6491)
!6558 = !DILocation(line: 463, column: 26, scope: !6555)
!6559 = !DILocation(line: 464, column: 6, scope: !6560)
!6560 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 464, column: 6)
!6561 = !DILocation(line: 464, column: 11, scope: !6560)
!6562 = !DILocation(line: 464, column: 6, scope: !6491)
!6563 = !DILocation(line: 464, column: 26, scope: !6560)
!6564 = !DILocation(line: 465, column: 6, scope: !6565)
!6565 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 465, column: 6)
!6566 = !DILocation(line: 465, column: 11, scope: !6565)
!6567 = !DILocation(line: 465, column: 6, scope: !6491)
!6568 = !DILocation(line: 465, column: 26, scope: !6565)
!6569 = !DILocation(line: 466, column: 6, scope: !6570)
!6570 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 466, column: 6)
!6571 = !DILocation(line: 466, column: 11, scope: !6570)
!6572 = !DILocation(line: 466, column: 6, scope: !6491)
!6573 = !DILocation(line: 466, column: 26, scope: !6570)
!6574 = !DILocation(line: 467, column: 6, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 467, column: 6)
!6576 = !DILocation(line: 467, column: 11, scope: !6575)
!6577 = !DILocation(line: 467, column: 6, scope: !6491)
!6578 = !DILocation(line: 467, column: 26, scope: !6575)
!6579 = !DILocation(line: 468, column: 6, scope: !6580)
!6580 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 468, column: 6)
!6581 = !DILocation(line: 468, column: 11, scope: !6580)
!6582 = !DILocation(line: 468, column: 6, scope: !6491)
!6583 = !DILocation(line: 468, column: 26, scope: !6580)
!6584 = !DILocation(line: 469, column: 6, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 469, column: 6)
!6586 = !DILocation(line: 469, column: 11, scope: !6585)
!6587 = !DILocation(line: 469, column: 6, scope: !6491)
!6588 = !DILocation(line: 469, column: 26, scope: !6585)
!6589 = !DILocation(line: 470, column: 6, scope: !6590)
!6590 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 470, column: 6)
!6591 = !DILocation(line: 470, column: 11, scope: !6590)
!6592 = !DILocation(line: 470, column: 6, scope: !6491)
!6593 = !DILocation(line: 470, column: 26, scope: !6590)
!6594 = !DILocation(line: 471, column: 6, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 471, column: 6)
!6596 = !DILocation(line: 471, column: 11, scope: !6595)
!6597 = !DILocation(line: 471, column: 6, scope: !6491)
!6598 = !DILocation(line: 471, column: 26, scope: !6595)
!6599 = !DILocation(line: 472, column: 6, scope: !6600)
!6600 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 472, column: 6)
!6601 = !DILocation(line: 472, column: 11, scope: !6600)
!6602 = !DILocation(line: 472, column: 6, scope: !6491)
!6603 = !DILocation(line: 472, column: 26, scope: !6600)
!6604 = !DILocation(line: 473, column: 6, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 473, column: 6)
!6606 = !DILocation(line: 473, column: 11, scope: !6605)
!6607 = !DILocation(line: 473, column: 6, scope: !6491)
!6608 = !DILocation(line: 473, column: 26, scope: !6605)
!6609 = !DILocation(line: 474, column: 6, scope: !6610)
!6610 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 474, column: 6)
!6611 = !DILocation(line: 474, column: 11, scope: !6610)
!6612 = !DILocation(line: 474, column: 6, scope: !6491)
!6613 = !DILocation(line: 474, column: 27, scope: !6610)
!6614 = !DILocation(line: 475, column: 6, scope: !6615)
!6615 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 475, column: 6)
!6616 = !DILocation(line: 475, column: 11, scope: !6615)
!6617 = !DILocation(line: 475, column: 6, scope: !6491)
!6618 = !DILocation(line: 475, column: 32, scope: !6615)
!6619 = !DILocation(line: 477, column: 50, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6491, file: !202, line: 477, column: 6)
!6621 = !{i8 0, i8 2}
!6622 = !DILocation(line: 477, column: 6, scope: !6491)
!6623 = !DILocation(line: 478, column: 3, scope: !6620)
!6624 = !DILocation(line: 478, column: 3, scope: !6625)
!6625 = distinct !DILexicalBlock(scope: !6626, file: !202, line: 478, column: 3)
!6626 = distinct !DILexicalBlock(scope: !6620, file: !202, line: 478, column: 3)
!6627 = !{i32 -2143486855}
!6628 = !DILocation(line: 478, column: 3, scope: !6626)
!6629 = !DILocation(line: 480, column: 3, scope: !6620)
!6630 = !DILocation(line: 480, column: 3, scope: !6631)
!6631 = distinct !DILexicalBlock(scope: !6620, file: !202, line: 480, column: 3)
!6632 = !DILocation(line: 480, column: 3, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6631, file: !202, line: 480, column: 3)
!6634 = !DILocation(line: 480, column: 3, scope: !6635)
!6635 = distinct !DILexicalBlock(scope: !6631, file: !202, line: 480, column: 3)
!6636 = !{i64 2151480644, i64 2151480673, i64 2151480719, i64 2151480777, i64 2151480831, i64 2151480885, i64 2151480940, i64 2151480971}
!6637 = !DILocation(line: 483, column: 2, scope: !6491)
!6638 = !DILocation(line: 484, column: 1, scope: !6491)
!6639 = !DISubprogram(name: "kmalloc_trace", scope: !202, file: !202, line: 525, type: !6640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6640 = !DISubroutineType(types: !6641)
!6641 = !{!76, !3087, !1467, !91}
!6642 = distinct !DISubprogram(name: "kmalloc_type", scope: !202, file: !202, line: 401, type: !6643, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6645)
!6643 = !DISubroutineType(types: !6644)
!6644 = !{!201, !1467, !95}
!6645 = !{!6646, !6647}
!6646 = !DILocalVariable(name: "flags", arg: 1, scope: !6642, file: !202, line: 401, type: !1467)
!6647 = !DILocalVariable(name: "caller", arg: 2, scope: !6642, file: !202, line: 401, type: !95)
!6648 = !DILocation(line: 401, column: 67, scope: !6642)
!6649 = !DILocation(line: 401, column: 88, scope: !6642)
!6650 = !DILocation(line: 407, column: 6, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6642, file: !202, line: 407, column: 6)
!6652 = !DILocation(line: 407, column: 6, scope: !6642)
!6653 = !DILocation(line: 413, column: 3, scope: !6651)
!6654 = !DILocation(line: 423, column: 38, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6642, file: !202, line: 423, column: 6)
!6656 = !DILocation(line: 423, column: 44, scope: !6655)
!6657 = !DILocation(line: 423, column: 6, scope: !6642)
!6658 = !DILocation(line: 424, column: 3, scope: !6655)
!6659 = !DILocation(line: 426, column: 3, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6642, file: !202, line: 425, column: 6)
!6661 = !DILocation(line: 429, column: 1, scope: !6642)
!6662 = !DISubprogram(name: "__kmalloc", scope: !202, file: !202, line: 488, type: !6234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6663 = !DISubprogram(name: "__compiletime_assert_117", scope: !202, file: !202, line: 478, type: !3788, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6664 = distinct !DISubprogram(name: "simple_get_bytes", scope: !6665, file: !6665, line: 16, type: !6666, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6668)
!6665 = !DIFile(filename: "net/sunrpc/auth_gss/auth_gss_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8de2ff2e5e09a39a71e0c36d99c4168b")
!6666 = !DISubroutineType(types: !6667)
!6667 = !{!1319, !1319, !1319, !76, !91}
!6668 = !{!6669, !6670, !6671, !6672, !6673}
!6669 = !DILocalVariable(name: "p", arg: 1, scope: !6664, file: !6665, line: 16, type: !1319)
!6670 = !DILocalVariable(name: "end", arg: 2, scope: !6664, file: !6665, line: 16, type: !1319)
!6671 = !DILocalVariable(name: "res", arg: 3, scope: !6664, file: !6665, line: 16, type: !76)
!6672 = !DILocalVariable(name: "len", arg: 4, scope: !6664, file: !6665, line: 16, type: !91)
!6673 = !DILocalVariable(name: "q", scope: !6664, file: !6665, line: 18, type: !1319)
!6674 = !DILocation(line: 16, column: 30, scope: !6664)
!6675 = !DILocation(line: 16, column: 45, scope: !6664)
!6676 = !DILocation(line: 16, column: 56, scope: !6664)
!6677 = !DILocation(line: 16, column: 68, scope: !6664)
!6678 = !DILocation(line: 18, column: 2, scope: !6664)
!6679 = !DILocation(line: 18, column: 14, scope: !6664)
!6680 = !DILocation(line: 18, column: 47, scope: !6664)
!6681 = !DILocation(line: 18, column: 51, scope: !6664)
!6682 = !DILocation(line: 18, column: 49, scope: !6664)
!6683 = !DILocation(line: 19, column: 6, scope: !6684)
!6684 = distinct !DILexicalBlock(scope: !6664, file: !6665, line: 19, column: 6)
!6685 = !DILocation(line: 19, column: 6, scope: !6664)
!6686 = !DILocation(line: 20, column: 10, scope: !6684)
!6687 = !DILocation(line: 20, column: 3, scope: !6684)
!6688 = !DILocation(line: 21, column: 9, scope: !6664)
!6689 = !DILocation(line: 21, column: 14, scope: !6664)
!6690 = !DILocation(line: 21, column: 17, scope: !6664)
!6691 = !DILocation(line: 21, column: 2, scope: !6664)
!6692 = !DILocation(line: 22, column: 9, scope: !6664)
!6693 = !DILocation(line: 22, column: 2, scope: !6664)
!6694 = !DILocation(line: 23, column: 1, scope: !6664)
!6695 = distinct !DISubprogram(name: "IS_ERR", scope: !6696, file: !6696, line: 59, type: !6697, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6699)
!6696 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6697 = !DISubroutineType(types: !6698)
!6698 = !{!862, !1319}
!6699 = !{!6700}
!6700 = !DILocalVariable(name: "ptr", arg: 1, scope: !6695, file: !6696, line: 59, type: !1319)
!6701 = !DILocation(line: 59, column: 60, scope: !6695)
!6702 = !DILocation(line: 61, column: 9, scope: !6695)
!6703 = !DILocation(line: 61, column: 2, scope: !6695)
!6704 = distinct !DISubprogram(name: "atomic64_set", scope: !6705, file: !6705, line: 1629, type: !6706, scopeLine: 1630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6709)
!6705 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!6706 = !DISubroutineType(types: !6707)
!6707 = !{null, !6708, !632}
!6708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!6709 = !{!6710, !6711}
!6710 = !DILocalVariable(name: "v", arg: 1, scope: !6704, file: !6705, line: 1629, type: !6708)
!6711 = !DILocalVariable(name: "i", arg: 2, scope: !6704, file: !6705, line: 1629, type: !632)
!6712 = !DILocation(line: 1629, column: 26, scope: !6704)
!6713 = !DILocation(line: 1629, column: 33, scope: !6704)
!6714 = !DILocation(line: 1631, column: 26, scope: !6704)
!6715 = !DILocation(line: 1631, column: 2, scope: !6704)
!6716 = !DILocation(line: 1632, column: 19, scope: !6704)
!6717 = !DILocation(line: 1632, column: 22, scope: !6704)
!6718 = !DILocation(line: 1632, column: 2, scope: !6704)
!6719 = !DILocation(line: 1633, column: 1, scope: !6704)
!6720 = distinct !DISubprogram(name: "atomic_set", scope: !6705, file: !6705, line: 65, type: !6721, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6724)
!6721 = !DISubroutineType(types: !6722)
!6722 = !{null, !6723, !78}
!6723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!6724 = !{!6725, !6726}
!6725 = !DILocalVariable(name: "v", arg: 1, scope: !6720, file: !6705, line: 65, type: !6723)
!6726 = !DILocalVariable(name: "i", arg: 2, scope: !6720, file: !6705, line: 65, type: !78)
!6727 = !DILocation(line: 65, column: 22, scope: !6720)
!6728 = !DILocation(line: 65, column: 29, scope: !6720)
!6729 = !DILocation(line: 67, column: 26, scope: !6720)
!6730 = !DILocation(line: 67, column: 2, scope: !6720)
!6731 = !DILocation(line: 68, column: 17, scope: !6720)
!6732 = !DILocation(line: 68, column: 20, scope: !6720)
!6733 = !DILocation(line: 68, column: 2, scope: !6720)
!6734 = !DILocation(line: 69, column: 1, scope: !6720)
!6735 = distinct !DISubprogram(name: "atomic_read", scope: !6705, file: !6705, line: 30, type: !6736, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6740)
!6736 = !DISubroutineType(types: !6737)
!6737 = !{!78, !6738}
!6738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6739, size: 64)
!6739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!6740 = !{!6741}
!6741 = !DILocalVariable(name: "v", arg: 1, scope: !6735, file: !6705, line: 30, type: !6738)
!6742 = !DILocation(line: 30, column: 29, scope: !6735)
!6743 = !DILocation(line: 32, column: 25, scope: !6735)
!6744 = !DILocation(line: 32, column: 2, scope: !6735)
!6745 = !DILocation(line: 33, column: 25, scope: !6735)
!6746 = !DILocation(line: 33, column: 9, scope: !6735)
!6747 = !DILocation(line: 33, column: 2, scope: !6735)
!6748 = distinct !DISubprogram(name: "ERR_PTR", scope: !6696, file: !6696, line: 39, type: !6749, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6751)
!6749 = !DISubroutineType(types: !6750)
!6750 = !{!76, !301}
!6751 = !{!6752}
!6752 = !DILocalVariable(name: "error", arg: 1, scope: !6748, file: !6696, line: 39, type: !301)
!6753 = !DILocation(line: 39, column: 48, scope: !6748)
!6754 = !DILocation(line: 41, column: 18, scope: !6748)
!6755 = !DILocation(line: 41, column: 9, scope: !6748)
!6756 = !DILocation(line: 41, column: 2, scope: !6748)
!6757 = distinct !DISubprogram(name: "gss_krb5_lookup_enctype", scope: !3, file: !3, line: 255, type: !6758, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6760)
!6758 = !DISubroutineType(types: !6759)
!6759 = !{!5774, !409}
!6760 = !{!6761, !6762}
!6761 = !DILocalVariable(name: "etype", arg: 1, scope: !6757, file: !3, line: 255, type: !409)
!6762 = !DILocalVariable(name: "i", scope: !6757, file: !3, line: 257, type: !91)
!6763 = !DILocation(line: 255, column: 60, scope: !6757)
!6764 = !DILocation(line: 257, column: 2, scope: !6757)
!6765 = !DILocation(line: 257, column: 9, scope: !6757)
!6766 = !DILocation(line: 259, column: 9, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6757, file: !3, line: 259, column: 2)
!6768 = !DILocation(line: 259, column: 7, scope: !6767)
!6769 = !DILocation(line: 259, column: 14, scope: !6770)
!6770 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 259, column: 2)
!6771 = !DILocation(line: 259, column: 16, scope: !6770)
!6772 = !DILocation(line: 259, column: 2, scope: !6767)
!6773 = !DILocation(line: 260, column: 35, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6770, file: !3, line: 260, column: 7)
!6775 = !DILocation(line: 260, column: 7, scope: !6774)
!6776 = !DILocation(line: 260, column: 38, scope: !6774)
!6777 = !DILocation(line: 260, column: 47, scope: !6774)
!6778 = !DILocation(line: 260, column: 44, scope: !6774)
!6779 = !DILocation(line: 260, column: 7, scope: !6770)
!6780 = !DILocation(line: 261, column: 40, scope: !6774)
!6781 = !DILocation(line: 261, column: 12, scope: !6774)
!6782 = !DILocation(line: 261, column: 4, scope: !6774)
!6783 = !DILocation(line: 259, column: 60, scope: !6770)
!6784 = !DILocation(line: 259, column: 2, scope: !6770)
!6785 = distinct !{!6785, !6772, !6786, !6787, !6788}
!6786 = !DILocation(line: 261, column: 41, scope: !6767)
!6787 = !{!"llvm.loop.mustprogress"}
!6788 = !{!"llvm.loop.unroll.disable"}
!6789 = !DILocation(line: 262, column: 2, scope: !6757)
!6790 = !DILocation(line: 263, column: 1, scope: !6757)
!6791 = !DISubprogram(name: "kmemdup", scope: !6432, file: !6432, line: 219, type: !6792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6792 = !DISubroutineType(types: !6793)
!6793 = !{!76, !1319, !91, !1467}
!6794 = distinct !DISubprogram(name: "gss_krb5_import_ctx_v2", scope: !3, file: !3, line: 297, type: !6795, scopeLine: 298, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6797)
!6795 = !DISubroutineType(types: !6796)
!6796 = !{!78, !5781, !1467}
!6797 = !{!6798, !6799, !6800, !6801, !6802, !6803, !6804}
!6798 = !DILocalVariable(name: "ctx", arg: 1, scope: !6794, file: !3, line: 297, type: !5781)
!6799 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6794, file: !3, line: 297, type: !1467)
!6800 = !DILocalVariable(name: "keyin", scope: !6794, file: !3, line: 299, type: !5424)
!6801 = !DILocalVariable(name: "keyout", scope: !6794, file: !3, line: 303, type: !5424)
!6802 = !DILocalVariable(name: "ret", scope: !6794, file: !3, line: 304, type: !78)
!6803 = !DILabel(scope: !6794, name: "out", file: !3, line: 378)
!6804 = !DILabel(scope: !6794, name: "out_free", file: !3, line: 382)
!6805 = !DILocation(line: 297, column: 41, scope: !6794)
!6806 = !DILocation(line: 297, column: 52, scope: !6794)
!6807 = !DILocation(line: 299, column: 2, scope: !6794)
!6808 = !DILocation(line: 299, column: 20, scope: !6794)
!6809 = !DILocation(line: 299, column: 28, scope: !6794)
!6810 = !DILocation(line: 300, column: 10, scope: !6794)
!6811 = !DILocation(line: 300, column: 15, scope: !6794)
!6812 = !DILocation(line: 300, column: 21, scope: !6794)
!6813 = !DILocation(line: 301, column: 11, scope: !6794)
!6814 = !DILocation(line: 301, column: 16, scope: !6794)
!6815 = !DILocation(line: 303, column: 2, scope: !6794)
!6816 = !DILocation(line: 303, column: 20, scope: !6794)
!6817 = !DILocation(line: 304, column: 2, scope: !6794)
!6818 = !DILocation(line: 304, column: 6, scope: !6794)
!6819 = !DILocation(line: 306, column: 45, scope: !6794)
!6820 = !DILocation(line: 306, column: 16, scope: !6794)
!6821 = !DILocation(line: 306, column: 9, scope: !6794)
!6822 = !DILocation(line: 306, column: 14, scope: !6794)
!6823 = !DILocation(line: 307, column: 14, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 307, column: 6)
!6825 = !DILocation(line: 307, column: 7, scope: !6824)
!6826 = !DILocation(line: 307, column: 6, scope: !6794)
!6827 = !DILocation(line: 308, column: 3, scope: !6824)
!6828 = !DILocation(line: 311, column: 15, scope: !6794)
!6829 = !DILocation(line: 311, column: 20, scope: !6794)
!6830 = !DILocation(line: 311, column: 26, scope: !6794)
!6831 = !DILocation(line: 311, column: 9, scope: !6794)
!6832 = !DILocation(line: 311, column: 13, scope: !6794)
!6833 = !DILocation(line: 312, column: 22, scope: !6834)
!6834 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 312, column: 6)
!6835 = !DILocation(line: 313, column: 35, scope: !6834)
!6836 = !DILocation(line: 312, column: 6, scope: !6834)
!6837 = !DILocation(line: 312, column: 6, scope: !6794)
!6838 = !DILocation(line: 314, column: 3, scope: !6834)
!6839 = !DILocation(line: 315, column: 48, scope: !6794)
!6840 = !DILocation(line: 315, column: 53, scope: !6794)
!6841 = !DILocation(line: 315, column: 59, scope: !6794)
!6842 = !DILocation(line: 315, column: 23, scope: !6794)
!6843 = !DILocation(line: 315, column: 2, scope: !6794)
!6844 = !DILocation(line: 315, column: 7, scope: !6794)
!6845 = !DILocation(line: 315, column: 21, scope: !6794)
!6846 = !DILocation(line: 317, column: 6, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 317, column: 6)
!6848 = !DILocation(line: 317, column: 11, scope: !6847)
!6849 = !DILocation(line: 317, column: 25, scope: !6847)
!6850 = !DILocation(line: 317, column: 6, scope: !6794)
!6851 = !DILocation(line: 318, column: 3, scope: !6847)
!6852 = !DILocation(line: 319, column: 6, scope: !6853)
!6853 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 319, column: 6)
!6854 = !DILocation(line: 319, column: 11, scope: !6853)
!6855 = !DILocation(line: 319, column: 17, scope: !6853)
!6856 = !DILocation(line: 319, column: 6, scope: !6794)
!6857 = !DILocation(line: 321, column: 29, scope: !6858)
!6858 = distinct !DILexicalBlock(scope: !6853, file: !3, line: 319, column: 29)
!6859 = !DILocation(line: 321, column: 34, scope: !6858)
!6860 = !DILocation(line: 321, column: 40, scope: !6858)
!6861 = !DILocation(line: 321, column: 4, scope: !6858)
!6862 = !DILocation(line: 320, column: 3, scope: !6858)
!6863 = !DILocation(line: 320, column: 8, scope: !6858)
!6864 = !DILocation(line: 320, column: 26, scope: !6858)
!6865 = !DILocation(line: 323, column: 7, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6858, file: !3, line: 323, column: 7)
!6867 = !DILocation(line: 323, column: 12, scope: !6866)
!6868 = !DILocation(line: 323, column: 30, scope: !6866)
!6869 = !DILocation(line: 323, column: 7, scope: !6858)
!6870 = !DILocation(line: 324, column: 4, scope: !6866)
!6871 = !DILocation(line: 325, column: 2, scope: !6858)
!6872 = !DILocation(line: 328, column: 22, scope: !6873)
!6873 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 328, column: 6)
!6874 = !DILocation(line: 329, column: 35, scope: !6873)
!6875 = !DILocation(line: 328, column: 6, scope: !6873)
!6876 = !DILocation(line: 328, column: 6, scope: !6794)
!6877 = !DILocation(line: 330, column: 3, scope: !6873)
!6878 = !DILocation(line: 331, column: 47, scope: !6794)
!6879 = !DILocation(line: 331, column: 52, scope: !6794)
!6880 = !DILocation(line: 331, column: 58, scope: !6794)
!6881 = !DILocation(line: 331, column: 22, scope: !6794)
!6882 = !DILocation(line: 331, column: 2, scope: !6794)
!6883 = !DILocation(line: 331, column: 7, scope: !6794)
!6884 = !DILocation(line: 331, column: 20, scope: !6794)
!6885 = !DILocation(line: 333, column: 6, scope: !6886)
!6886 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 333, column: 6)
!6887 = !DILocation(line: 333, column: 11, scope: !6886)
!6888 = !DILocation(line: 333, column: 24, scope: !6886)
!6889 = !DILocation(line: 333, column: 6, scope: !6794)
!6890 = !DILocation(line: 334, column: 3, scope: !6886)
!6891 = !DILocation(line: 335, column: 6, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 335, column: 6)
!6893 = !DILocation(line: 335, column: 11, scope: !6892)
!6894 = !DILocation(line: 335, column: 17, scope: !6892)
!6895 = !DILocation(line: 335, column: 6, scope: !6794)
!6896 = !DILocation(line: 337, column: 29, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6892, file: !3, line: 335, column: 29)
!6898 = !DILocation(line: 337, column: 34, scope: !6897)
!6899 = !DILocation(line: 337, column: 40, scope: !6897)
!6900 = !DILocation(line: 337, column: 4, scope: !6897)
!6901 = !DILocation(line: 336, column: 3, scope: !6897)
!6902 = !DILocation(line: 336, column: 8, scope: !6897)
!6903 = !DILocation(line: 336, column: 25, scope: !6897)
!6904 = !DILocation(line: 339, column: 7, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6897, file: !3, line: 339, column: 7)
!6906 = !DILocation(line: 339, column: 12, scope: !6905)
!6907 = !DILocation(line: 339, column: 29, scope: !6905)
!6908 = !DILocation(line: 339, column: 7, scope: !6897)
!6909 = !DILocation(line: 340, column: 4, scope: !6905)
!6910 = !DILocation(line: 341, column: 2, scope: !6897)
!6911 = !DILocation(line: 344, column: 15, scope: !6794)
!6912 = !DILocation(line: 344, column: 20, scope: !6794)
!6913 = !DILocation(line: 344, column: 26, scope: !6794)
!6914 = !DILocation(line: 344, column: 9, scope: !6794)
!6915 = !DILocation(line: 344, column: 13, scope: !6794)
!6916 = !DILocation(line: 345, column: 22, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 345, column: 6)
!6918 = !DILocation(line: 346, column: 33, scope: !6917)
!6919 = !DILocation(line: 345, column: 6, scope: !6917)
!6920 = !DILocation(line: 345, column: 6, scope: !6794)
!6921 = !DILocation(line: 347, column: 3, scope: !6917)
!6922 = !DILocation(line: 348, column: 47, scope: !6794)
!6923 = !DILocation(line: 348, column: 24, scope: !6794)
!6924 = !DILocation(line: 348, column: 2, scope: !6794)
!6925 = !DILocation(line: 348, column: 7, scope: !6794)
!6926 = !DILocation(line: 348, column: 22, scope: !6794)
!6927 = !DILocation(line: 349, column: 6, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 349, column: 6)
!6929 = !DILocation(line: 349, column: 11, scope: !6928)
!6930 = !DILocation(line: 349, column: 26, scope: !6928)
!6931 = !DILocation(line: 349, column: 6, scope: !6794)
!6932 = !DILocation(line: 350, column: 3, scope: !6928)
!6933 = !DILocation(line: 353, column: 22, scope: !6934)
!6934 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 353, column: 6)
!6935 = !DILocation(line: 354, column: 33, scope: !6934)
!6936 = !DILocation(line: 353, column: 6, scope: !6934)
!6937 = !DILocation(line: 353, column: 6, scope: !6794)
!6938 = !DILocation(line: 355, column: 3, scope: !6934)
!6939 = !DILocation(line: 356, column: 46, scope: !6794)
!6940 = !DILocation(line: 356, column: 23, scope: !6794)
!6941 = !DILocation(line: 356, column: 2, scope: !6794)
!6942 = !DILocation(line: 356, column: 7, scope: !6794)
!6943 = !DILocation(line: 356, column: 21, scope: !6794)
!6944 = !DILocation(line: 357, column: 6, scope: !6945)
!6945 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 357, column: 6)
!6946 = !DILocation(line: 357, column: 11, scope: !6945)
!6947 = !DILocation(line: 357, column: 25, scope: !6945)
!6948 = !DILocation(line: 357, column: 6, scope: !6794)
!6949 = !DILocation(line: 358, column: 3, scope: !6945)
!6950 = !DILocation(line: 361, column: 15, scope: !6794)
!6951 = !DILocation(line: 361, column: 20, scope: !6794)
!6952 = !DILocation(line: 361, column: 26, scope: !6794)
!6953 = !DILocation(line: 361, column: 9, scope: !6794)
!6954 = !DILocation(line: 361, column: 13, scope: !6794)
!6955 = !DILocation(line: 362, column: 22, scope: !6956)
!6956 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 362, column: 6)
!6957 = !DILocation(line: 363, column: 34, scope: !6956)
!6958 = !DILocation(line: 362, column: 6, scope: !6956)
!6959 = !DILocation(line: 362, column: 6, scope: !6794)
!6960 = !DILocation(line: 364, column: 3, scope: !6956)
!6961 = !DILocation(line: 365, column: 48, scope: !6794)
!6962 = !DILocation(line: 365, column: 25, scope: !6794)
!6963 = !DILocation(line: 365, column: 2, scope: !6794)
!6964 = !DILocation(line: 365, column: 7, scope: !6794)
!6965 = !DILocation(line: 365, column: 23, scope: !6794)
!6966 = !DILocation(line: 366, column: 6, scope: !6967)
!6967 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 366, column: 6)
!6968 = !DILocation(line: 366, column: 11, scope: !6967)
!6969 = !DILocation(line: 366, column: 27, scope: !6967)
!6970 = !DILocation(line: 366, column: 6, scope: !6794)
!6971 = !DILocation(line: 367, column: 3, scope: !6967)
!6972 = !DILocation(line: 370, column: 22, scope: !6973)
!6973 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 370, column: 6)
!6974 = !DILocation(line: 371, column: 34, scope: !6973)
!6975 = !DILocation(line: 370, column: 6, scope: !6973)
!6976 = !DILocation(line: 370, column: 6, scope: !6794)
!6977 = !DILocation(line: 372, column: 3, scope: !6973)
!6978 = !DILocation(line: 373, column: 47, scope: !6794)
!6979 = !DILocation(line: 373, column: 24, scope: !6794)
!6980 = !DILocation(line: 373, column: 2, scope: !6794)
!6981 = !DILocation(line: 373, column: 7, scope: !6794)
!6982 = !DILocation(line: 373, column: 22, scope: !6794)
!6983 = !DILocation(line: 374, column: 6, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6794, file: !3, line: 374, column: 6)
!6985 = !DILocation(line: 374, column: 11, scope: !6984)
!6986 = !DILocation(line: 374, column: 26, scope: !6984)
!6987 = !DILocation(line: 374, column: 6, scope: !6794)
!6988 = !DILocation(line: 375, column: 3, scope: !6984)
!6989 = !DILocation(line: 377, column: 6, scope: !6794)
!6990 = !DILocation(line: 377, column: 2, scope: !6794)
!6991 = !DILocation(line: 378, column: 1, scope: !6794)
!6992 = !DILocation(line: 379, column: 25, scope: !6794)
!6993 = !DILocation(line: 379, column: 2, scope: !6794)
!6994 = !DILocation(line: 380, column: 9, scope: !6794)
!6995 = !DILocation(line: 380, column: 2, scope: !6794)
!6996 = !DILocation(line: 382, column: 1, scope: !6794)
!6997 = !DILocation(line: 383, column: 20, scope: !6794)
!6998 = !DILocation(line: 383, column: 25, scope: !6794)
!6999 = !DILocation(line: 383, column: 2, scope: !6794)
!7000 = !DILocation(line: 384, column: 20, scope: !6794)
!7001 = !DILocation(line: 384, column: 25, scope: !6794)
!7002 = !DILocation(line: 384, column: 2, scope: !6794)
!7003 = !DILocation(line: 385, column: 20, scope: !6794)
!7004 = !DILocation(line: 385, column: 25, scope: !6794)
!7005 = !DILocation(line: 385, column: 2, scope: !6794)
!7006 = !DILocation(line: 386, column: 20, scope: !6794)
!7007 = !DILocation(line: 386, column: 25, scope: !6794)
!7008 = !DILocation(line: 386, column: 2, scope: !6794)
!7009 = !DILocation(line: 387, column: 28, scope: !6794)
!7010 = !DILocation(line: 387, column: 33, scope: !6794)
!7011 = !DILocation(line: 387, column: 2, scope: !6794)
!7012 = !DILocation(line: 388, column: 28, scope: !6794)
!7013 = !DILocation(line: 388, column: 33, scope: !6794)
!7014 = !DILocation(line: 388, column: 2, scope: !6794)
!7015 = !DILocation(line: 389, column: 28, scope: !6794)
!7016 = !DILocation(line: 389, column: 33, scope: !6794)
!7017 = !DILocation(line: 389, column: 2, scope: !6794)
!7018 = !DILocation(line: 390, column: 28, scope: !6794)
!7019 = !DILocation(line: 390, column: 33, scope: !6794)
!7020 = !DILocation(line: 390, column: 2, scope: !6794)
!7021 = !DILocation(line: 391, column: 2, scope: !6794)
!7022 = !DILocation(line: 392, column: 1, scope: !6794)
!7023 = distinct !DISubprogram(name: "PTR_ERR", scope: !6696, file: !6696, line: 49, type: !7024, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7026)
!7024 = !DISubroutineType(types: !7025)
!7025 = !{!301, !1319}
!7026 = !{!7027}
!7027 = !DILocalVariable(name: "ptr", arg: 1, scope: !7023, file: !6696, line: 49, type: !1319)
!7028 = !DILocation(line: 49, column: 61, scope: !7023)
!7029 = !DILocation(line: 51, column: 16, scope: !7023)
!7030 = !DILocation(line: 51, column: 9, scope: !7023)
!7031 = !DILocation(line: 51, column: 2, scope: !7023)
!7032 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !7033, file: !7033, line: 80, type: !7034, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7039)
!7033 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7034 = !DISubroutineType(types: !7035)
!7035 = !{null, !7036, !91}
!7036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7037, size: 64)
!7037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7038)
!7038 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7039 = !{!7040, !7041}
!7040 = !DILocalVariable(name: "v", arg: 1, scope: !7032, file: !7033, line: 80, type: !7036)
!7041 = !DILocalVariable(name: "size", arg: 2, scope: !7032, file: !7033, line: 80, type: !91)
!7042 = !DILocation(line: 80, column: 74, scope: !7032)
!7043 = !DILocation(line: 80, column: 84, scope: !7032)
!7044 = !DILocation(line: 82, column: 20, scope: !7032)
!7045 = !DILocation(line: 82, column: 23, scope: !7032)
!7046 = !DILocation(line: 82, column: 2, scope: !7032)
!7047 = !DILocation(line: 83, column: 2, scope: !7032)
!7048 = !DILocation(line: 84, column: 1, scope: !7032)
!7049 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !7050, file: !7050, line: 2600, type: !6706, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7051)
!7050 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7051 = !{!7052, !7053}
!7052 = !DILocalVariable(name: "v", arg: 1, scope: !7049, file: !7050, line: 2600, type: !6708)
!7053 = !DILocalVariable(name: "i", arg: 2, scope: !7049, file: !7050, line: 2600, type: !632)
!7054 = !DILocation(line: 2600, column: 30, scope: !7049)
!7055 = !DILocation(line: 2600, column: 37, scope: !7049)
!7056 = !DILocation(line: 2602, column: 20, scope: !7049)
!7057 = !DILocation(line: 2602, column: 23, scope: !7049)
!7058 = !DILocation(line: 2602, column: 2, scope: !7049)
!7059 = !DILocation(line: 2603, column: 1, scope: !7049)
!7060 = distinct !DISubprogram(name: "kasan_check_write", scope: !7061, file: !7061, line: 44, type: !7062, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7064)
!7061 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7062 = !DISubroutineType(types: !7063)
!7063 = !{!862, !7036, !7}
!7064 = !{!7065, !7066}
!7065 = !DILocalVariable(name: "p", arg: 1, scope: !7060, file: !7061, line: 44, type: !7036)
!7066 = !DILocalVariable(name: "size", arg: 2, scope: !7060, file: !7061, line: 44, type: !7)
!7067 = !DILocation(line: 44, column: 59, scope: !7060)
!7068 = !DILocation(line: 44, column: 75, scope: !7060)
!7069 = !DILocation(line: 46, column: 2, scope: !7060)
!7070 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7071, file: !7071, line: 229, type: !7072, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7074)
!7071 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7072 = !DISubroutineType(types: !7073)
!7073 = !{null, !7036, !91, !78}
!7074 = !{!7075, !7076, !7077}
!7075 = !DILocalVariable(name: "ptr", arg: 1, scope: !7070, file: !7071, line: 229, type: !7036)
!7076 = !DILocalVariable(name: "size", arg: 2, scope: !7070, file: !7071, line: 229, type: !91)
!7077 = !DILocalVariable(name: "type", arg: 3, scope: !7070, file: !7071, line: 230, type: !78)
!7078 = !DILocation(line: 229, column: 60, scope: !7070)
!7079 = !DILocation(line: 229, column: 72, scope: !7070)
!7080 = !DILocation(line: 230, column: 15, scope: !7070)
!7081 = !DILocation(line: 230, column: 23, scope: !7070)
!7082 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !7083, file: !7083, line: 18, type: !6706, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7084)
!7083 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!7084 = !{!7085, !7086}
!7085 = !DILocalVariable(name: "v", arg: 1, scope: !7082, file: !7083, line: 18, type: !6708)
!7086 = !DILocalVariable(name: "i", arg: 2, scope: !7082, file: !7083, line: 18, type: !632)
!7087 = !DILocation(line: 18, column: 59, scope: !7082)
!7088 = !DILocation(line: 18, column: 66, scope: !7082)
!7089 = !DILocation(line: 20, column: 2, scope: !7082)
!7090 = !DILocation(line: 20, column: 2, scope: !7091)
!7091 = distinct !DILexicalBlock(scope: !7082, file: !7083, line: 20, column: 2)
!7092 = !DILocation(line: 21, column: 1, scope: !7082)
!7093 = distinct !DISubprogram(name: "raw_atomic_set", scope: !7050, file: !7050, line: 488, type: !6721, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7094)
!7094 = !{!7095, !7096}
!7095 = !DILocalVariable(name: "v", arg: 1, scope: !7093, file: !7050, line: 488, type: !6723)
!7096 = !DILocalVariable(name: "i", arg: 2, scope: !7093, file: !7050, line: 488, type: !78)
!7097 = !DILocation(line: 488, column: 26, scope: !7093)
!7098 = !DILocation(line: 488, column: 33, scope: !7093)
!7099 = !DILocation(line: 490, column: 18, scope: !7093)
!7100 = !DILocation(line: 490, column: 21, scope: !7093)
!7101 = !DILocation(line: 490, column: 2, scope: !7093)
!7102 = !DILocation(line: 491, column: 1, scope: !7093)
!7103 = distinct !DISubprogram(name: "arch_atomic_set", scope: !7104, file: !7104, line: 26, type: !6721, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7105)
!7104 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7105 = !{!7106, !7107}
!7106 = !DILocalVariable(name: "v", arg: 1, scope: !7103, file: !7104, line: 26, type: !6723)
!7107 = !DILocalVariable(name: "i", arg: 2, scope: !7103, file: !7104, line: 26, type: !78)
!7108 = !DILocation(line: 26, column: 55, scope: !7103)
!7109 = !DILocation(line: 26, column: 62, scope: !7103)
!7110 = !DILocation(line: 28, column: 2, scope: !7103)
!7111 = !DILocation(line: 28, column: 2, scope: !7112)
!7112 = distinct !DILexicalBlock(scope: !7103, file: !7104, line: 28, column: 2)
!7113 = !DILocation(line: 29, column: 1, scope: !7103)
!7114 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7033, file: !7033, line: 66, type: !7034, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7115)
!7115 = !{!7116, !7117}
!7116 = !DILocalVariable(name: "v", arg: 1, scope: !7114, file: !7033, line: 66, type: !7036)
!7117 = !DILocalVariable(name: "size", arg: 2, scope: !7114, file: !7033, line: 66, type: !91)
!7118 = !DILocation(line: 66, column: 73, scope: !7114)
!7119 = !DILocation(line: 66, column: 83, scope: !7114)
!7120 = !DILocation(line: 68, column: 19, scope: !7114)
!7121 = !DILocation(line: 68, column: 22, scope: !7114)
!7122 = !DILocation(line: 68, column: 2, scope: !7114)
!7123 = !DILocation(line: 69, column: 2, scope: !7114)
!7124 = !DILocation(line: 70, column: 1, scope: !7114)
!7125 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7050, file: !7050, line: 442, type: !6736, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7126)
!7126 = !{!7127}
!7127 = !DILocalVariable(name: "v", arg: 1, scope: !7125, file: !7050, line: 442, type: !6738)
!7128 = !DILocation(line: 442, column: 33, scope: !7125)
!7129 = !DILocation(line: 444, column: 26, scope: !7125)
!7130 = !DILocation(line: 444, column: 9, scope: !7125)
!7131 = !DILocation(line: 444, column: 2, scope: !7125)
!7132 = distinct !DISubprogram(name: "kasan_check_read", scope: !7061, file: !7061, line: 40, type: !7062, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7133)
!7133 = !{!7134, !7135}
!7134 = !DILocalVariable(name: "p", arg: 1, scope: !7132, file: !7061, line: 40, type: !7036)
!7135 = !DILocalVariable(name: "size", arg: 2, scope: !7132, file: !7061, line: 40, type: !7)
!7136 = !DILocation(line: 40, column: 58, scope: !7132)
!7137 = !DILocation(line: 40, column: 74, scope: !7132)
!7138 = !DILocation(line: 42, column: 2, scope: !7132)
!7139 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7104, file: !7104, line: 17, type: !6736, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7140)
!7140 = !{!7141}
!7141 = !DILocalVariable(name: "v", arg: 1, scope: !7139, file: !7104, line: 17, type: !6738)
!7142 = !DILocation(line: 17, column: 61, scope: !7139)
!7143 = !DILocation(line: 23, column: 9, scope: !7139)
!7144 = !DILocation(line: 23, column: 2, scope: !7139)
!7145 = distinct !DISubprogram(name: "krb5_derive_key", scope: !5752, file: !5752, line: 138, type: !7146, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7148)
!7146 = !DISubroutineType(types: !7147)
!7147 = !{!78, !5781, !5775, !5423, !409, !139, !1467}
!7148 = !{!7149, !7150, !7151, !7152, !7153, !7154, !7155, !7156, !7158, !7159}
!7149 = !DILocalVariable(name: "kctx", arg: 1, scope: !7145, file: !5752, line: 138, type: !5781)
!7150 = !DILocalVariable(name: "inkey", arg: 2, scope: !7145, file: !5752, line: 139, type: !5775)
!7151 = !DILocalVariable(name: "outkey", arg: 3, scope: !7145, file: !5752, line: 140, type: !5423)
!7152 = !DILocalVariable(name: "usage", arg: 4, scope: !7145, file: !5752, line: 141, type: !409)
!7153 = !DILocalVariable(name: "seed", arg: 5, scope: !7145, file: !5752, line: 141, type: !139)
!7154 = !DILocalVariable(name: "gfp_mask", arg: 6, scope: !7145, file: !5752, line: 141, type: !1467)
!7155 = !DILocalVariable(name: "gk5e", scope: !7145, file: !5752, line: 143, type: !5774)
!7156 = !DILocalVariable(name: "label_data", scope: !7145, file: !5752, line: 144, type: !7157)
!7157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 40, elements: !3484)
!7158 = !DILocalVariable(name: "label", scope: !7145, file: !5752, line: 145, type: !5424)
!7159 = !DILocalVariable(name: "p", scope: !7145, file: !5752, line: 149, type: !5332)
!7160 = !DILocation(line: 138, column: 52, scope: !7145)
!7161 = !DILocation(line: 139, column: 32, scope: !7145)
!7162 = !DILocation(line: 140, column: 26, scope: !7145)
!7163 = !DILocation(line: 141, column: 11, scope: !7145)
!7164 = !DILocation(line: 141, column: 21, scope: !7145)
!7165 = !DILocation(line: 141, column: 33, scope: !7145)
!7166 = !DILocation(line: 143, column: 2, scope: !7145)
!7167 = !DILocation(line: 143, column: 33, scope: !7145)
!7168 = !DILocation(line: 143, column: 40, scope: !7145)
!7169 = !DILocation(line: 143, column: 46, scope: !7145)
!7170 = !DILocation(line: 144, column: 2, scope: !7145)
!7171 = !DILocation(line: 144, column: 5, scope: !7145)
!7172 = !DILocation(line: 145, column: 2, scope: !7145)
!7173 = !DILocation(line: 145, column: 20, scope: !7145)
!7174 = !DILocation(line: 145, column: 28, scope: !7145)
!7175 = !DILocation(line: 147, column: 11, scope: !7145)
!7176 = !DILocation(line: 149, column: 2, scope: !7145)
!7177 = !DILocation(line: 149, column: 10, scope: !7145)
!7178 = !DILocation(line: 149, column: 24, scope: !7145)
!7179 = !DILocation(line: 151, column: 7, scope: !7145)
!7180 = !DILocation(line: 151, column: 3, scope: !7145)
!7181 = !DILocation(line: 151, column: 5, scope: !7145)
!7182 = !DILocation(line: 152, column: 18, scope: !7145)
!7183 = !DILocation(line: 152, column: 2, scope: !7145)
!7184 = !DILocation(line: 152, column: 16, scope: !7145)
!7185 = !DILocation(line: 153, column: 9, scope: !7145)
!7186 = !DILocation(line: 153, column: 15, scope: !7145)
!7187 = !DILocation(line: 153, column: 26, scope: !7145)
!7188 = !DILocation(line: 153, column: 32, scope: !7145)
!7189 = !DILocation(line: 153, column: 39, scope: !7145)
!7190 = !DILocation(line: 153, column: 55, scope: !7145)
!7191 = !DILocation(line: 154, column: 1, scope: !7145)
!7192 = !DILocation(line: 153, column: 2, scope: !7145)
!7193 = distinct !DISubprogram(name: "gss_krb5_alloc_cipher_v2", scope: !3, file: !3, line: 267, type: !7194, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7196)
!7194 = !DISubroutineType(types: !7195)
!7195 = !{!5789, !72, !5775}
!7196 = !{!7197, !7198, !7199}
!7197 = !DILocalVariable(name: "cname", arg: 1, scope: !7193, file: !3, line: 267, type: !72)
!7198 = !DILocalVariable(name: "key", arg: 2, scope: !7193, file: !3, line: 267, type: !5775)
!7199 = !DILocalVariable(name: "tfm", scope: !7193, file: !3, line: 269, type: !5789)
!7200 = !DILocation(line: 267, column: 38, scope: !7193)
!7201 = !DILocation(line: 267, column: 70, scope: !7193)
!7202 = !DILocation(line: 269, column: 2, scope: !7193)
!7203 = !DILocation(line: 269, column: 31, scope: !7193)
!7204 = !DILocation(line: 271, column: 35, scope: !7193)
!7205 = !DILocation(line: 271, column: 8, scope: !7193)
!7206 = !DILocation(line: 271, column: 6, scope: !7193)
!7207 = !DILocation(line: 272, column: 13, scope: !7208)
!7208 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 272, column: 6)
!7209 = !DILocation(line: 272, column: 6, scope: !7208)
!7210 = !DILocation(line: 272, column: 6, scope: !7193)
!7211 = !DILocation(line: 273, column: 3, scope: !7208)
!7212 = !DILocation(line: 274, column: 34, scope: !7213)
!7213 = distinct !DILexicalBlock(scope: !7193, file: !3, line: 274, column: 6)
!7214 = !DILocation(line: 274, column: 39, scope: !7213)
!7215 = !DILocation(line: 274, column: 44, scope: !7213)
!7216 = !DILocation(line: 274, column: 50, scope: !7213)
!7217 = !DILocation(line: 274, column: 55, scope: !7213)
!7218 = !DILocation(line: 274, column: 6, scope: !7213)
!7219 = !DILocation(line: 274, column: 6, scope: !7193)
!7220 = !DILocation(line: 275, column: 29, scope: !7221)
!7221 = distinct !DILexicalBlock(scope: !7213, file: !3, line: 274, column: 61)
!7222 = !DILocation(line: 275, column: 3, scope: !7221)
!7223 = !DILocation(line: 276, column: 3, scope: !7221)
!7224 = !DILocation(line: 278, column: 9, scope: !7193)
!7225 = !DILocation(line: 278, column: 2, scope: !7193)
!7226 = !DILocation(line: 279, column: 1, scope: !7193)
!7227 = distinct !DISubprogram(name: "gss_krb5_alloc_hash_v2", scope: !3, file: !3, line: 282, type: !7228, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7230)
!7228 = !DISubroutineType(types: !7229)
!7229 = !{!5875, !5781, !5775}
!7230 = !{!7231, !7232, !7233}
!7231 = !DILocalVariable(name: "kctx", arg: 1, scope: !7227, file: !3, line: 282, type: !5781)
!7232 = !DILocalVariable(name: "key", arg: 2, scope: !7227, file: !3, line: 282, type: !5775)
!7233 = !DILocalVariable(name: "tfm", scope: !7227, file: !3, line: 284, type: !5875)
!7234 = !DILocation(line: 282, column: 41, scope: !7227)
!7235 = !DILocation(line: 282, column: 72, scope: !7227)
!7236 = !DILocation(line: 284, column: 2, scope: !7227)
!7237 = !DILocation(line: 284, column: 23, scope: !7227)
!7238 = !DILocation(line: 286, column: 27, scope: !7227)
!7239 = !DILocation(line: 286, column: 33, scope: !7227)
!7240 = !DILocation(line: 286, column: 39, scope: !7227)
!7241 = !DILocation(line: 286, column: 8, scope: !7227)
!7242 = !DILocation(line: 286, column: 6, scope: !7227)
!7243 = !DILocation(line: 287, column: 13, scope: !7244)
!7244 = distinct !DILexicalBlock(scope: !7227, file: !3, line: 287, column: 6)
!7245 = !DILocation(line: 287, column: 6, scope: !7244)
!7246 = !DILocation(line: 287, column: 6, scope: !7227)
!7247 = !DILocation(line: 288, column: 3, scope: !7244)
!7248 = !DILocation(line: 289, column: 26, scope: !7249)
!7249 = distinct !DILexicalBlock(scope: !7227, file: !3, line: 289, column: 6)
!7250 = !DILocation(line: 289, column: 31, scope: !7249)
!7251 = !DILocation(line: 289, column: 36, scope: !7249)
!7252 = !DILocation(line: 289, column: 42, scope: !7249)
!7253 = !DILocation(line: 289, column: 47, scope: !7249)
!7254 = !DILocation(line: 289, column: 6, scope: !7249)
!7255 = !DILocation(line: 289, column: 6, scope: !7227)
!7256 = !DILocation(line: 290, column: 21, scope: !7257)
!7257 = distinct !DILexicalBlock(scope: !7249, file: !3, line: 289, column: 53)
!7258 = !DILocation(line: 290, column: 3, scope: !7257)
!7259 = !DILocation(line: 291, column: 3, scope: !7257)
!7260 = !DILocation(line: 293, column: 9, scope: !7227)
!7261 = !DILocation(line: 293, column: 2, scope: !7227)
!7262 = !DILocation(line: 294, column: 1, scope: !7227)
!7263 = !DISubprogram(name: "kfree_sensitive", scope: !202, file: !202, line: 228, type: !6447, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7264 = distinct !DISubprogram(name: "crypto_free_ahash", scope: !5877, file: !5877, line: 318, type: !7265, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7267)
!7265 = !DISubroutineType(types: !7266)
!7266 = !{null, !5875}
!7267 = !{!7268}
!7268 = !DILocalVariable(name: "tfm", arg: 1, scope: !7264, file: !5877, line: 318, type: !5875)
!7269 = !DILocation(line: 318, column: 59, scope: !7264)
!7270 = !DILocation(line: 320, column: 21, scope: !7264)
!7271 = !DILocation(line: 320, column: 43, scope: !7264)
!7272 = !DILocation(line: 320, column: 26, scope: !7264)
!7273 = !DILocation(line: 320, column: 2, scope: !7264)
!7274 = !DILocation(line: 321, column: 1, scope: !7264)
!7275 = distinct !DISubprogram(name: "crypto_free_sync_skcipher", scope: !5791, file: !5791, line: 233, type: !7276, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7278)
!7276 = !DISubroutineType(types: !7277)
!7277 = !{null, !5789}
!7278 = !{!7279}
!7279 = !DILocalVariable(name: "tfm", arg: 1, scope: !7275, file: !5791, line: 233, type: !5789)
!7280 = !DILocation(line: 233, column: 75, scope: !7275)
!7281 = !DILocation(line: 235, column: 24, scope: !7275)
!7282 = !DILocation(line: 235, column: 29, scope: !7275)
!7283 = !DILocation(line: 235, column: 2, scope: !7275)
!7284 = !DILocation(line: 236, column: 1, scope: !7275)
!7285 = !DISubprogram(name: "crypto_alloc_sync_skcipher", scope: !5791, file: !5791, line: 213, type: !7286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7286 = !DISubroutineType(types: !7287)
!7287 = !{!5789, !72, !409, !409}
!7288 = distinct !DISubprogram(name: "crypto_sync_skcipher_setkey", scope: !5791, file: !5791, line: 393, type: !7289, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7291)
!7289 = !DISubroutineType(types: !7290)
!7290 = !{!78, !5789, !5842, !7}
!7291 = !{!7292, !7293, !7294}
!7292 = !DILocalVariable(name: "tfm", arg: 1, scope: !7288, file: !5791, line: 393, type: !5789)
!7293 = !DILocalVariable(name: "key", arg: 2, scope: !7288, file: !5791, line: 394, type: !5842)
!7294 = !DILocalVariable(name: "keylen", arg: 3, scope: !7288, file: !5791, line: 394, type: !7)
!7295 = !DILocation(line: 393, column: 76, scope: !7288)
!7296 = !DILocation(line: 394, column: 17, scope: !7288)
!7297 = !DILocation(line: 394, column: 35, scope: !7288)
!7298 = !DILocation(line: 396, column: 33, scope: !7288)
!7299 = !DILocation(line: 396, column: 38, scope: !7288)
!7300 = !DILocation(line: 396, column: 44, scope: !7288)
!7301 = !DILocation(line: 396, column: 49, scope: !7288)
!7302 = !DILocation(line: 396, column: 9, scope: !7288)
!7303 = !DILocation(line: 396, column: 2, scope: !7288)
!7304 = !DISubprogram(name: "crypto_skcipher_setkey", scope: !5791, file: !5791, line: 390, type: !7305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7305 = !DISubroutineType(types: !7306)
!7306 = !{!78, !7307, !5842, !7}
!7307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5794, size: 64)
!7308 = !DISubprogram(name: "crypto_alloc_ahash", scope: !5877, file: !5877, line: 302, type: !7309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7309 = !DISubroutineType(types: !7310)
!7310 = !{!5875, !72, !409, !409}
!7311 = !DISubprogram(name: "crypto_ahash_setkey", scope: !5877, file: !5877, line: 465, type: !5928, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7312 = !DISubprogram(name: "crypto_destroy_tfm", scope: !5799, file: !5799, line: 445, type: !7313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7313 = !DISubroutineType(types: !7314)
!7314 = !{null, !76, !5808}
!7315 = distinct !DISubprogram(name: "crypto_ahash_tfm", scope: !5877, file: !5877, line: 307, type: !7316, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7318)
!7316 = !DISubroutineType(types: !7317)
!7317 = !{!5808, !5875}
!7318 = !{!7319}
!7319 = !DILocalVariable(name: "tfm", arg: 1, scope: !7315, file: !5877, line: 307, type: !5875)
!7320 = !DILocation(line: 307, column: 72, scope: !7315)
!7321 = !DILocation(line: 309, column: 10, scope: !7315)
!7322 = !DILocation(line: 309, column: 15, scope: !7315)
!7323 = !DILocation(line: 309, column: 2, scope: !7315)
!7324 = distinct !DISubprogram(name: "crypto_free_skcipher", scope: !5791, file: !5791, line: 228, type: !7325, scopeLine: 229, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7327)
!7325 = !DISubroutineType(types: !7326)
!7326 = !{null, !7307}
!7327 = !{!7328}
!7328 = !DILocalVariable(name: "tfm", arg: 1, scope: !7324, file: !5791, line: 228, type: !7307)
!7329 = !DILocation(line: 228, column: 65, scope: !7324)
!7330 = !DILocation(line: 230, column: 21, scope: !7324)
!7331 = !DILocation(line: 230, column: 46, scope: !7324)
!7332 = !DILocation(line: 230, column: 26, scope: !7324)
!7333 = !DILocation(line: 230, column: 2, scope: !7324)
!7334 = !DILocation(line: 231, column: 1, scope: !7324)
!7335 = distinct !DISubprogram(name: "crypto_skcipher_tfm", scope: !5791, file: !5791, line: 216, type: !7336, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7338)
!7336 = !DISubroutineType(types: !7337)
!7337 = !{!5808, !7307}
!7338 = !{!7339}
!7339 = !DILocalVariable(name: "tfm", arg: 1, scope: !7335, file: !5791, line: 217, type: !7307)
!7340 = !DILocation(line: 217, column: 26, scope: !7335)
!7341 = !DILocation(line: 219, column: 10, scope: !7335)
!7342 = !DILocation(line: 219, column: 15, scope: !7335)
!7343 = !DILocation(line: 219, column: 2, scope: !7335)
!7344 = !DILocation(line: 228, column: 2, scope: !5976)
!7345 = !DILocation(line: 228, column: 9, scope: !5976)
!7346 = !DILocation(line: 228, column: 16, scope: !5976)
!7347 = !DILocation(line: 229, column: 2, scope: !5976)
!7348 = !DILocation(line: 229, column: 7, scope: !5976)
!7349 = !DILocation(line: 230, column: 2, scope: !5976)
!7350 = !DILocation(line: 230, column: 8, scope: !5976)
!7351 = !DILocation(line: 231, column: 2, scope: !5976)
!7352 = !DILocation(line: 231, column: 6, scope: !5976)
!7353 = !DILocation(line: 233, column: 6, scope: !5976)
!7354 = !DILocation(line: 234, column: 36, scope: !5976)
!7355 = !DILocation(line: 235, column: 13, scope: !7356)
!7356 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 235, column: 2)
!7357 = !DILocation(line: 235, column: 20, scope: !7356)
!7358 = !DILocation(line: 235, column: 7, scope: !7356)
!7359 = !DILocation(line: 235, column: 25, scope: !7360)
!7360 = distinct !DILexicalBlock(scope: !7356, file: !3, line: 235, column: 2)
!7361 = !DILocation(line: 235, column: 27, scope: !7360)
!7362 = !DILocation(line: 235, column: 2, scope: !7356)
!7363 = !DILocation(line: 236, column: 15, scope: !7364)
!7364 = distinct !DILexicalBlock(scope: !7360, file: !3, line: 235, column: 65)
!7365 = !DILocation(line: 236, column: 28, scope: !7364)
!7366 = !DILocation(line: 236, column: 51, scope: !7364)
!7367 = !DILocation(line: 236, column: 33, scope: !7364)
!7368 = !DILocation(line: 236, column: 7, scope: !7364)
!7369 = !DILocation(line: 236, column: 5, scope: !7364)
!7370 = !DILocation(line: 237, column: 7, scope: !7371)
!7371 = distinct !DILexicalBlock(scope: !7364, file: !3, line: 237, column: 7)
!7372 = !DILocation(line: 237, column: 9, scope: !7371)
!7373 = !DILocation(line: 237, column: 7, scope: !7364)
!7374 = !DILocation(line: 238, column: 4, scope: !7371)
!7375 = !DILocation(line: 239, column: 7, scope: !7376)
!7376 = distinct !DILexicalBlock(scope: !7364, file: !3, line: 239, column: 7)
!7377 = !DILocation(line: 239, column: 15, scope: !7376)
!7378 = !DILocation(line: 239, column: 13, scope: !7376)
!7379 = !DILocation(line: 239, column: 17, scope: !7376)
!7380 = !DILocation(line: 239, column: 7, scope: !7364)
!7381 = !DILocation(line: 240, column: 4, scope: !7376)
!7382 = !DILocation(line: 241, column: 42, scope: !7364)
!7383 = !DILocation(line: 241, column: 3, scope: !7364)
!7384 = !DILocation(line: 242, column: 7, scope: !7364)
!7385 = !DILocation(line: 243, column: 12, scope: !7364)
!7386 = !DILocation(line: 243, column: 9, scope: !7364)
!7387 = !DILocation(line: 244, column: 2, scope: !7364)
!7388 = !DILocation(line: 235, column: 61, scope: !7360)
!7389 = !DILocation(line: 235, column: 2, scope: !7360)
!7390 = distinct !{!7390, !7362, !7391, !6787, !6788}
!7391 = !DILocation(line: 244, column: 2, scope: !7356)
!7392 = !DILocation(line: 245, column: 1, scope: !5976)
!7393 = !DISubprogram(name: "gss_mech_register", scope: !5375, file: !5375, line: 138, type: !7394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7394 = !DISubroutineType(types: !7395)
!7395 = !{!78, !5399}
!7396 = !DISubprogram(name: "_printk", scope: !7397, file: !7397, line: 153, type: !7398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7397 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!7398 = !DISubroutineType(types: !7399)
!7399 = !{!78, !72, null}
!7400 = !DISubprogram(name: "sprintf", scope: !7401, file: !7401, line: 10, type: !7402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7401 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!7402 = !DISubroutineType(types: !7403)
!7403 = !{!78, !266, !72, null}
!7404 = !DISubprogram(name: "strcat", scope: !6432, file: !6432, line: 79, type: !7405, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7405 = !DISubroutineType(types: !7406)
!7406 = !{!266, !266, !72}
