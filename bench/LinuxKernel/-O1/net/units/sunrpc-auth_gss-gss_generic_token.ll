; ModuleID = 'net/sunrpc/auth_gss/gss_generic_token.c'
source_filename = "net/sunrpc/auth_gss/gss_generic_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_g_token_size: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad g_token_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_g_make_token_header: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad g_make_token_header ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_g_verify_token_header: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad g_verify_token_header ; .previous"

%struct.xdr_netobj = type { i32, ptr }

@__UNIQUE_ID___addressable_g_token_size343 = internal global ptr @g_token_size, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_g_make_token_header344 = internal global ptr @g_make_token_header, section ".discard.addressable", align 8, !dbg !11
@__UNIQUE_ID___addressable_g_verify_token_header345 = internal global ptr @g_verify_token_header, section ".discard.addressable", align 8, !dbg !13
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_g_token_size343, ptr @__UNIQUE_ID___addressable_g_make_token_header344, ptr @__UNIQUE_ID___addressable_g_verify_token_header345], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @g_token_size(ptr noundef %mech, i32 noundef %body_size) #0 align 16 !dbg !24 {
entry:
  %mech.addr = alloca ptr, align 8
  %body_size.addr = alloca i32, align 4
  store ptr %mech, ptr %mech.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mech.addr, metadata !40, metadata !DIExpression()), !dbg !42
  store i32 %body_size, ptr %body_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %body_size.addr, metadata !41, metadata !DIExpression()), !dbg !43
  %0 = load ptr, ptr %mech.addr, align 8, !dbg !44
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %0, i32 0, i32 0, !dbg !45
  %1 = load i32, ptr %len, align 8, !dbg !45
  %add = add i32 2, %1, !dbg !46
  %2 = load i32, ptr %body_size.addr, align 4, !dbg !47
  %add1 = add i32 %2, %add, !dbg !47
  store i32 %add1, ptr %body_size.addr, align 4, !dbg !47
  %3 = load i32, ptr %body_size.addr, align 4, !dbg !48
  %call = call i32 @der_length_size(i32 noundef %3) #5, !dbg !49
  %add2 = add i32 1, %call, !dbg !50
  %4 = load i32, ptr %body_size.addr, align 4, !dbg !51
  %add3 = add i32 %add2, %4, !dbg !52
  ret i32 %add3, !dbg !53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @der_length_size(i32 noundef %length) #0 align 16 !dbg !54 {
entry:
  %retval = alloca i32, align 4
  %length.addr = alloca i32, align 4
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load i32, ptr %length.addr, align 4, !dbg !60
  %cmp = icmp slt i32 %0, 128, !dbg !62
  br i1 %cmp, label %if.then, label %if.else, !dbg !63

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !64
  br label %return, !dbg !64

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %length.addr, align 4, !dbg !65
  %cmp1 = icmp slt i32 %1, 256, !dbg !67
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !68

if.then2:                                         ; preds = %if.else
  store i32 2, ptr %retval, align 4, !dbg !69
  br label %return, !dbg !69

if.else3:                                         ; preds = %if.else
  %2 = load i32, ptr %length.addr, align 4, !dbg !70
  %cmp4 = icmp slt i32 %2, 65536, !dbg !72
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !73

if.then5:                                         ; preds = %if.else3
  store i32 3, ptr %retval, align 4, !dbg !74
  br label %return, !dbg !74

if.else6:                                         ; preds = %if.else3
  %3 = load i32, ptr %length.addr, align 4, !dbg !75
  %cmp7 = icmp slt i32 %3, 16777216, !dbg !77
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !78

if.then8:                                         ; preds = %if.else6
  store i32 4, ptr %retval, align 4, !dbg !79
  br label %return, !dbg !79

if.else9:                                         ; preds = %if.else6
  store i32 5, ptr %retval, align 4, !dbg !80
  br label %return, !dbg !80

return:                                           ; preds = %if.else9, %if.then8, %if.then5, %if.then2, %if.then
  %4 = load i32, ptr %retval, align 4, !dbg !81
  ret i32 %4, !dbg !81
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @g_make_token_header(ptr noundef %mech, i32 noundef %body_size, ptr noundef %buf) #0 align 16 !dbg !82 {
entry:
  %mech.addr = alloca ptr, align 8
  %body_size.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  store ptr %mech, ptr %mech.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mech.addr, metadata !88, metadata !DIExpression()), !dbg !91
  store i32 %body_size, ptr %body_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %body_size.addr, metadata !89, metadata !DIExpression()), !dbg !92
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !90, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !94
  %1 = load ptr, ptr %0, align 8, !dbg !95
  %incdec.ptr = getelementptr i8, ptr %1, i32 1, !dbg !95
  store ptr %incdec.ptr, ptr %0, align 8, !dbg !95
  store i8 96, ptr %1, align 1, !dbg !96
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !97
  %3 = load ptr, ptr %mech.addr, align 8, !dbg !98
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %3, i32 0, i32 0, !dbg !99
  %4 = load i32, ptr %len, align 8, !dbg !99
  %add = add i32 2, %4, !dbg !100
  %5 = load i32, ptr %body_size.addr, align 4, !dbg !101
  %add1 = add i32 %add, %5, !dbg !102
  call void @der_write_length(ptr noundef %2, i32 noundef %add1) #5, !dbg !103
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !104
  %7 = load ptr, ptr %6, align 8, !dbg !105
  %incdec.ptr2 = getelementptr i8, ptr %7, i32 1, !dbg !105
  store ptr %incdec.ptr2, ptr %6, align 8, !dbg !105
  store i8 6, ptr %7, align 1, !dbg !106
  %8 = load ptr, ptr %mech.addr, align 8, !dbg !107
  %len3 = getelementptr inbounds %struct.xdr_netobj, ptr %8, i32 0, i32 0, !dbg !108
  %9 = load i32, ptr %len3, align 8, !dbg !108
  %conv = trunc i32 %9 to i8, !dbg !109
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !110
  %11 = load ptr, ptr %10, align 8, !dbg !111
  %incdec.ptr4 = getelementptr i8, ptr %11, i32 1, !dbg !111
  store ptr %incdec.ptr4, ptr %10, align 8, !dbg !111
  store i8 %conv, ptr %11, align 1, !dbg !112
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !113
  %13 = load ptr, ptr %12, align 8, !dbg !113
  %14 = load ptr, ptr %mech.addr, align 8, !dbg !113
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %14, i32 0, i32 1, !dbg !113
  %15 = load ptr, ptr %data, align 8, !dbg !113
  %16 = load ptr, ptr %mech.addr, align 8, !dbg !113
  %len5 = getelementptr inbounds %struct.xdr_netobj, ptr %16, i32 0, i32 0, !dbg !113
  %17 = load i32, ptr %len5, align 8, !dbg !113
  %conv6 = sext i32 %17 to i64, !dbg !113
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %15, i64 %conv6, i1 false), !dbg !113
  %18 = load ptr, ptr %mech.addr, align 8, !dbg !113
  %len7 = getelementptr inbounds %struct.xdr_netobj, ptr %18, i32 0, i32 0, !dbg !113
  %19 = load i32, ptr %len7, align 8, !dbg !113
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !113
  %21 = load ptr, ptr %20, align 8, !dbg !113
  %idx.ext = sext i32 %19 to i64, !dbg !113
  %add.ptr = getelementptr i8, ptr %21, i64 %idx.ext, !dbg !113
  store ptr %add.ptr, ptr %20, align 8, !dbg !113
  ret void, !dbg !114
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @der_write_length(ptr noundef %buf, i32 noundef %length) #0 align 16 !dbg !115 {
entry:
  %buf.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !119, metadata !DIExpression()), !dbg !121
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !120, metadata !DIExpression()), !dbg !122
  %0 = load i32, ptr %length.addr, align 4, !dbg !123
  %cmp = icmp slt i32 %0, 128, !dbg !125
  br i1 %cmp, label %if.then, label %if.else, !dbg !126

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %length.addr, align 4, !dbg !127
  %conv = trunc i32 %1 to i8, !dbg !129
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !130
  %3 = load ptr, ptr %2, align 8, !dbg !131
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !131
  store ptr %incdec.ptr, ptr %2, align 8, !dbg !131
  store i8 %conv, ptr %3, align 1, !dbg !132
  br label %if.end26, !dbg !133

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %length.addr, align 4, !dbg !134
  %call = call i32 @der_length_size(i32 noundef %4) #5, !dbg !136
  %add = add i32 %call, 127, !dbg !137
  %conv1 = trunc i32 %add to i8, !dbg !138
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !139
  %6 = load ptr, ptr %5, align 8, !dbg !140
  %incdec.ptr2 = getelementptr i8, ptr %6, i32 1, !dbg !140
  store ptr %incdec.ptr2, ptr %5, align 8, !dbg !140
  store i8 %conv1, ptr %6, align 1, !dbg !141
  %7 = load i32, ptr %length.addr, align 4, !dbg !142
  %cmp3 = icmp sge i32 %7, 16777216, !dbg !144
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !145

if.then5:                                         ; preds = %if.else
  %8 = load i32, ptr %length.addr, align 4, !dbg !146
  %shr = ashr i32 %8, 24, !dbg !147
  %conv6 = trunc i32 %shr to i8, !dbg !148
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !149
  %10 = load ptr, ptr %9, align 8, !dbg !150
  %incdec.ptr7 = getelementptr i8, ptr %10, i32 1, !dbg !150
  store ptr %incdec.ptr7, ptr %9, align 8, !dbg !150
  store i8 %conv6, ptr %10, align 1, !dbg !151
  br label %if.end, !dbg !152

if.end:                                           ; preds = %if.then5, %if.else
  %11 = load i32, ptr %length.addr, align 4, !dbg !153
  %cmp8 = icmp sge i32 %11, 65536, !dbg !155
  br i1 %cmp8, label %if.then10, label %if.end14, !dbg !156

if.then10:                                        ; preds = %if.end
  %12 = load i32, ptr %length.addr, align 4, !dbg !157
  %shr11 = ashr i32 %12, 16, !dbg !158
  %and = and i32 %shr11, 255, !dbg !159
  %conv12 = trunc i32 %and to i8, !dbg !160
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !161
  %14 = load ptr, ptr %13, align 8, !dbg !162
  %incdec.ptr13 = getelementptr i8, ptr %14, i32 1, !dbg !162
  store ptr %incdec.ptr13, ptr %13, align 8, !dbg !162
  store i8 %conv12, ptr %14, align 1, !dbg !163
  br label %if.end14, !dbg !164

if.end14:                                         ; preds = %if.then10, %if.end
  %15 = load i32, ptr %length.addr, align 4, !dbg !165
  %cmp15 = icmp sge i32 %15, 256, !dbg !167
  br i1 %cmp15, label %if.then17, label %if.end22, !dbg !168

if.then17:                                        ; preds = %if.end14
  %16 = load i32, ptr %length.addr, align 4, !dbg !169
  %shr18 = ashr i32 %16, 8, !dbg !170
  %and19 = and i32 %shr18, 255, !dbg !171
  %conv20 = trunc i32 %and19 to i8, !dbg !172
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !173
  %18 = load ptr, ptr %17, align 8, !dbg !174
  %incdec.ptr21 = getelementptr i8, ptr %18, i32 1, !dbg !174
  store ptr %incdec.ptr21, ptr %17, align 8, !dbg !174
  store i8 %conv20, ptr %18, align 1, !dbg !175
  br label %if.end22, !dbg !176

if.end22:                                         ; preds = %if.then17, %if.end14
  %19 = load i32, ptr %length.addr, align 4, !dbg !177
  %and23 = and i32 %19, 255, !dbg !178
  %conv24 = trunc i32 %and23 to i8, !dbg !179
  %20 = load ptr, ptr %buf.addr, align 8, !dbg !180
  %21 = load ptr, ptr %20, align 8, !dbg !181
  %incdec.ptr25 = getelementptr i8, ptr %21, i32 1, !dbg !181
  store ptr %incdec.ptr25, ptr %20, align 8, !dbg !181
  store i8 %conv24, ptr %21, align 1, !dbg !182
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.then
  ret void, !dbg !183
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @g_verify_token_header(ptr noundef %mech, ptr noundef %body_size, ptr noundef %buf_in, i32 noundef %toksize) #0 align 16 !dbg !184 {
entry:
  %retval = alloca i32, align 4
  %mech.addr = alloca ptr, align 8
  %body_size.addr = alloca ptr, align 8
  %buf_in.addr = alloca ptr, align 8
  %toksize.addr = alloca i32, align 4
  %buf = alloca ptr, align 8
  %seqsize = alloca i32, align 4
  %toid = alloca %struct.xdr_netobj, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mech, ptr %mech.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mech.addr, metadata !191, metadata !DIExpression()), !dbg !199
  store ptr %body_size, ptr %body_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %body_size.addr, metadata !192, metadata !DIExpression()), !dbg !200
  store ptr %buf_in, ptr %buf_in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_in.addr, metadata !193, metadata !DIExpression()), !dbg !201
  store i32 %toksize, ptr %toksize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %toksize.addr, metadata !194, metadata !DIExpression()), !dbg !202
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #6, !dbg !203
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !195, metadata !DIExpression()), !dbg !204
  %0 = load ptr, ptr %buf_in.addr, align 8, !dbg !205
  %1 = load ptr, ptr %0, align 8, !dbg !206
  store ptr %1, ptr %buf, align 8, !dbg !204
  call void @llvm.lifetime.start.p0(i64 4, ptr %seqsize) #6, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %seqsize, metadata !196, metadata !DIExpression()), !dbg !208
  call void @llvm.lifetime.start.p0(i64 16, ptr %toid) #6, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %toid, metadata !197, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !198, metadata !DIExpression()), !dbg !212
  store i32 0, ptr %ret, align 4, !dbg !212
  %2 = load i32, ptr %toksize.addr, align 4, !dbg !213
  %sub = sub i32 %2, 1, !dbg !213
  store i32 %sub, ptr %toksize.addr, align 4, !dbg !213
  %cmp = icmp slt i32 %sub, 0, !dbg !215
  br i1 %cmp, label %if.then, label %if.end, !dbg !216

if.then:                                          ; preds = %entry
  store i32 -2045022964, ptr %retval, align 4, !dbg !217
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !217

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf, align 8, !dbg !218
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !218
  store ptr %incdec.ptr, ptr %buf, align 8, !dbg !218
  %4 = load i8, ptr %3, align 1, !dbg !220
  %conv = zext i8 %4 to i32, !dbg !220
  %cmp1 = icmp ne i32 %conv, 96, !dbg !221
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !222

if.then3:                                         ; preds = %if.end
  store i32 -2045022964, ptr %retval, align 4, !dbg !223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !223

if.end4:                                          ; preds = %if.end
  %call = call i32 @der_read_length(ptr noundef %buf, ptr noundef %toksize.addr) #5, !dbg !224
  store i32 %call, ptr %seqsize, align 4, !dbg !226
  %cmp5 = icmp slt i32 %call, 0, !dbg !227
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !228

if.then7:                                         ; preds = %if.end4
  store i32 -2045022964, ptr %retval, align 4, !dbg !229
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !229

if.end8:                                          ; preds = %if.end4
  %5 = load i32, ptr %seqsize, align 4, !dbg !230
  %6 = load i32, ptr %toksize.addr, align 4, !dbg !232
  %cmp9 = icmp ne i32 %5, %6, !dbg !233
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !234

if.then11:                                        ; preds = %if.end8
  store i32 -2045022964, ptr %retval, align 4, !dbg !235
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !235

if.end12:                                         ; preds = %if.end8
  %7 = load i32, ptr %toksize.addr, align 4, !dbg !236
  %sub13 = sub i32 %7, 1, !dbg !236
  store i32 %sub13, ptr %toksize.addr, align 4, !dbg !236
  %cmp14 = icmp slt i32 %sub13, 0, !dbg !238
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !239

if.then16:                                        ; preds = %if.end12
  store i32 -2045022964, ptr %retval, align 4, !dbg !240
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !240

if.end17:                                         ; preds = %if.end12
  %8 = load ptr, ptr %buf, align 8, !dbg !241
  %incdec.ptr18 = getelementptr i8, ptr %8, i32 1, !dbg !241
  store ptr %incdec.ptr18, ptr %buf, align 8, !dbg !241
  %9 = load i8, ptr %8, align 1, !dbg !243
  %conv19 = zext i8 %9 to i32, !dbg !243
  %cmp20 = icmp ne i32 %conv19, 6, !dbg !244
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !245

if.then22:                                        ; preds = %if.end17
  store i32 -2045022964, ptr %retval, align 4, !dbg !246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !246

if.end23:                                         ; preds = %if.end17
  %10 = load i32, ptr %toksize.addr, align 4, !dbg !247
  %sub24 = sub i32 %10, 1, !dbg !247
  store i32 %sub24, ptr %toksize.addr, align 4, !dbg !247
  %cmp25 = icmp slt i32 %sub24, 0, !dbg !249
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !250

if.then27:                                        ; preds = %if.end23
  store i32 -2045022964, ptr %retval, align 4, !dbg !251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !251

if.end28:                                         ; preds = %if.end23
  %11 = load ptr, ptr %buf, align 8, !dbg !252
  %incdec.ptr29 = getelementptr i8, ptr %11, i32 1, !dbg !252
  store ptr %incdec.ptr29, ptr %buf, align 8, !dbg !252
  %12 = load i8, ptr %11, align 1, !dbg !253
  %conv30 = zext i8 %12 to i32, !dbg !253
  %len = getelementptr inbounds %struct.xdr_netobj, ptr %toid, i32 0, i32 0, !dbg !254
  store i32 %conv30, ptr %len, align 8, !dbg !255
  %len31 = getelementptr inbounds %struct.xdr_netobj, ptr %toid, i32 0, i32 0, !dbg !256
  %13 = load i32, ptr %len31, align 8, !dbg !256
  %14 = load i32, ptr %toksize.addr, align 4, !dbg !258
  %sub32 = sub i32 %14, %13, !dbg !258
  store i32 %sub32, ptr %toksize.addr, align 4, !dbg !258
  %cmp33 = icmp slt i32 %sub32, 0, !dbg !259
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !260

if.then35:                                        ; preds = %if.end28
  store i32 -2045022964, ptr %retval, align 4, !dbg !261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !261

if.end36:                                         ; preds = %if.end28
  %15 = load ptr, ptr %buf, align 8, !dbg !262
  %data = getelementptr inbounds %struct.xdr_netobj, ptr %toid, i32 0, i32 1, !dbg !263
  store ptr %15, ptr %data, align 8, !dbg !264
  %len37 = getelementptr inbounds %struct.xdr_netobj, ptr %toid, i32 0, i32 0, !dbg !265
  %16 = load i32, ptr %len37, align 8, !dbg !265
  %17 = load ptr, ptr %buf, align 8, !dbg !266
  %idx.ext = zext i32 %16 to i64, !dbg !266
  %add.ptr = getelementptr i8, ptr %17, i64 %idx.ext, !dbg !266
  store ptr %add.ptr, ptr %buf, align 8, !dbg !266
  %len38 = getelementptr inbounds %struct.xdr_netobj, ptr %toid, i32 0, i32 0, !dbg !267
  %18 = load i32, ptr %len38, align 8, !dbg !267
  %19 = load ptr, ptr %mech.addr, align 8, !dbg !267
  %len39 = getelementptr inbounds %struct.xdr_netobj, ptr %19, i32 0, i32 0, !dbg !267
  %20 = load i32, ptr %len39, align 8, !dbg !267
  %cmp40 = icmp eq i32 %18, %20, !dbg !267
  br i1 %cmp40, label %land.lhs.true, label %if.then49, !dbg !267

land.lhs.true:                                    ; preds = %if.end36
  %data42 = getelementptr inbounds %struct.xdr_netobj, ptr %toid, i32 0, i32 1, !dbg !267
  %21 = load ptr, ptr %data42, align 8, !dbg !267
  %22 = load ptr, ptr %mech.addr, align 8, !dbg !267
  %data43 = getelementptr inbounds %struct.xdr_netobj, ptr %22, i32 0, i32 1, !dbg !267
  %23 = load ptr, ptr %data43, align 8, !dbg !267
  %len44 = getelementptr inbounds %struct.xdr_netobj, ptr %toid, i32 0, i32 0, !dbg !267
  %24 = load i32, ptr %len44, align 8, !dbg !267
  %conv45 = sext i32 %24 to i64, !dbg !267
  %call46 = call i32 @memcmp(ptr noundef %21, ptr noundef %23, i64 noundef %conv45) #5, !dbg !267
  %cmp47 = icmp eq i32 %call46, 0, !dbg !267
  br i1 %cmp47, label %if.end50, label %if.then49, !dbg !269

if.then49:                                        ; preds = %land.lhs.true, %if.end36
  store i32 -2045022965, ptr %ret, align 4, !dbg !270
  br label %if.end50, !dbg !271

if.end50:                                         ; preds = %if.then49, %land.lhs.true
  %25 = load i32, ptr %toksize.addr, align 4, !dbg !272
  %sub51 = sub i32 %25, 2, !dbg !272
  store i32 %sub51, ptr %toksize.addr, align 4, !dbg !272
  %cmp52 = icmp slt i32 %sub51, 0, !dbg !274
  br i1 %cmp52, label %if.then54, label %if.end55, !dbg !275

if.then54:                                        ; preds = %if.end50
  store i32 -2045022964, ptr %retval, align 4, !dbg !276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !276

if.end55:                                         ; preds = %if.end50
  %26 = load i32, ptr %ret, align 4, !dbg !277
  %tobool = icmp ne i32 %26, 0, !dbg !277
  br i1 %tobool, label %if.then56, label %if.end57, !dbg !279

if.then56:                                        ; preds = %if.end55
  %27 = load i32, ptr %ret, align 4, !dbg !280
  store i32 %27, ptr %retval, align 4, !dbg !281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

if.end57:                                         ; preds = %if.end55
  %28 = load ptr, ptr %buf, align 8, !dbg !282
  %29 = load ptr, ptr %buf_in.addr, align 8, !dbg !283
  store ptr %28, ptr %29, align 8, !dbg !284
  %30 = load i32, ptr %toksize.addr, align 4, !dbg !285
  %31 = load ptr, ptr %body_size.addr, align 8, !dbg !286
  store i32 %30, ptr %31, align 4, !dbg !287
  %32 = load i32, ptr %ret, align 4, !dbg !288
  store i32 %32, ptr %retval, align 4, !dbg !289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !289

cleanup:                                          ; preds = %if.end57, %if.then56, %if.then54, %if.then35, %if.then27, %if.then22, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !290
  call void @llvm.lifetime.end.p0(i64 16, ptr %toid) #6, !dbg !290
  call void @llvm.lifetime.end.p0(i64 4, ptr %seqsize) #6, !dbg !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #6, !dbg !290
  %33 = load i32, ptr %retval, align 4, !dbg !290
  ret i32 %33, !dbg !290
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @der_read_length(ptr noundef %buf, ptr noundef %bufsize) #0 align 16 !dbg !291 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %bufsize.addr = alloca ptr, align 8
  %sf = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !295, metadata !DIExpression()), !dbg !299
  store ptr %bufsize, ptr %bufsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !296, metadata !DIExpression()), !dbg !300
  call void @llvm.lifetime.start.p0(i64 1, ptr %sf) #6, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %sf, metadata !297, metadata !DIExpression()), !dbg !302
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #6, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !298, metadata !DIExpression()), !dbg !304
  %0 = load ptr, ptr %bufsize.addr, align 8, !dbg !305
  %1 = load i32, ptr %0, align 4, !dbg !307
  %cmp = icmp slt i32 %1, 1, !dbg !308
  br i1 %cmp, label %if.then, label %if.end, !dbg !309

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !310

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !311
  %3 = load ptr, ptr %2, align 8, !dbg !312
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !312
  store ptr %incdec.ptr, ptr %2, align 8, !dbg !312
  %4 = load i8, ptr %3, align 1, !dbg !313
  store i8 %4, ptr %sf, align 1, !dbg !314
  %5 = load ptr, ptr %bufsize.addr, align 8, !dbg !315
  %6 = load i32, ptr %5, align 4, !dbg !316
  %dec = add i32 %6, -1, !dbg !316
  store i32 %dec, ptr %5, align 4, !dbg !316
  %7 = load i8, ptr %sf, align 1, !dbg !317
  %conv = zext i8 %7 to i32, !dbg !317
  %and = and i32 %conv, 128, !dbg !319
  %tobool = icmp ne i32 %and, 0, !dbg !319
  br i1 %tobool, label %if.then1, label %if.else, !dbg !320

if.then1:                                         ; preds = %if.end
  %8 = load i8, ptr %sf, align 1, !dbg !321
  %conv2 = zext i8 %8 to i32, !dbg !321
  %and3 = and i32 %conv2, 127, !dbg !321
  %conv4 = trunc i32 %and3 to i8, !dbg !321
  store i8 %conv4, ptr %sf, align 1, !dbg !321
  %conv5 = zext i8 %conv4 to i32, !dbg !324
  %9 = load ptr, ptr %bufsize.addr, align 8, !dbg !325
  %10 = load i32, ptr %9, align 4, !dbg !326
  %sub = sub i32 %10, 1, !dbg !327
  %cmp6 = icmp sgt i32 %conv5, %sub, !dbg !328
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !329

if.then8:                                         ; preds = %if.then1
  store i32 -1, ptr %retval, align 4, !dbg !330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !330

if.end9:                                          ; preds = %if.then1
  %11 = load i8, ptr %sf, align 1, !dbg !331
  %conv10 = zext i8 %11 to i32, !dbg !331
  %cmp11 = icmp sgt i32 %conv10, 4, !dbg !333
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !334

if.then13:                                        ; preds = %if.end9
  store i32 -1, ptr %retval, align 4, !dbg !335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !335

if.end14:                                         ; preds = %if.end9
  store i32 0, ptr %ret, align 4, !dbg !336
  br label %for.cond, !dbg !337

for.cond:                                         ; preds = %for.inc, %if.end14
  %12 = load i8, ptr %sf, align 1, !dbg !338
  %tobool15 = icmp ne i8 %12, 0, !dbg !341
  br i1 %tobool15, label %for.body, label %for.end, !dbg !341

for.body:                                         ; preds = %for.cond
  %13 = load i32, ptr %ret, align 4, !dbg !342
  %shl = shl i32 %13, 8, !dbg !344
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !345
  %15 = load ptr, ptr %14, align 8, !dbg !346
  %incdec.ptr16 = getelementptr i8, ptr %15, i32 1, !dbg !346
  store ptr %incdec.ptr16, ptr %14, align 8, !dbg !346
  %16 = load i8, ptr %15, align 1, !dbg !347
  %conv17 = zext i8 %16 to i32, !dbg !348
  %add = add i32 %shl, %conv17, !dbg !349
  store i32 %add, ptr %ret, align 4, !dbg !350
  %17 = load ptr, ptr %bufsize.addr, align 8, !dbg !351
  %18 = load i32, ptr %17, align 4, !dbg !352
  %dec18 = add i32 %18, -1, !dbg !352
  store i32 %dec18, ptr %17, align 4, !dbg !352
  br label %for.inc, !dbg !353

for.inc:                                          ; preds = %for.body
  %19 = load i8, ptr %sf, align 1, !dbg !354
  %dec19 = add i8 %19, -1, !dbg !354
  store i8 %dec19, ptr %sf, align 1, !dbg !354
  br label %for.cond, !dbg !355, !llvm.loop !356

for.end:                                          ; preds = %for.cond
  br label %if.end21, !dbg !360

if.else:                                          ; preds = %if.end
  %20 = load i8, ptr %sf, align 1, !dbg !361
  %conv20 = zext i8 %20 to i32, !dbg !361
  store i32 %conv20, ptr %ret, align 4, !dbg !363
  br label %if.end21

if.end21:                                         ; preds = %if.else, %for.end
  %21 = load i32, ptr %ret, align 4, !dbg !364
  store i32 %21, ptr %retval, align 4, !dbg !365
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !365

cleanup:                                          ; preds = %if.end21, %if.then13, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #6, !dbg !366
  call void @llvm.lifetime.end.p0(i64 1, ptr %sf) #6, !dbg !366
  %22 = load i32, ptr %retval, align 4, !dbg !366
  ret i32 %22, !dbg !366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !367 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_g_token_size343", scope: !2, file: !3, line: 154, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/sunrpc/auth_gss/.gss_generic_token.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/sunrpc/auth_gss/auth_rpcgss\22 -D KBUILD_BASENAME=\22gss_generic_token\22 -D KBUILD_MODNAME=\22auth_rpcgss\22 -D __KBUILD_MODNAME=kmod_auth_rpcgss -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/sunrpc/auth_gss/gss_generic_token.ll net/sunrpc/auth_gss/gss_generic_token.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/sunrpc/auth_gss/gss_generic_token.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "919b5268d291013891f8140b8f26c1e9")
!4 = !{!5, !6, !7, !8}
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !{!0, !11, !13}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_g_make_token_header344", scope: !2, file: !3, line: 169, type: !6, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_g_verify_token_header345", scope: !2, file: !3, line: 231, type: !6, isLocal: true, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 8, !"cf-protection-branch", i32 1}
!19 = !{i32 4, !"function_return_thunk_extern", i32 1}
!20 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!21 = !{i32 1, !"Code Model", i32 2}
!22 = !{i32 1, !"override-stack-alignment", i32 8}
!23 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!24 = distinct !DISubprogram(name: "g_token_size", scope: !3, file: !3, line: 147, type: !25, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!25 = !DISubroutineType(types: !26)
!26 = !{!5, !27, !32}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_netobj", file: !29, line: 38, size: 128, elements: !30)
!29 = !DIFile(filename: "./include/linux/sunrpc/xdr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd69bdc3c02e377f91d2dfdb179d69f2")
!30 = !{!31, !33}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !28, file: !29, line: 39, baseType: !32, size: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !28, file: !29, line: 40, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !36, line: 17, baseType: !37)
!36 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !38, line: 21, baseType: !7)
!38 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!39 = !{!40, !41}
!40 = !DILocalVariable(name: "mech", arg: 1, scope: !24, file: !3, line: 147, type: !27)
!41 = !DILocalVariable(name: "body_size", arg: 2, scope: !24, file: !3, line: 147, type: !32)
!42 = !DILocation(line: 147, column: 33, scope: !24)
!43 = !DILocation(line: 147, column: 52, scope: !24)
!44 = !DILocation(line: 150, column: 25, scope: !24)
!45 = !DILocation(line: 150, column: 31, scope: !24)
!46 = !DILocation(line: 150, column: 17, scope: !24)
!47 = !DILocation(line: 150, column: 12, scope: !24)
!48 = !DILocation(line: 151, column: 29, scope: !24)
!49 = !DILocation(line: 151, column: 13, scope: !24)
!50 = !DILocation(line: 151, column: 11, scope: !24)
!51 = !DILocation(line: 151, column: 42, scope: !24)
!52 = !DILocation(line: 151, column: 40, scope: !24)
!53 = !DILocation(line: 151, column: 2, scope: !24)
!54 = distinct !DISubprogram(name: "der_length_size", scope: !3, file: !3, line: 76, type: !55, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!5, !5}
!57 = !{!58}
!58 = !DILocalVariable(name: "length", arg: 1, scope: !54, file: !3, line: 76, type: !5)
!59 = !DILocation(line: 76, column: 22, scope: !54)
!60 = !DILocation(line: 78, column: 6, scope: !61)
!61 = distinct !DILexicalBlock(scope: !54, file: !3, line: 78, column: 6)
!62 = !DILocation(line: 78, column: 13, scope: !61)
!63 = !DILocation(line: 78, column: 6, scope: !54)
!64 = !DILocation(line: 79, column: 3, scope: !61)
!65 = !DILocation(line: 80, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !3, line: 80, column: 11)
!67 = !DILocation(line: 80, column: 18, scope: !66)
!68 = !DILocation(line: 80, column: 11, scope: !61)
!69 = !DILocation(line: 81, column: 3, scope: !66)
!70 = !DILocation(line: 86, column: 11, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !3, line: 86, column: 11)
!72 = !DILocation(line: 86, column: 18, scope: !71)
!73 = !DILocation(line: 86, column: 11, scope: !66)
!74 = !DILocation(line: 87, column: 3, scope: !71)
!75 = !DILocation(line: 88, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !3, line: 88, column: 11)
!77 = !DILocation(line: 88, column: 18, scope: !76)
!78 = !DILocation(line: 88, column: 11, scope: !71)
!79 = !DILocation(line: 89, column: 3, scope: !76)
!80 = !DILocation(line: 91, column: 3, scope: !76)
!81 = !DILocation(line: 93, column: 1, scope: !54)
!82 = distinct !DISubprogram(name: "g_make_token_header", scope: !3, file: !3, line: 160, type: !83, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !27, !5, !85}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!87 = !{!88, !89, !90}
!88 = !DILocalVariable(name: "mech", arg: 1, scope: !82, file: !3, line: 160, type: !27)
!89 = !DILocalVariable(name: "body_size", arg: 2, scope: !82, file: !3, line: 160, type: !5)
!90 = !DILocalVariable(name: "buf", arg: 3, scope: !82, file: !3, line: 160, type: !85)
!91 = !DILocation(line: 160, column: 40, scope: !82)
!92 = !DILocation(line: 160, column: 50, scope: !82)
!93 = !DILocation(line: 160, column: 77, scope: !82)
!94 = !DILocation(line: 162, column: 5, scope: !82)
!95 = !DILocation(line: 162, column: 9, scope: !82)
!96 = !DILocation(line: 162, column: 12, scope: !82)
!97 = !DILocation(line: 163, column: 19, scope: !82)
!98 = !DILocation(line: 163, column: 28, scope: !82)
!99 = !DILocation(line: 163, column: 34, scope: !82)
!100 = !DILocation(line: 163, column: 26, scope: !82)
!101 = !DILocation(line: 163, column: 40, scope: !82)
!102 = !DILocation(line: 163, column: 38, scope: !82)
!103 = !DILocation(line: 163, column: 2, scope: !82)
!104 = !DILocation(line: 164, column: 5, scope: !82)
!105 = !DILocation(line: 164, column: 9, scope: !82)
!106 = !DILocation(line: 164, column: 12, scope: !82)
!107 = !DILocation(line: 165, column: 30, scope: !82)
!108 = !DILocation(line: 165, column: 36, scope: !82)
!109 = !DILocation(line: 165, column: 14, scope: !82)
!110 = !DILocation(line: 165, column: 5, scope: !82)
!111 = !DILocation(line: 165, column: 9, scope: !82)
!112 = !DILocation(line: 165, column: 12, scope: !82)
!113 = !DILocation(line: 166, column: 2, scope: !82)
!114 = !DILocation(line: 167, column: 1, scope: !82)
!115 = distinct !DISubprogram(name: "der_write_length", scope: !3, file: !3, line: 96, type: !116, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !85, !5}
!118 = !{!119, !120}
!119 = !DILocalVariable(name: "buf", arg: 1, scope: !115, file: !3, line: 96, type: !85)
!120 = !DILocalVariable(name: "length", arg: 2, scope: !115, file: !3, line: 96, type: !5)
!121 = !DILocation(line: 96, column: 34, scope: !115)
!122 = !DILocation(line: 96, column: 43, scope: !115)
!123 = !DILocation(line: 98, column: 6, scope: !124)
!124 = distinct !DILexicalBlock(scope: !115, file: !3, line: 98, column: 6)
!125 = !DILocation(line: 98, column: 13, scope: !124)
!126 = !DILocation(line: 98, column: 6, scope: !115)
!127 = !DILocation(line: 99, column: 31, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !3, line: 98, column: 23)
!129 = !DILocation(line: 99, column: 15, scope: !128)
!130 = !DILocation(line: 99, column: 6, scope: !128)
!131 = !DILocation(line: 99, column: 10, scope: !128)
!132 = !DILocation(line: 99, column: 13, scope: !128)
!133 = !DILocation(line: 100, column: 2, scope: !128)
!134 = !DILocation(line: 101, column: 48, scope: !135)
!135 = distinct !DILexicalBlock(scope: !124, file: !3, line: 100, column: 9)
!136 = !DILocation(line: 101, column: 32, scope: !135)
!137 = !DILocation(line: 101, column: 55, scope: !135)
!138 = !DILocation(line: 101, column: 15, scope: !135)
!139 = !DILocation(line: 101, column: 6, scope: !135)
!140 = !DILocation(line: 101, column: 10, scope: !135)
!141 = !DILocation(line: 101, column: 13, scope: !135)
!142 = !DILocation(line: 103, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !135, file: !3, line: 103, column: 7)
!144 = !DILocation(line: 103, column: 14, scope: !143)
!145 = !DILocation(line: 103, column: 7, scope: !135)
!146 = !DILocation(line: 104, column: 33, scope: !143)
!147 = !DILocation(line: 104, column: 39, scope: !143)
!148 = !DILocation(line: 104, column: 16, scope: !143)
!149 = !DILocation(line: 104, column: 7, scope: !143)
!150 = !DILocation(line: 104, column: 11, scope: !143)
!151 = !DILocation(line: 104, column: 14, scope: !143)
!152 = !DILocation(line: 104, column: 4, scope: !143)
!153 = !DILocation(line: 105, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !135, file: !3, line: 105, column: 7)
!155 = !DILocation(line: 105, column: 14, scope: !154)
!156 = !DILocation(line: 105, column: 7, scope: !135)
!157 = !DILocation(line: 106, column: 34, scope: !154)
!158 = !DILocation(line: 106, column: 40, scope: !154)
!159 = !DILocation(line: 106, column: 45, scope: !154)
!160 = !DILocation(line: 106, column: 16, scope: !154)
!161 = !DILocation(line: 106, column: 7, scope: !154)
!162 = !DILocation(line: 106, column: 11, scope: !154)
!163 = !DILocation(line: 106, column: 14, scope: !154)
!164 = !DILocation(line: 106, column: 4, scope: !154)
!165 = !DILocation(line: 108, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !135, file: !3, line: 108, column: 7)
!167 = !DILocation(line: 108, column: 14, scope: !166)
!168 = !DILocation(line: 108, column: 7, scope: !135)
!169 = !DILocation(line: 109, column: 34, scope: !166)
!170 = !DILocation(line: 109, column: 40, scope: !166)
!171 = !DILocation(line: 109, column: 44, scope: !166)
!172 = !DILocation(line: 109, column: 16, scope: !166)
!173 = !DILocation(line: 109, column: 7, scope: !166)
!174 = !DILocation(line: 109, column: 11, scope: !166)
!175 = !DILocation(line: 109, column: 14, scope: !166)
!176 = !DILocation(line: 109, column: 4, scope: !166)
!177 = !DILocation(line: 110, column: 32, scope: !135)
!178 = !DILocation(line: 110, column: 38, scope: !135)
!179 = !DILocation(line: 110, column: 15, scope: !135)
!180 = !DILocation(line: 110, column: 6, scope: !135)
!181 = !DILocation(line: 110, column: 10, scope: !135)
!182 = !DILocation(line: 110, column: 13, scope: !135)
!183 = !DILocation(line: 112, column: 1, scope: !115)
!184 = distinct !DISubprogram(name: "g_verify_token_header", scope: !3, file: !3, line: 180, type: !185, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !27, !189, !85, !5}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !36, line: 21, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !38, line: 27, baseType: !32)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198}
!191 = !DILocalVariable(name: "mech", arg: 1, scope: !184, file: !3, line: 180, type: !27)
!192 = !DILocalVariable(name: "body_size", arg: 2, scope: !184, file: !3, line: 180, type: !189)
!193 = !DILocalVariable(name: "buf_in", arg: 3, scope: !184, file: !3, line: 181, type: !85)
!194 = !DILocalVariable(name: "toksize", arg: 4, scope: !184, file: !3, line: 181, type: !5)
!195 = !DILocalVariable(name: "buf", scope: !184, file: !3, line: 183, type: !86)
!196 = !DILocalVariable(name: "seqsize", scope: !184, file: !3, line: 184, type: !5)
!197 = !DILocalVariable(name: "toid", scope: !184, file: !3, line: 185, type: !28)
!198 = !DILocalVariable(name: "ret", scope: !184, file: !3, line: 186, type: !5)
!199 = !DILocation(line: 180, column: 42, scope: !184)
!200 = !DILocation(line: 180, column: 53, scope: !184)
!201 = !DILocation(line: 181, column: 25, scope: !184)
!202 = !DILocation(line: 181, column: 37, scope: !184)
!203 = !DILocation(line: 183, column: 2, scope: !184)
!204 = !DILocation(line: 183, column: 17, scope: !184)
!205 = !DILocation(line: 183, column: 24, scope: !184)
!206 = !DILocation(line: 183, column: 23, scope: !184)
!207 = !DILocation(line: 184, column: 2, scope: !184)
!208 = !DILocation(line: 184, column: 6, scope: !184)
!209 = !DILocation(line: 185, column: 2, scope: !184)
!210 = !DILocation(line: 185, column: 20, scope: !184)
!211 = !DILocation(line: 186, column: 2, scope: !184)
!212 = !DILocation(line: 186, column: 6, scope: !184)
!213 = !DILocation(line: 188, column: 14, scope: !214)
!214 = distinct !DILexicalBlock(scope: !184, file: !3, line: 188, column: 6)
!215 = !DILocation(line: 188, column: 19, scope: !214)
!216 = !DILocation(line: 188, column: 6, scope: !184)
!217 = !DILocation(line: 189, column: 3, scope: !214)
!218 = !DILocation(line: 190, column: 10, scope: !219)
!219 = distinct !DILexicalBlock(scope: !184, file: !3, line: 190, column: 6)
!220 = !DILocation(line: 190, column: 6, scope: !219)
!221 = !DILocation(line: 190, column: 13, scope: !219)
!222 = !DILocation(line: 190, column: 6, scope: !184)
!223 = !DILocation(line: 191, column: 3, scope: !219)
!224 = !DILocation(line: 193, column: 17, scope: !225)
!225 = distinct !DILexicalBlock(scope: !184, file: !3, line: 193, column: 6)
!226 = !DILocation(line: 193, column: 15, scope: !225)
!227 = !DILocation(line: 193, column: 50, scope: !225)
!228 = !DILocation(line: 193, column: 6, scope: !184)
!229 = !DILocation(line: 194, column: 3, scope: !225)
!230 = !DILocation(line: 196, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !184, file: !3, line: 196, column: 6)
!232 = !DILocation(line: 196, column: 17, scope: !231)
!233 = !DILocation(line: 196, column: 14, scope: !231)
!234 = !DILocation(line: 196, column: 6, scope: !184)
!235 = !DILocation(line: 197, column: 3, scope: !231)
!236 = !DILocation(line: 199, column: 14, scope: !237)
!237 = distinct !DILexicalBlock(scope: !184, file: !3, line: 199, column: 6)
!238 = !DILocation(line: 199, column: 19, scope: !237)
!239 = !DILocation(line: 199, column: 6, scope: !184)
!240 = !DILocation(line: 200, column: 3, scope: !237)
!241 = !DILocation(line: 201, column: 10, scope: !242)
!242 = distinct !DILexicalBlock(scope: !184, file: !3, line: 201, column: 6)
!243 = !DILocation(line: 201, column: 6, scope: !242)
!244 = !DILocation(line: 201, column: 13, scope: !242)
!245 = !DILocation(line: 201, column: 6, scope: !184)
!246 = !DILocation(line: 202, column: 3, scope: !242)
!247 = !DILocation(line: 204, column: 14, scope: !248)
!248 = distinct !DILexicalBlock(scope: !184, file: !3, line: 204, column: 6)
!249 = !DILocation(line: 204, column: 19, scope: !248)
!250 = !DILocation(line: 204, column: 6, scope: !184)
!251 = !DILocation(line: 205, column: 3, scope: !248)
!252 = !DILocation(line: 206, column: 17, scope: !184)
!253 = !DILocation(line: 206, column: 13, scope: !184)
!254 = !DILocation(line: 206, column: 7, scope: !184)
!255 = !DILocation(line: 206, column: 11, scope: !184)
!256 = !DILocation(line: 208, column: 21, scope: !257)
!257 = distinct !DILexicalBlock(scope: !184, file: !3, line: 208, column: 6)
!258 = !DILocation(line: 208, column: 14, scope: !257)
!259 = !DILocation(line: 208, column: 26, scope: !257)
!260 = !DILocation(line: 208, column: 6, scope: !184)
!261 = !DILocation(line: 209, column: 3, scope: !257)
!262 = !DILocation(line: 210, column: 14, scope: !184)
!263 = !DILocation(line: 210, column: 7, scope: !184)
!264 = !DILocation(line: 210, column: 12, scope: !184)
!265 = !DILocation(line: 211, column: 12, scope: !184)
!266 = !DILocation(line: 211, column: 5, scope: !184)
!267 = !DILocation(line: 213, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !184, file: !3, line: 213, column: 6)
!269 = !DILocation(line: 213, column: 6, scope: !184)
!270 = !DILocation(line: 214, column: 7, scope: !268)
!271 = !DILocation(line: 214, column: 3, scope: !268)
!272 = !DILocation(line: 219, column: 14, scope: !273)
!273 = distinct !DILexicalBlock(scope: !184, file: !3, line: 219, column: 6)
!274 = !DILocation(line: 219, column: 19, scope: !273)
!275 = !DILocation(line: 219, column: 6, scope: !184)
!276 = !DILocation(line: 220, column: 3, scope: !273)
!277 = !DILocation(line: 222, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !184, file: !3, line: 222, column: 6)
!279 = !DILocation(line: 222, column: 6, scope: !184)
!280 = !DILocation(line: 223, column: 10, scope: !278)
!281 = !DILocation(line: 223, column: 3, scope: !278)
!282 = !DILocation(line: 225, column: 12, scope: !184)
!283 = !DILocation(line: 225, column: 3, scope: !184)
!284 = !DILocation(line: 225, column: 10, scope: !184)
!285 = !DILocation(line: 226, column: 15, scope: !184)
!286 = !DILocation(line: 226, column: 3, scope: !184)
!287 = !DILocation(line: 226, column: 13, scope: !184)
!288 = !DILocation(line: 228, column: 9, scope: !184)
!289 = !DILocation(line: 228, column: 2, scope: !184)
!290 = !DILocation(line: 229, column: 1, scope: !184)
!291 = distinct !DISubprogram(name: "der_read_length", scope: !3, file: !3, line: 118, type: !292, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !294)
!292 = !DISubroutineType(types: !293)
!293 = !{!5, !85, !189}
!294 = !{!295, !296, !297, !298}
!295 = !DILocalVariable(name: "buf", arg: 1, scope: !291, file: !3, line: 118, type: !85)
!296 = !DILocalVariable(name: "bufsize", arg: 2, scope: !291, file: !3, line: 118, type: !189)
!297 = !DILocalVariable(name: "sf", scope: !291, file: !3, line: 120, type: !7)
!298 = !DILocalVariable(name: "ret", scope: !291, file: !3, line: 121, type: !5)
!299 = !DILocation(line: 118, column: 33, scope: !291)
!300 = !DILocation(line: 118, column: 43, scope: !291)
!301 = !DILocation(line: 120, column: 2, scope: !291)
!302 = !DILocation(line: 120, column: 16, scope: !291)
!303 = !DILocation(line: 121, column: 2, scope: !291)
!304 = !DILocation(line: 121, column: 6, scope: !291)
!305 = !DILocation(line: 123, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !291, file: !3, line: 123, column: 6)
!307 = !DILocation(line: 123, column: 6, scope: !306)
!308 = !DILocation(line: 123, column: 15, scope: !306)
!309 = !DILocation(line: 123, column: 6, scope: !291)
!310 = !DILocation(line: 124, column: 3, scope: !306)
!311 = !DILocation(line: 125, column: 10, scope: !291)
!312 = !DILocation(line: 125, column: 14, scope: !291)
!313 = !DILocation(line: 125, column: 7, scope: !291)
!314 = !DILocation(line: 125, column: 5, scope: !291)
!315 = !DILocation(line: 126, column: 4, scope: !291)
!316 = !DILocation(line: 126, column: 12, scope: !291)
!317 = !DILocation(line: 127, column: 6, scope: !318)
!318 = distinct !DILexicalBlock(scope: !291, file: !3, line: 127, column: 6)
!319 = !DILocation(line: 127, column: 9, scope: !318)
!320 = !DILocation(line: 127, column: 6, scope: !291)
!321 = !DILocation(line: 128, column: 11, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 128, column: 7)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 127, column: 17)
!324 = !DILocation(line: 128, column: 7, scope: !322)
!325 = !DILocation(line: 128, column: 25, scope: !322)
!326 = !DILocation(line: 128, column: 24, scope: !322)
!327 = !DILocation(line: 128, column: 33, scope: !322)
!328 = !DILocation(line: 128, column: 20, scope: !322)
!329 = !DILocation(line: 128, column: 7, scope: !323)
!330 = !DILocation(line: 129, column: 4, scope: !322)
!331 = !DILocation(line: 130, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !323, file: !3, line: 130, column: 7)
!333 = !DILocation(line: 130, column: 10, scope: !332)
!334 = !DILocation(line: 130, column: 7, scope: !323)
!335 = !DILocation(line: 131, column: 4, scope: !332)
!336 = !DILocation(line: 132, column: 7, scope: !323)
!337 = !DILocation(line: 133, column: 3, scope: !323)
!338 = !DILocation(line: 133, column: 10, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !3, line: 133, column: 3)
!340 = distinct !DILexicalBlock(scope: !323, file: !3, line: 133, column: 3)
!341 = !DILocation(line: 133, column: 3, scope: !340)
!342 = !DILocation(line: 134, column: 11, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !3, line: 133, column: 20)
!344 = !DILocation(line: 134, column: 14, scope: !343)
!345 = !DILocation(line: 134, column: 25, scope: !343)
!346 = !DILocation(line: 134, column: 29, scope: !343)
!347 = !DILocation(line: 134, column: 22, scope: !343)
!348 = !DILocation(line: 134, column: 21, scope: !343)
!349 = !DILocation(line: 134, column: 19, scope: !343)
!350 = !DILocation(line: 134, column: 8, scope: !343)
!351 = !DILocation(line: 135, column: 6, scope: !343)
!352 = !DILocation(line: 135, column: 14, scope: !343)
!353 = !DILocation(line: 136, column: 3, scope: !343)
!354 = !DILocation(line: 133, column: 16, scope: !339)
!355 = !DILocation(line: 133, column: 3, scope: !339)
!356 = distinct !{!356, !341, !357, !358, !359}
!357 = !DILocation(line: 136, column: 3, scope: !340)
!358 = !{!"llvm.loop.mustprogress"}
!359 = !{!"llvm.loop.unroll.disable"}
!360 = !DILocation(line: 137, column: 2, scope: !323)
!361 = !DILocation(line: 138, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !318, file: !3, line: 137, column: 9)
!363 = !DILocation(line: 138, column: 7, scope: !362)
!364 = !DILocation(line: 141, column: 9, scope: !291)
!365 = !DILocation(line: 141, column: 2, scope: !291)
!366 = !DILocation(line: 142, column: 1, scope: !291)
!367 = !DISubprogram(name: "memcmp", scope: !368, file: !368, line: 196, type: !369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!368 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!369 = !DISubroutineType(types: !370)
!370 = !{!5, !371, !371, !373}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !374, line: 72, baseType: !375)
!374 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !374, line: 16, baseType: !376)
!376 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
