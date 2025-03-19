; ModuleID = 'crypto/rsa_helper.c'
source_filename = "crypto/rsa_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rsa_parse_pub_key: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rsa_parse_pub_key ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rsa_parse_priv_key: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rsa_parse_priv_key ; .previous"

%struct.asn1_decoder = type opaque
%struct.rsa_key = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64 }

@rsapubkey_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__UNIQUE_ID___addressable_rsa_parse_pub_key3 = internal global ptr @rsa_parse_pub_key, section ".discard.addressable", align 8, !dbg !0
@rsaprivkey_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__UNIQUE_ID___addressable_rsa_parse_priv_key4 = internal global ptr @rsa_parse_priv_key, section ".discard.addressable", align 8, !dbg !7
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_rsa_parse_pub_key3, ptr @__UNIQUE_ID___addressable_rsa_parse_priv_key4], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_n(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %n_sz = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !32, metadata !DIExpression()), !dbg !66
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !33, metadata !DIExpression()), !dbg !67
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !34, metadata !DIExpression()), !dbg !68
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !35, metadata !DIExpression()), !dbg !69
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !36, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %key, metadata !37, metadata !DIExpression()), !dbg !72
  %0 = load ptr, ptr %context.addr, align 8, !dbg !73
  store ptr %0, ptr %key, align 8, !dbg !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #4, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !64, metadata !DIExpression()), !dbg !75
  %1 = load ptr, ptr %value.addr, align 8, !dbg !76
  store ptr %1, ptr %ptr, align 8, !dbg !75
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_sz) #4, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %n_sz, metadata !65, metadata !DIExpression()), !dbg !78
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !79
  store i64 %2, ptr %n_sz, align 8, !dbg !78
  %3 = load ptr, ptr %value.addr, align 8, !dbg !80
  %tobool = icmp ne ptr %3, null, !dbg !80
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !82

lor.lhs.false:                                    ; preds = %entry
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !83
  %tobool1 = icmp ne i64 %4, 0, !dbg !83
  br i1 %tobool1, label %if.end, label %if.then, !dbg !84

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !85
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !85

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %value.addr, align 8, !dbg !86
  %6 = load ptr, ptr %key, align 8, !dbg !87
  %n = getelementptr inbounds %struct.rsa_key, ptr %6, i32 0, i32 0, !dbg !88
  store ptr %5, ptr %n, align 8, !dbg !89
  %7 = load i64, ptr %vlen.addr, align 8, !dbg !90
  %8 = load ptr, ptr %key, align 8, !dbg !91
  %n_sz2 = getelementptr inbounds %struct.rsa_key, ptr %8, i32 0, i32 8, !dbg !92
  store i64 %7, ptr %n_sz2, align 8, !dbg !93
  store i32 0, ptr %retval, align 4, !dbg !94
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !94

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_sz) #4, !dbg !95
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #4, !dbg !95
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !95
  %9 = load i32, ptr %retval, align 4, !dbg !95
  ret i32 %9, !dbg !95
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_e(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !96 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !98, metadata !DIExpression()), !dbg !104
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !99, metadata !DIExpression()), !dbg !105
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !100, metadata !DIExpression()), !dbg !106
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !101, metadata !DIExpression()), !dbg !107
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !102, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %key, metadata !103, metadata !DIExpression()), !dbg !110
  %0 = load ptr, ptr %context.addr, align 8, !dbg !111
  store ptr %0, ptr %key, align 8, !dbg !110
  %1 = load ptr, ptr %value.addr, align 8, !dbg !112
  %tobool = icmp ne ptr %1, null, !dbg !112
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !114

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %key, align 8, !dbg !115
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %2, i32 0, i32 8, !dbg !116
  %3 = load i64, ptr %n_sz, align 8, !dbg !116
  %tobool1 = icmp ne i64 %3, 0, !dbg !115
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !117

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !118
  %tobool3 = icmp ne i64 %4, 0, !dbg !118
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !119

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i64, ptr %vlen.addr, align 8, !dbg !120
  %6 = load ptr, ptr %key, align 8, !dbg !121
  %n_sz5 = getelementptr inbounds %struct.rsa_key, ptr %6, i32 0, i32 8, !dbg !122
  %7 = load i64, ptr %n_sz5, align 8, !dbg !122
  %cmp = icmp ugt i64 %5, %7, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !125

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %value.addr, align 8, !dbg !126
  %9 = load ptr, ptr %key, align 8, !dbg !127
  %e = getelementptr inbounds %struct.rsa_key, ptr %9, i32 0, i32 1, !dbg !128
  store ptr %8, ptr %e, align 8, !dbg !129
  %10 = load i64, ptr %vlen.addr, align 8, !dbg !130
  %11 = load ptr, ptr %key, align 8, !dbg !131
  %e_sz = getelementptr inbounds %struct.rsa_key, ptr %11, i32 0, i32 9, !dbg !132
  store i64 %10, ptr %e_sz, align 8, !dbg !133
  store i32 0, ptr %retval, align 4, !dbg !134
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !134

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !135
  %12 = load i32, ptr %retval, align 4, !dbg !135
  ret i32 %12, !dbg !135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_d(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !136 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !138, metadata !DIExpression()), !dbg !144
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !139, metadata !DIExpression()), !dbg !145
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !140, metadata !DIExpression()), !dbg !146
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !141, metadata !DIExpression()), !dbg !147
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !142, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %key, metadata !143, metadata !DIExpression()), !dbg !150
  %0 = load ptr, ptr %context.addr, align 8, !dbg !151
  store ptr %0, ptr %key, align 8, !dbg !150
  %1 = load ptr, ptr %value.addr, align 8, !dbg !152
  %tobool = icmp ne ptr %1, null, !dbg !152
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !154

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %key, align 8, !dbg !155
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %2, i32 0, i32 8, !dbg !156
  %3 = load i64, ptr %n_sz, align 8, !dbg !156
  %tobool1 = icmp ne i64 %3, 0, !dbg !155
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !157

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %4 = load i64, ptr %vlen.addr, align 8, !dbg !158
  %tobool3 = icmp ne i64 %4, 0, !dbg !158
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !159

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %5 = load i64, ptr %vlen.addr, align 8, !dbg !160
  %6 = load ptr, ptr %key, align 8, !dbg !161
  %n_sz5 = getelementptr inbounds %struct.rsa_key, ptr %6, i32 0, i32 8, !dbg !162
  %7 = load i64, ptr %n_sz5, align 8, !dbg !162
  %cmp = icmp ugt i64 %5, %7, !dbg !163
  br i1 %cmp, label %if.then, label %if.end, !dbg !164

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !165

if.end:                                           ; preds = %lor.lhs.false4
  %8 = load ptr, ptr %value.addr, align 8, !dbg !166
  %9 = load ptr, ptr %key, align 8, !dbg !167
  %d = getelementptr inbounds %struct.rsa_key, ptr %9, i32 0, i32 2, !dbg !168
  store ptr %8, ptr %d, align 8, !dbg !169
  %10 = load i64, ptr %vlen.addr, align 8, !dbg !170
  %11 = load ptr, ptr %key, align 8, !dbg !171
  %d_sz = getelementptr inbounds %struct.rsa_key, ptr %11, i32 0, i32 10, !dbg !172
  store i64 %10, ptr %d_sz, align 8, !dbg !173
  store i32 0, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !175
  %12 = load i32, ptr %retval, align 4, !dbg !175
  ret i32 %12, !dbg !175
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_p(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !176 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !178, metadata !DIExpression()), !dbg !184
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !179, metadata !DIExpression()), !dbg !185
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !180, metadata !DIExpression()), !dbg !186
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !181, metadata !DIExpression()), !dbg !187
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !182, metadata !DIExpression()), !dbg !188
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %key, metadata !183, metadata !DIExpression()), !dbg !190
  %0 = load ptr, ptr %context.addr, align 8, !dbg !191
  store ptr %0, ptr %key, align 8, !dbg !190
  %1 = load ptr, ptr %value.addr, align 8, !dbg !192
  %tobool = icmp ne ptr %1, null, !dbg !192
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !194

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !195
  %tobool1 = icmp ne i64 %2, 0, !dbg !195
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !196

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !197
  %4 = load ptr, ptr %key, align 8, !dbg !198
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8, !dbg !199
  %5 = load i64, ptr %n_sz, align 8, !dbg !199
  %cmp = icmp ugt i64 %3, %5, !dbg !200
  br i1 %cmp, label %if.then, label %if.end, !dbg !201

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !202

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %value.addr, align 8, !dbg !203
  %7 = load ptr, ptr %key, align 8, !dbg !204
  %p = getelementptr inbounds %struct.rsa_key, ptr %7, i32 0, i32 3, !dbg !205
  store ptr %6, ptr %p, align 8, !dbg !206
  %8 = load i64, ptr %vlen.addr, align 8, !dbg !207
  %9 = load ptr, ptr %key, align 8, !dbg !208
  %p_sz = getelementptr inbounds %struct.rsa_key, ptr %9, i32 0, i32 11, !dbg !209
  store i64 %8, ptr %p_sz, align 8, !dbg !210
  store i32 0, ptr %retval, align 4, !dbg !211
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !211

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !212
  %10 = load i32, ptr %retval, align 4, !dbg !212
  ret i32 %10, !dbg !212
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_q(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !213 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !215, metadata !DIExpression()), !dbg !221
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !216, metadata !DIExpression()), !dbg !222
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !217, metadata !DIExpression()), !dbg !223
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !218, metadata !DIExpression()), !dbg !224
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !226
  call void @llvm.dbg.declare(metadata ptr %key, metadata !220, metadata !DIExpression()), !dbg !227
  %0 = load ptr, ptr %context.addr, align 8, !dbg !228
  store ptr %0, ptr %key, align 8, !dbg !227
  %1 = load ptr, ptr %value.addr, align 8, !dbg !229
  %tobool = icmp ne ptr %1, null, !dbg !229
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !231

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !232
  %tobool1 = icmp ne i64 %2, 0, !dbg !232
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !233

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !234
  %4 = load ptr, ptr %key, align 8, !dbg !235
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8, !dbg !236
  %5 = load i64, ptr %n_sz, align 8, !dbg !236
  %cmp = icmp ugt i64 %3, %5, !dbg !237
  br i1 %cmp, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !239

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %value.addr, align 8, !dbg !240
  %7 = load ptr, ptr %key, align 8, !dbg !241
  %q = getelementptr inbounds %struct.rsa_key, ptr %7, i32 0, i32 4, !dbg !242
  store ptr %6, ptr %q, align 8, !dbg !243
  %8 = load i64, ptr %vlen.addr, align 8, !dbg !244
  %9 = load ptr, ptr %key, align 8, !dbg !245
  %q_sz = getelementptr inbounds %struct.rsa_key, ptr %9, i32 0, i32 12, !dbg !246
  store i64 %8, ptr %q_sz, align 8, !dbg !247
  store i32 0, ptr %retval, align 4, !dbg !248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !248

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !249
  %10 = load i32, ptr %retval, align 4, !dbg !249
  ret i32 %10, !dbg !249
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_dp(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !250 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !252, metadata !DIExpression()), !dbg !258
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !253, metadata !DIExpression()), !dbg !259
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !254, metadata !DIExpression()), !dbg !260
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !255, metadata !DIExpression()), !dbg !261
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !256, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %key, metadata !257, metadata !DIExpression()), !dbg !264
  %0 = load ptr, ptr %context.addr, align 8, !dbg !265
  store ptr %0, ptr %key, align 8, !dbg !264
  %1 = load ptr, ptr %value.addr, align 8, !dbg !266
  %tobool = icmp ne ptr %1, null, !dbg !266
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !268

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !269
  %tobool1 = icmp ne i64 %2, 0, !dbg !269
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !270

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !271
  %4 = load ptr, ptr %key, align 8, !dbg !272
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8, !dbg !273
  %5 = load i64, ptr %n_sz, align 8, !dbg !273
  %cmp = icmp ugt i64 %3, %5, !dbg !274
  br i1 %cmp, label %if.then, label %if.end, !dbg !275

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !276

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %value.addr, align 8, !dbg !277
  %7 = load ptr, ptr %key, align 8, !dbg !278
  %dp = getelementptr inbounds %struct.rsa_key, ptr %7, i32 0, i32 5, !dbg !279
  store ptr %6, ptr %dp, align 8, !dbg !280
  %8 = load i64, ptr %vlen.addr, align 8, !dbg !281
  %9 = load ptr, ptr %key, align 8, !dbg !282
  %dp_sz = getelementptr inbounds %struct.rsa_key, ptr %9, i32 0, i32 13, !dbg !283
  store i64 %8, ptr %dp_sz, align 8, !dbg !284
  store i32 0, ptr %retval, align 4, !dbg !285
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !285

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !286
  %10 = load i32, ptr %retval, align 4, !dbg !286
  ret i32 %10, !dbg !286
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_dq(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !287 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !289, metadata !DIExpression()), !dbg !295
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !290, metadata !DIExpression()), !dbg !296
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !291, metadata !DIExpression()), !dbg !297
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !292, metadata !DIExpression()), !dbg !298
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !293, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %key, metadata !294, metadata !DIExpression()), !dbg !301
  %0 = load ptr, ptr %context.addr, align 8, !dbg !302
  store ptr %0, ptr %key, align 8, !dbg !301
  %1 = load ptr, ptr %value.addr, align 8, !dbg !303
  %tobool = icmp ne ptr %1, null, !dbg !303
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !305

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !306
  %tobool1 = icmp ne i64 %2, 0, !dbg !306
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !307

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !308
  %4 = load ptr, ptr %key, align 8, !dbg !309
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8, !dbg !310
  %5 = load i64, ptr %n_sz, align 8, !dbg !310
  %cmp = icmp ugt i64 %3, %5, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !313

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %value.addr, align 8, !dbg !314
  %7 = load ptr, ptr %key, align 8, !dbg !315
  %dq = getelementptr inbounds %struct.rsa_key, ptr %7, i32 0, i32 6, !dbg !316
  store ptr %6, ptr %dq, align 8, !dbg !317
  %8 = load i64, ptr %vlen.addr, align 8, !dbg !318
  %9 = load ptr, ptr %key, align 8, !dbg !319
  %dq_sz = getelementptr inbounds %struct.rsa_key, ptr %9, i32 0, i32 14, !dbg !320
  store i64 %8, ptr %dq_sz, align 8, !dbg !321
  store i32 0, ptr %retval, align 4, !dbg !322
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !322

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !323
  %10 = load i32, ptr %retval, align 4, !dbg !323
  ret i32 %10, !dbg !323
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_get_qinv(ptr noundef %context, i64 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i64 noundef %vlen) #0 align 16 !dbg !324 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca ptr, align 8
  %hdrlen.addr = alloca i64, align 8
  %tag.addr = alloca i8, align 1
  %value.addr = alloca ptr, align 8
  %vlen.addr = alloca i64, align 8
  %key = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !326, metadata !DIExpression()), !dbg !332
  store i64 %hdrlen, ptr %hdrlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdrlen.addr, metadata !327, metadata !DIExpression()), !dbg !333
  store i8 %tag, ptr %tag.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !328, metadata !DIExpression()), !dbg !334
  store ptr %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !329, metadata !DIExpression()), !dbg !335
  store i64 %vlen, ptr %vlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vlen.addr, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #4, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %key, metadata !331, metadata !DIExpression()), !dbg !338
  %0 = load ptr, ptr %context.addr, align 8, !dbg !339
  store ptr %0, ptr %key, align 8, !dbg !338
  %1 = load ptr, ptr %value.addr, align 8, !dbg !340
  %tobool = icmp ne ptr %1, null, !dbg !340
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !342

lor.lhs.false:                                    ; preds = %entry
  %2 = load i64, ptr %vlen.addr, align 8, !dbg !343
  %tobool1 = icmp ne i64 %2, 0, !dbg !343
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !344

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i64, ptr %vlen.addr, align 8, !dbg !345
  %4 = load ptr, ptr %key, align 8, !dbg !346
  %n_sz = getelementptr inbounds %struct.rsa_key, ptr %4, i32 0, i32 8, !dbg !347
  %5 = load i64, ptr %n_sz, align 8, !dbg !347
  %cmp = icmp ugt i64 %3, %5, !dbg !348
  br i1 %cmp, label %if.then, label %if.end, !dbg !349

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !350
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !350

if.end:                                           ; preds = %lor.lhs.false2
  %6 = load ptr, ptr %value.addr, align 8, !dbg !351
  %7 = load ptr, ptr %key, align 8, !dbg !352
  %qinv = getelementptr inbounds %struct.rsa_key, ptr %7, i32 0, i32 7, !dbg !353
  store ptr %6, ptr %qinv, align 8, !dbg !354
  %8 = load i64, ptr %vlen.addr, align 8, !dbg !355
  %9 = load ptr, ptr %key, align 8, !dbg !356
  %qinv_sz = getelementptr inbounds %struct.rsa_key, ptr %9, i32 0, i32 15, !dbg !357
  store i64 %8, ptr %qinv_sz, align 8, !dbg !358
  store i32 0, ptr %retval, align 4, !dbg !359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !359

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #4, !dbg !360
  %10 = load i32, ptr %retval, align 4, !dbg !360
  ret i32 %10, !dbg !360
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_parse_pub_key(ptr noundef %rsa_key, ptr noundef %key, i32 noundef %key_len) #0 align 16 !dbg !361 {
entry:
  %rsa_key.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %key_len.addr = alloca i32, align 4
  store ptr %rsa_key, ptr %rsa_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsa_key.addr, metadata !366, metadata !DIExpression()), !dbg !369
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !367, metadata !DIExpression()), !dbg !370
  store i32 %key_len, ptr %key_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key_len.addr, metadata !368, metadata !DIExpression()), !dbg !371
  %0 = load ptr, ptr %rsa_key.addr, align 8, !dbg !372
  %1 = load ptr, ptr %key.addr, align 8, !dbg !373
  %2 = load i32, ptr %key_len.addr, align 4, !dbg !374
  %conv = zext i32 %2 to i64, !dbg !374
  %call = call i32 @asn1_ber_decoder(ptr noundef @rsapubkey_decoder, ptr noundef %0, ptr noundef %1, i64 noundef %conv) #5, !dbg !375
  ret i32 %call, !dbg !376
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !377 dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rsa_parse_priv_key(ptr noundef %rsa_key, ptr noundef %key, i32 noundef %key_len) #0 align 16 !dbg !386 {
entry:
  %rsa_key.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  %key_len.addr = alloca i32, align 4
  store ptr %rsa_key, ptr %rsa_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rsa_key.addr, metadata !388, metadata !DIExpression()), !dbg !391
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !389, metadata !DIExpression()), !dbg !392
  store i32 %key_len, ptr %key_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key_len.addr, metadata !390, metadata !DIExpression()), !dbg !393
  %0 = load ptr, ptr %rsa_key.addr, align 8, !dbg !394
  %1 = load ptr, ptr %key.addr, align 8, !dbg !395
  %2 = load i32, ptr %key_len.addr, align 4, !dbg !396
  %conv = zext i32 %2 to i64, !dbg !396
  %call = call i32 @asn1_ber_decoder(ptr noundef @rsaprivkey_decoder, ptr noundef %0, ptr noundef %1, i64 noundef %conv) #5, !dbg !397
  ret i32 %call, !dbg !398
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rsa_parse_pub_key3", scope: !2, file: !3, line: 167, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.rsa_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22crypto/rsa_generic\22 -D KBUILD_BASENAME=\22rsa_helper\22 -D KBUILD_MODNAME=\22rsa_generic\22 -D __KBUILD_MODNAME=kmod_rsa_generic -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/rsa_helper.ll crypto/rsa_helper.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "crypto/rsa_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c908e09d576ce8c26c8ee4fa434d5589")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rsa_parse_priv_key4", scope: !2, file: !3, line: 186, type: !5, isLocal: true, isDefinition: true)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"function_return_thunk_extern", i32 1}
!14 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!15 = !{i32 1, !"Code Model", i32 2}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!18 = distinct !DISubprogram(name: "rsa_get_n", scope: !3, file: !3, line: 16, type: !19, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !5, !22, !28, !29, !22}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 61, baseType: !24)
!23 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !25, line: 72, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !25, line: 16, baseType: !27)
!27 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!31 = !{!32, !33, !34, !35, !36, !37, !64, !65}
!32 = !DILocalVariable(name: "context", arg: 1, scope: !18, file: !3, line: 16, type: !5)
!33 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !18, file: !3, line: 16, type: !22)
!34 = !DILocalVariable(name: "tag", arg: 3, scope: !18, file: !3, line: 16, type: !28)
!35 = !DILocalVariable(name: "value", arg: 4, scope: !18, file: !3, line: 17, type: !29)
!36 = !DILocalVariable(name: "vlen", arg: 5, scope: !18, file: !3, line: 17, type: !22)
!37 = !DILocalVariable(name: "key", scope: !18, file: !3, line: 19, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rsa_key", file: !40, line: 31, size: 1024, elements: !41)
!40 = !DIFile(filename: "./include/crypto/internal/rsa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d207977c1299aea2aeb8cbf516bda31f")
!41 = !{!42, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !39, file: !40, line: 32, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !46, line: 17, baseType: !47)
!46 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !48, line: 21, baseType: !28)
!48 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!49 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !39, file: !40, line: 33, baseType: !43, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !39, file: !40, line: 34, baseType: !43, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !39, file: !40, line: 35, baseType: !43, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !39, file: !40, line: 36, baseType: !43, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "dp", scope: !39, file: !40, line: 37, baseType: !43, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "dq", scope: !39, file: !40, line: 38, baseType: !43, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "qinv", scope: !39, file: !40, line: 39, baseType: !43, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "n_sz", scope: !39, file: !40, line: 40, baseType: !22, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "e_sz", scope: !39, file: !40, line: 41, baseType: !22, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "d_sz", scope: !39, file: !40, line: 42, baseType: !22, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "p_sz", scope: !39, file: !40, line: 43, baseType: !22, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "q_sz", scope: !39, file: !40, line: 44, baseType: !22, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "dp_sz", scope: !39, file: !40, line: 45, baseType: !22, size: 64, offset: 832)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sz", scope: !39, file: !40, line: 46, baseType: !22, size: 64, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "qinv_sz", scope: !39, file: !40, line: 47, baseType: !22, size: 64, offset: 960)
!64 = !DILocalVariable(name: "ptr", scope: !18, file: !3, line: 20, type: !43)
!65 = !DILocalVariable(name: "n_sz", scope: !18, file: !3, line: 21, type: !22)
!66 = !DILocation(line: 16, column: 21, scope: !18)
!67 = !DILocation(line: 16, column: 37, scope: !18)
!68 = !DILocation(line: 16, column: 59, scope: !18)
!69 = !DILocation(line: 17, column: 20, scope: !18)
!70 = !DILocation(line: 17, column: 34, scope: !18)
!71 = !DILocation(line: 19, column: 2, scope: !18)
!72 = !DILocation(line: 19, column: 18, scope: !18)
!73 = !DILocation(line: 19, column: 24, scope: !18)
!74 = !DILocation(line: 20, column: 2, scope: !18)
!75 = !DILocation(line: 20, column: 12, scope: !18)
!76 = !DILocation(line: 20, column: 18, scope: !18)
!77 = !DILocation(line: 21, column: 2, scope: !18)
!78 = !DILocation(line: 21, column: 9, scope: !18)
!79 = !DILocation(line: 21, column: 16, scope: !18)
!80 = !DILocation(line: 24, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !18, file: !3, line: 24, column: 6)
!82 = !DILocation(line: 24, column: 13, scope: !81)
!83 = !DILocation(line: 24, column: 17, scope: !81)
!84 = !DILocation(line: 24, column: 6, scope: !18)
!85 = !DILocation(line: 25, column: 3, scope: !81)
!86 = !DILocation(line: 40, column: 11, scope: !18)
!87 = !DILocation(line: 40, column: 2, scope: !18)
!88 = !DILocation(line: 40, column: 7, scope: !18)
!89 = !DILocation(line: 40, column: 9, scope: !18)
!90 = !DILocation(line: 41, column: 14, scope: !18)
!91 = !DILocation(line: 41, column: 2, scope: !18)
!92 = !DILocation(line: 41, column: 7, scope: !18)
!93 = !DILocation(line: 41, column: 12, scope: !18)
!94 = !DILocation(line: 43, column: 2, scope: !18)
!95 = !DILocation(line: 44, column: 1, scope: !18)
!96 = distinct !DISubprogram(name: "rsa_get_e", scope: !3, file: !3, line: 46, type: !19, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!97 = !{!98, !99, !100, !101, !102, !103}
!98 = !DILocalVariable(name: "context", arg: 1, scope: !96, file: !3, line: 46, type: !5)
!99 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !96, file: !3, line: 46, type: !22)
!100 = !DILocalVariable(name: "tag", arg: 3, scope: !96, file: !3, line: 46, type: !28)
!101 = !DILocalVariable(name: "value", arg: 4, scope: !96, file: !3, line: 47, type: !29)
!102 = !DILocalVariable(name: "vlen", arg: 5, scope: !96, file: !3, line: 47, type: !22)
!103 = !DILocalVariable(name: "key", scope: !96, file: !3, line: 49, type: !38)
!104 = !DILocation(line: 46, column: 21, scope: !96)
!105 = !DILocation(line: 46, column: 37, scope: !96)
!106 = !DILocation(line: 46, column: 59, scope: !96)
!107 = !DILocation(line: 47, column: 20, scope: !96)
!108 = !DILocation(line: 47, column: 34, scope: !96)
!109 = !DILocation(line: 49, column: 2, scope: !96)
!110 = !DILocation(line: 49, column: 18, scope: !96)
!111 = !DILocation(line: 49, column: 24, scope: !96)
!112 = !DILocation(line: 52, column: 7, scope: !113)
!113 = distinct !DILexicalBlock(scope: !96, file: !3, line: 52, column: 6)
!114 = !DILocation(line: 52, column: 13, scope: !113)
!115 = !DILocation(line: 52, column: 17, scope: !113)
!116 = !DILocation(line: 52, column: 22, scope: !113)
!117 = !DILocation(line: 52, column: 27, scope: !113)
!118 = !DILocation(line: 52, column: 31, scope: !113)
!119 = !DILocation(line: 52, column: 36, scope: !113)
!120 = !DILocation(line: 52, column: 39, scope: !113)
!121 = !DILocation(line: 52, column: 46, scope: !113)
!122 = !DILocation(line: 52, column: 51, scope: !113)
!123 = !DILocation(line: 52, column: 44, scope: !113)
!124 = !DILocation(line: 52, column: 6, scope: !96)
!125 = !DILocation(line: 53, column: 3, scope: !113)
!126 = !DILocation(line: 55, column: 11, scope: !96)
!127 = !DILocation(line: 55, column: 2, scope: !96)
!128 = !DILocation(line: 55, column: 7, scope: !96)
!129 = !DILocation(line: 55, column: 9, scope: !96)
!130 = !DILocation(line: 56, column: 14, scope: !96)
!131 = !DILocation(line: 56, column: 2, scope: !96)
!132 = !DILocation(line: 56, column: 7, scope: !96)
!133 = !DILocation(line: 56, column: 12, scope: !96)
!134 = !DILocation(line: 58, column: 2, scope: !96)
!135 = !DILocation(line: 59, column: 1, scope: !96)
!136 = distinct !DISubprogram(name: "rsa_get_d", scope: !3, file: !3, line: 61, type: !19, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!137 = !{!138, !139, !140, !141, !142, !143}
!138 = !DILocalVariable(name: "context", arg: 1, scope: !136, file: !3, line: 61, type: !5)
!139 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !136, file: !3, line: 61, type: !22)
!140 = !DILocalVariable(name: "tag", arg: 3, scope: !136, file: !3, line: 61, type: !28)
!141 = !DILocalVariable(name: "value", arg: 4, scope: !136, file: !3, line: 62, type: !29)
!142 = !DILocalVariable(name: "vlen", arg: 5, scope: !136, file: !3, line: 62, type: !22)
!143 = !DILocalVariable(name: "key", scope: !136, file: !3, line: 64, type: !38)
!144 = !DILocation(line: 61, column: 21, scope: !136)
!145 = !DILocation(line: 61, column: 37, scope: !136)
!146 = !DILocation(line: 61, column: 59, scope: !136)
!147 = !DILocation(line: 62, column: 20, scope: !136)
!148 = !DILocation(line: 62, column: 34, scope: !136)
!149 = !DILocation(line: 64, column: 2, scope: !136)
!150 = !DILocation(line: 64, column: 18, scope: !136)
!151 = !DILocation(line: 64, column: 24, scope: !136)
!152 = !DILocation(line: 67, column: 7, scope: !153)
!153 = distinct !DILexicalBlock(scope: !136, file: !3, line: 67, column: 6)
!154 = !DILocation(line: 67, column: 13, scope: !153)
!155 = !DILocation(line: 67, column: 17, scope: !153)
!156 = !DILocation(line: 67, column: 22, scope: !153)
!157 = !DILocation(line: 67, column: 27, scope: !153)
!158 = !DILocation(line: 67, column: 31, scope: !153)
!159 = !DILocation(line: 67, column: 36, scope: !153)
!160 = !DILocation(line: 67, column: 39, scope: !153)
!161 = !DILocation(line: 67, column: 46, scope: !153)
!162 = !DILocation(line: 67, column: 51, scope: !153)
!163 = !DILocation(line: 67, column: 44, scope: !153)
!164 = !DILocation(line: 67, column: 6, scope: !136)
!165 = !DILocation(line: 68, column: 3, scope: !153)
!166 = !DILocation(line: 70, column: 11, scope: !136)
!167 = !DILocation(line: 70, column: 2, scope: !136)
!168 = !DILocation(line: 70, column: 7, scope: !136)
!169 = !DILocation(line: 70, column: 9, scope: !136)
!170 = !DILocation(line: 71, column: 14, scope: !136)
!171 = !DILocation(line: 71, column: 2, scope: !136)
!172 = !DILocation(line: 71, column: 7, scope: !136)
!173 = !DILocation(line: 71, column: 12, scope: !136)
!174 = !DILocation(line: 73, column: 2, scope: !136)
!175 = !DILocation(line: 74, column: 1, scope: !136)
!176 = distinct !DISubprogram(name: "rsa_get_p", scope: !3, file: !3, line: 76, type: !19, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !177)
!177 = !{!178, !179, !180, !181, !182, !183}
!178 = !DILocalVariable(name: "context", arg: 1, scope: !176, file: !3, line: 76, type: !5)
!179 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !176, file: !3, line: 76, type: !22)
!180 = !DILocalVariable(name: "tag", arg: 3, scope: !176, file: !3, line: 76, type: !28)
!181 = !DILocalVariable(name: "value", arg: 4, scope: !176, file: !3, line: 77, type: !29)
!182 = !DILocalVariable(name: "vlen", arg: 5, scope: !176, file: !3, line: 77, type: !22)
!183 = !DILocalVariable(name: "key", scope: !176, file: !3, line: 79, type: !38)
!184 = !DILocation(line: 76, column: 21, scope: !176)
!185 = !DILocation(line: 76, column: 37, scope: !176)
!186 = !DILocation(line: 76, column: 59, scope: !176)
!187 = !DILocation(line: 77, column: 20, scope: !176)
!188 = !DILocation(line: 77, column: 34, scope: !176)
!189 = !DILocation(line: 79, column: 2, scope: !176)
!190 = !DILocation(line: 79, column: 18, scope: !176)
!191 = !DILocation(line: 79, column: 24, scope: !176)
!192 = !DILocation(line: 82, column: 7, scope: !193)
!193 = distinct !DILexicalBlock(scope: !176, file: !3, line: 82, column: 6)
!194 = !DILocation(line: 82, column: 13, scope: !193)
!195 = !DILocation(line: 82, column: 17, scope: !193)
!196 = !DILocation(line: 82, column: 22, scope: !193)
!197 = !DILocation(line: 82, column: 25, scope: !193)
!198 = !DILocation(line: 82, column: 32, scope: !193)
!199 = !DILocation(line: 82, column: 37, scope: !193)
!200 = !DILocation(line: 82, column: 30, scope: !193)
!201 = !DILocation(line: 82, column: 6, scope: !176)
!202 = !DILocation(line: 83, column: 3, scope: !193)
!203 = !DILocation(line: 85, column: 11, scope: !176)
!204 = !DILocation(line: 85, column: 2, scope: !176)
!205 = !DILocation(line: 85, column: 7, scope: !176)
!206 = !DILocation(line: 85, column: 9, scope: !176)
!207 = !DILocation(line: 86, column: 14, scope: !176)
!208 = !DILocation(line: 86, column: 2, scope: !176)
!209 = !DILocation(line: 86, column: 7, scope: !176)
!210 = !DILocation(line: 86, column: 12, scope: !176)
!211 = !DILocation(line: 88, column: 2, scope: !176)
!212 = !DILocation(line: 89, column: 1, scope: !176)
!213 = distinct !DISubprogram(name: "rsa_get_q", scope: !3, file: !3, line: 91, type: !19, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!214 = !{!215, !216, !217, !218, !219, !220}
!215 = !DILocalVariable(name: "context", arg: 1, scope: !213, file: !3, line: 91, type: !5)
!216 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !213, file: !3, line: 91, type: !22)
!217 = !DILocalVariable(name: "tag", arg: 3, scope: !213, file: !3, line: 91, type: !28)
!218 = !DILocalVariable(name: "value", arg: 4, scope: !213, file: !3, line: 92, type: !29)
!219 = !DILocalVariable(name: "vlen", arg: 5, scope: !213, file: !3, line: 92, type: !22)
!220 = !DILocalVariable(name: "key", scope: !213, file: !3, line: 94, type: !38)
!221 = !DILocation(line: 91, column: 21, scope: !213)
!222 = !DILocation(line: 91, column: 37, scope: !213)
!223 = !DILocation(line: 91, column: 59, scope: !213)
!224 = !DILocation(line: 92, column: 20, scope: !213)
!225 = !DILocation(line: 92, column: 34, scope: !213)
!226 = !DILocation(line: 94, column: 2, scope: !213)
!227 = !DILocation(line: 94, column: 18, scope: !213)
!228 = !DILocation(line: 94, column: 24, scope: !213)
!229 = !DILocation(line: 97, column: 7, scope: !230)
!230 = distinct !DILexicalBlock(scope: !213, file: !3, line: 97, column: 6)
!231 = !DILocation(line: 97, column: 13, scope: !230)
!232 = !DILocation(line: 97, column: 17, scope: !230)
!233 = !DILocation(line: 97, column: 22, scope: !230)
!234 = !DILocation(line: 97, column: 25, scope: !230)
!235 = !DILocation(line: 97, column: 32, scope: !230)
!236 = !DILocation(line: 97, column: 37, scope: !230)
!237 = !DILocation(line: 97, column: 30, scope: !230)
!238 = !DILocation(line: 97, column: 6, scope: !213)
!239 = !DILocation(line: 98, column: 3, scope: !230)
!240 = !DILocation(line: 100, column: 11, scope: !213)
!241 = !DILocation(line: 100, column: 2, scope: !213)
!242 = !DILocation(line: 100, column: 7, scope: !213)
!243 = !DILocation(line: 100, column: 9, scope: !213)
!244 = !DILocation(line: 101, column: 14, scope: !213)
!245 = !DILocation(line: 101, column: 2, scope: !213)
!246 = !DILocation(line: 101, column: 7, scope: !213)
!247 = !DILocation(line: 101, column: 12, scope: !213)
!248 = !DILocation(line: 103, column: 2, scope: !213)
!249 = !DILocation(line: 104, column: 1, scope: !213)
!250 = distinct !DISubprogram(name: "rsa_get_dp", scope: !3, file: !3, line: 106, type: !19, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !251)
!251 = !{!252, !253, !254, !255, !256, !257}
!252 = !DILocalVariable(name: "context", arg: 1, scope: !250, file: !3, line: 106, type: !5)
!253 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !250, file: !3, line: 106, type: !22)
!254 = !DILocalVariable(name: "tag", arg: 3, scope: !250, file: !3, line: 106, type: !28)
!255 = !DILocalVariable(name: "value", arg: 4, scope: !250, file: !3, line: 107, type: !29)
!256 = !DILocalVariable(name: "vlen", arg: 5, scope: !250, file: !3, line: 107, type: !22)
!257 = !DILocalVariable(name: "key", scope: !250, file: !3, line: 109, type: !38)
!258 = !DILocation(line: 106, column: 22, scope: !250)
!259 = !DILocation(line: 106, column: 38, scope: !250)
!260 = !DILocation(line: 106, column: 60, scope: !250)
!261 = !DILocation(line: 107, column: 21, scope: !250)
!262 = !DILocation(line: 107, column: 35, scope: !250)
!263 = !DILocation(line: 109, column: 2, scope: !250)
!264 = !DILocation(line: 109, column: 18, scope: !250)
!265 = !DILocation(line: 109, column: 24, scope: !250)
!266 = !DILocation(line: 112, column: 7, scope: !267)
!267 = distinct !DILexicalBlock(scope: !250, file: !3, line: 112, column: 6)
!268 = !DILocation(line: 112, column: 13, scope: !267)
!269 = !DILocation(line: 112, column: 17, scope: !267)
!270 = !DILocation(line: 112, column: 22, scope: !267)
!271 = !DILocation(line: 112, column: 25, scope: !267)
!272 = !DILocation(line: 112, column: 32, scope: !267)
!273 = !DILocation(line: 112, column: 37, scope: !267)
!274 = !DILocation(line: 112, column: 30, scope: !267)
!275 = !DILocation(line: 112, column: 6, scope: !250)
!276 = !DILocation(line: 113, column: 3, scope: !267)
!277 = !DILocation(line: 115, column: 12, scope: !250)
!278 = !DILocation(line: 115, column: 2, scope: !250)
!279 = !DILocation(line: 115, column: 7, scope: !250)
!280 = !DILocation(line: 115, column: 10, scope: !250)
!281 = !DILocation(line: 116, column: 15, scope: !250)
!282 = !DILocation(line: 116, column: 2, scope: !250)
!283 = !DILocation(line: 116, column: 7, scope: !250)
!284 = !DILocation(line: 116, column: 13, scope: !250)
!285 = !DILocation(line: 118, column: 2, scope: !250)
!286 = !DILocation(line: 119, column: 1, scope: !250)
!287 = distinct !DISubprogram(name: "rsa_get_dq", scope: !3, file: !3, line: 121, type: !19, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !288)
!288 = !{!289, !290, !291, !292, !293, !294}
!289 = !DILocalVariable(name: "context", arg: 1, scope: !287, file: !3, line: 121, type: !5)
!290 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !287, file: !3, line: 121, type: !22)
!291 = !DILocalVariable(name: "tag", arg: 3, scope: !287, file: !3, line: 121, type: !28)
!292 = !DILocalVariable(name: "value", arg: 4, scope: !287, file: !3, line: 122, type: !29)
!293 = !DILocalVariable(name: "vlen", arg: 5, scope: !287, file: !3, line: 122, type: !22)
!294 = !DILocalVariable(name: "key", scope: !287, file: !3, line: 124, type: !38)
!295 = !DILocation(line: 121, column: 22, scope: !287)
!296 = !DILocation(line: 121, column: 38, scope: !287)
!297 = !DILocation(line: 121, column: 60, scope: !287)
!298 = !DILocation(line: 122, column: 21, scope: !287)
!299 = !DILocation(line: 122, column: 35, scope: !287)
!300 = !DILocation(line: 124, column: 2, scope: !287)
!301 = !DILocation(line: 124, column: 18, scope: !287)
!302 = !DILocation(line: 124, column: 24, scope: !287)
!303 = !DILocation(line: 127, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !287, file: !3, line: 127, column: 6)
!305 = !DILocation(line: 127, column: 13, scope: !304)
!306 = !DILocation(line: 127, column: 17, scope: !304)
!307 = !DILocation(line: 127, column: 22, scope: !304)
!308 = !DILocation(line: 127, column: 25, scope: !304)
!309 = !DILocation(line: 127, column: 32, scope: !304)
!310 = !DILocation(line: 127, column: 37, scope: !304)
!311 = !DILocation(line: 127, column: 30, scope: !304)
!312 = !DILocation(line: 127, column: 6, scope: !287)
!313 = !DILocation(line: 128, column: 3, scope: !304)
!314 = !DILocation(line: 130, column: 12, scope: !287)
!315 = !DILocation(line: 130, column: 2, scope: !287)
!316 = !DILocation(line: 130, column: 7, scope: !287)
!317 = !DILocation(line: 130, column: 10, scope: !287)
!318 = !DILocation(line: 131, column: 15, scope: !287)
!319 = !DILocation(line: 131, column: 2, scope: !287)
!320 = !DILocation(line: 131, column: 7, scope: !287)
!321 = !DILocation(line: 131, column: 13, scope: !287)
!322 = !DILocation(line: 133, column: 2, scope: !287)
!323 = !DILocation(line: 134, column: 1, scope: !287)
!324 = distinct !DISubprogram(name: "rsa_get_qinv", scope: !3, file: !3, line: 136, type: !19, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!325 = !{!326, !327, !328, !329, !330, !331}
!326 = !DILocalVariable(name: "context", arg: 1, scope: !324, file: !3, line: 136, type: !5)
!327 = !DILocalVariable(name: "hdrlen", arg: 2, scope: !324, file: !3, line: 136, type: !22)
!328 = !DILocalVariable(name: "tag", arg: 3, scope: !324, file: !3, line: 136, type: !28)
!329 = !DILocalVariable(name: "value", arg: 4, scope: !324, file: !3, line: 137, type: !29)
!330 = !DILocalVariable(name: "vlen", arg: 5, scope: !324, file: !3, line: 137, type: !22)
!331 = !DILocalVariable(name: "key", scope: !324, file: !3, line: 139, type: !38)
!332 = !DILocation(line: 136, column: 24, scope: !324)
!333 = !DILocation(line: 136, column: 40, scope: !324)
!334 = !DILocation(line: 136, column: 62, scope: !324)
!335 = !DILocation(line: 137, column: 16, scope: !324)
!336 = !DILocation(line: 137, column: 30, scope: !324)
!337 = !DILocation(line: 139, column: 2, scope: !324)
!338 = !DILocation(line: 139, column: 18, scope: !324)
!339 = !DILocation(line: 139, column: 24, scope: !324)
!340 = !DILocation(line: 142, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !324, file: !3, line: 142, column: 6)
!342 = !DILocation(line: 142, column: 13, scope: !341)
!343 = !DILocation(line: 142, column: 17, scope: !341)
!344 = !DILocation(line: 142, column: 22, scope: !341)
!345 = !DILocation(line: 142, column: 25, scope: !341)
!346 = !DILocation(line: 142, column: 32, scope: !341)
!347 = !DILocation(line: 142, column: 37, scope: !341)
!348 = !DILocation(line: 142, column: 30, scope: !341)
!349 = !DILocation(line: 142, column: 6, scope: !324)
!350 = !DILocation(line: 143, column: 3, scope: !341)
!351 = !DILocation(line: 145, column: 14, scope: !324)
!352 = !DILocation(line: 145, column: 2, scope: !324)
!353 = !DILocation(line: 145, column: 7, scope: !324)
!354 = !DILocation(line: 145, column: 12, scope: !324)
!355 = !DILocation(line: 146, column: 17, scope: !324)
!356 = !DILocation(line: 146, column: 2, scope: !324)
!357 = !DILocation(line: 146, column: 7, scope: !324)
!358 = !DILocation(line: 146, column: 15, scope: !324)
!359 = !DILocation(line: 148, column: 2, scope: !324)
!360 = !DILocation(line: 149, column: 1, scope: !324)
!361 = distinct !DISubprogram(name: "rsa_parse_pub_key", scope: !3, file: !3, line: 162, type: !362, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !365)
!362 = !DISubroutineType(types: !363)
!363 = !{!21, !38, !29, !364}
!364 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!365 = !{!366, !367, !368}
!366 = !DILocalVariable(name: "rsa_key", arg: 1, scope: !361, file: !3, line: 162, type: !38)
!367 = !DILocalVariable(name: "key", arg: 2, scope: !361, file: !3, line: 162, type: !29)
!368 = !DILocalVariable(name: "key_len", arg: 3, scope: !361, file: !3, line: 163, type: !364)
!369 = !DILocation(line: 162, column: 39, scope: !361)
!370 = !DILocation(line: 162, column: 60, scope: !361)
!371 = !DILocation(line: 163, column: 22, scope: !361)
!372 = !DILocation(line: 165, column: 46, scope: !361)
!373 = !DILocation(line: 165, column: 55, scope: !361)
!374 = !DILocation(line: 165, column: 60, scope: !361)
!375 = !DILocation(line: 165, column: 9, scope: !361)
!376 = !DILocation(line: 165, column: 2, scope: !361)
!377 = !DISubprogram(name: "asn1_ber_decoder", scope: !378, file: !378, line: 15, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DIFile(filename: "./include/linux/asn1_decoder.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0ed918e13853195ee36d649ad69ca85c")
!379 = !DISubroutineType(types: !380)
!380 = !{!21, !381, !5, !384, !22}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "asn1_decoder", file: !378, line: 13, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!386 = distinct !DISubprogram(name: "rsa_parse_priv_key", scope: !3, file: !3, line: 181, type: !362, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!387 = !{!388, !389, !390}
!388 = !DILocalVariable(name: "rsa_key", arg: 1, scope: !386, file: !3, line: 181, type: !38)
!389 = !DILocalVariable(name: "key", arg: 2, scope: !386, file: !3, line: 181, type: !29)
!390 = !DILocalVariable(name: "key_len", arg: 3, scope: !386, file: !3, line: 182, type: !364)
!391 = !DILocation(line: 181, column: 40, scope: !386)
!392 = !DILocation(line: 181, column: 61, scope: !386)
!393 = !DILocation(line: 182, column: 23, scope: !386)
!394 = !DILocation(line: 184, column: 47, scope: !386)
!395 = !DILocation(line: 184, column: 56, scope: !386)
!396 = !DILocation(line: 184, column: 61, scope: !386)
!397 = !DILocation(line: 184, column: 9, scope: !386)
!398 = !DILocation(line: 184, column: 2, scope: !386)
