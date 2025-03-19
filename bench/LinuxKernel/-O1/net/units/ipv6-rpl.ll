; ModuleID = 'net/ipv6/rpl.c'
source_filename = "net/ipv6/rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_rpl_sr_hdr = type { i8, i8, i8, i8, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.anon.0, [0 x %struct.in6_addr] }
%struct.anon.0 = type {}
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
%struct.anon.2 = type { %struct.anon.3, [0 x i8] }
%struct.anon.3 = type {}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ipv6_rpl_srh_decompress(ptr noundef %outhdr, ptr noundef %inhdr, ptr noundef %daddr, i8 noundef zeroext %n) #0 align 16 !dbg !13 {
entry:
  %outhdr.addr = alloca ptr, align 8
  %inhdr.addr = alloca ptr, align 8
  %daddr.addr = alloca ptr, align 8
  %n.addr = alloca i8, align 1
  %i = alloca i32, align 4
  store ptr %outhdr, ptr %outhdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %outhdr.addr, metadata !82, metadata !DIExpression()), !dbg !88
  store ptr %inhdr, ptr %inhdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inhdr.addr, metadata !83, metadata !DIExpression()), !dbg !89
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !84, metadata !DIExpression()), !dbg !90
  store i8 %n, ptr %n.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !85, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %i, metadata !86, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %inhdr.addr, align 8, !dbg !94
  %nexthdr = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 0, !dbg !95
  %1 = load i8, ptr %nexthdr, align 1, !dbg !95
  %2 = load ptr, ptr %outhdr.addr, align 8, !dbg !96
  %nexthdr1 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %2, i32 0, i32 0, !dbg !97
  store i8 %1, ptr %nexthdr1, align 1, !dbg !98
  %3 = load i8, ptr %n.addr, align 1, !dbg !99
  %conv = zext i8 %3 to i32, !dbg !99
  %add = add i32 %conv, 1, !dbg !100
  %conv2 = sext i32 %add to i64, !dbg !101
  %mul = mul i64 %conv2, 16, !dbg !102
  %shr = lshr i64 %mul, 3, !dbg !103
  %conv3 = trunc i64 %shr to i8, !dbg !104
  %4 = load ptr, ptr %outhdr.addr, align 8, !dbg !105
  %hdrlen = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %4, i32 0, i32 1, !dbg !106
  store i8 %conv3, ptr %hdrlen, align 1, !dbg !107
  %5 = load ptr, ptr %outhdr.addr, align 8, !dbg !108
  %pad = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %5, i32 0, i32 4, !dbg !109
  %bf.load = load i32, ptr %pad, align 1, !dbg !110
  %bf.clear = and i32 %bf.load, -61441, !dbg !110
  %bf.set = or i32 %bf.clear, 0, !dbg !110
  store i32 %bf.set, ptr %pad, align 1, !dbg !110
  %6 = load ptr, ptr %inhdr.addr, align 8, !dbg !111
  %type = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %6, i32 0, i32 2, !dbg !112
  %7 = load i8, ptr %type, align 1, !dbg !112
  %8 = load ptr, ptr %outhdr.addr, align 8, !dbg !113
  %type4 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %8, i32 0, i32 2, !dbg !114
  store i8 %7, ptr %type4, align 1, !dbg !115
  %9 = load ptr, ptr %inhdr.addr, align 8, !dbg !116
  %segments_left = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %9, i32 0, i32 3, !dbg !117
  %10 = load i8, ptr %segments_left, align 1, !dbg !117
  %11 = load ptr, ptr %outhdr.addr, align 8, !dbg !118
  %segments_left5 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %11, i32 0, i32 3, !dbg !119
  store i8 %10, ptr %segments_left5, align 1, !dbg !120
  %12 = load ptr, ptr %outhdr.addr, align 8, !dbg !121
  %cmpri = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %12, i32 0, i32 4, !dbg !122
  %bf.load6 = load i32, ptr %cmpri, align 1, !dbg !123
  %bf.clear7 = and i32 %bf.load6, -241, !dbg !123
  %bf.set8 = or i32 %bf.clear7, 0, !dbg !123
  store i32 %bf.set8, ptr %cmpri, align 1, !dbg !123
  %13 = load ptr, ptr %outhdr.addr, align 8, !dbg !124
  %cmpre = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %13, i32 0, i32 4, !dbg !125
  %bf.load9 = load i32, ptr %cmpre, align 1, !dbg !126
  %bf.clear10 = and i32 %bf.load9, -16, !dbg !126
  %bf.set11 = or i32 %bf.clear10, 0, !dbg !126
  store i32 %bf.set11, ptr %cmpre, align 1, !dbg !126
  store i32 0, ptr %i, align 4, !dbg !127
  br label %for.cond, !dbg !129

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, ptr %i, align 4, !dbg !130
  %15 = load i8, ptr %n.addr, align 1, !dbg !132
  %conv12 = zext i8 %15 to i32, !dbg !132
  %cmp = icmp slt i32 %14, %conv12, !dbg !133
  br i1 %cmp, label %for.body, label %for.end, !dbg !134

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %outhdr.addr, align 8, !dbg !135
  %segments = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %16, i32 0, i32 5, !dbg !136
  %addr = getelementptr inbounds %struct.anon, ptr %segments, i32 0, i32 1, !dbg !136
  %17 = load i32, ptr %i, align 4, !dbg !137
  %idxprom = sext i32 %17 to i64, !dbg !135
  %arrayidx = getelementptr [0 x %struct.in6_addr], ptr %addr, i64 0, i64 %idxprom, !dbg !135
  %18 = load ptr, ptr %daddr.addr, align 8, !dbg !138
  %19 = load ptr, ptr %inhdr.addr, align 8, !dbg !139
  %20 = load i32, ptr %i, align 4, !dbg !140
  %call = call ptr @ipv6_rpl_segdata_pos(ptr noundef %19, i32 noundef %20) #5, !dbg !141
  %21 = load ptr, ptr %inhdr.addr, align 8, !dbg !142
  %cmpri14 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %21, i32 0, i32 4, !dbg !143
  %bf.load15 = load i32, ptr %cmpri14, align 1, !dbg !143
  %bf.lshr = lshr i32 %bf.load15, 4, !dbg !143
  %bf.clear16 = and i32 %bf.lshr, 15, !dbg !143
  %conv17 = trunc i32 %bf.clear16 to i8, !dbg !142
  call void @ipv6_rpl_addr_decompress(ptr noundef %arrayidx, ptr noundef %18, ptr noundef %call, i8 noundef zeroext %conv17) #5, !dbg !144
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %for.body
  %22 = load i32, ptr %i, align 4, !dbg !145
  %inc = add i32 %22, 1, !dbg !145
  store i32 %inc, ptr %i, align 4, !dbg !145
  br label %for.cond, !dbg !146, !llvm.loop !147

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %outhdr.addr, align 8, !dbg !151
  %segments18 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %23, i32 0, i32 5, !dbg !152
  %addr19 = getelementptr inbounds %struct.anon, ptr %segments18, i32 0, i32 1, !dbg !152
  %24 = load i8, ptr %n.addr, align 1, !dbg !153
  %idxprom20 = zext i8 %24 to i64, !dbg !151
  %arrayidx21 = getelementptr [0 x %struct.in6_addr], ptr %addr19, i64 0, i64 %idxprom20, !dbg !151
  %25 = load ptr, ptr %daddr.addr, align 8, !dbg !154
  %26 = load ptr, ptr %inhdr.addr, align 8, !dbg !155
  %27 = load i8, ptr %n.addr, align 1, !dbg !156
  %conv22 = zext i8 %27 to i32, !dbg !156
  %call23 = call ptr @ipv6_rpl_segdata_pos(ptr noundef %26, i32 noundef %conv22) #5, !dbg !157
  %28 = load ptr, ptr %inhdr.addr, align 8, !dbg !158
  %cmpre24 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %28, i32 0, i32 4, !dbg !159
  %bf.load25 = load i32, ptr %cmpre24, align 1, !dbg !159
  %bf.clear26 = and i32 %bf.load25, 15, !dbg !159
  %conv27 = trunc i32 %bf.clear26 to i8, !dbg !158
  call void @ipv6_rpl_addr_decompress(ptr noundef %arrayidx21, ptr noundef %25, ptr noundef %call23, i8 noundef zeroext %conv27) #5, !dbg !160
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !161
  ret void, !dbg !161
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ipv6_rpl_addr_decompress(ptr noundef %dst, ptr noundef %daddr, ptr noundef %post, i8 noundef zeroext %pfx) #0 align 16 !dbg !162 {
entry:
  %dst.addr = alloca ptr, align 8
  %daddr.addr = alloca ptr, align 8
  %post.addr = alloca ptr, align 8
  %pfx.addr = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !169, metadata !DIExpression()), !dbg !173
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !170, metadata !DIExpression()), !dbg !174
  store ptr %post, ptr %post.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %post.addr, metadata !171, metadata !DIExpression()), !dbg !175
  store i8 %pfx, ptr %pfx.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pfx.addr, metadata !172, metadata !DIExpression()), !dbg !176
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !177
  %1 = load ptr, ptr %daddr.addr, align 8, !dbg !178
  %2 = load i8, ptr %pfx.addr, align 1, !dbg !179
  %conv = zext i8 %2 to i64, !dbg !179
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %conv, i1 false), !dbg !180
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !181
  %in6_u = getelementptr inbounds %struct.in6_addr, ptr %3, i32 0, i32 0, !dbg !182
  %4 = load i8, ptr %pfx.addr, align 1, !dbg !183
  %idxprom = zext i8 %4 to i64, !dbg !181
  %arrayidx = getelementptr [16 x i8], ptr %in6_u, i64 0, i64 %idxprom, !dbg !181
  %5 = load ptr, ptr %post.addr, align 8, !dbg !184
  %6 = load i8, ptr %pfx.addr, align 1, !dbg !185
  %conv1 = zext i8 %6 to i64, !dbg !185
  %sub = sub i64 16, %conv1, !dbg !185
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %5, i64 %sub, i1 false), !dbg !186
  ret void, !dbg !187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ipv6_rpl_segdata_pos(ptr noundef %hdr, i32 noundef %i) #0 align 16 !dbg !188 {
entry:
  %hdr.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %hdr, ptr %hdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hdr.addr, metadata !192, metadata !DIExpression()), !dbg !194
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !193, metadata !DIExpression()), !dbg !195
  %0 = load ptr, ptr %hdr.addr, align 8, !dbg !196
  %segments = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %0, i32 0, i32 5, !dbg !197
  %data = getelementptr inbounds %struct.anon.2, ptr %segments, i32 0, i32 1, !dbg !197
  %1 = load i32, ptr %i.addr, align 4, !dbg !198
  %conv = sext i32 %1 to i64, !dbg !198
  %2 = load ptr, ptr %hdr.addr, align 8, !dbg !199
  %cmpri = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %2, i32 0, i32 4, !dbg !199
  %bf.load = load i32, ptr %cmpri, align 1, !dbg !199
  %bf.lshr = lshr i32 %bf.load, 4, !dbg !199
  %bf.clear = and i32 %bf.lshr, 15, !dbg !199
  %conv1 = zext i32 %bf.clear to i64, !dbg !199
  %sub = sub i64 16, %conv1, !dbg !199
  %mul = mul i64 %conv, %sub, !dbg !200
  %arrayidx = getelementptr [0 x i8], ptr %data, i64 0, i64 %mul, !dbg !196
  ret ptr %arrayidx, !dbg !201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ipv6_rpl_srh_compress(ptr noundef %outhdr, ptr noundef %inhdr, ptr noundef %daddr, i8 noundef zeroext %n) #0 align 16 !dbg !202 {
entry:
  %outhdr.addr = alloca ptr, align 8
  %inhdr.addr = alloca ptr, align 8
  %daddr.addr = alloca ptr, align 8
  %n.addr = alloca i8, align 1
  %cmpri = alloca i8, align 1
  %cmpre = alloca i8, align 1
  %seglen = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %outhdr, ptr %outhdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %outhdr.addr, metadata !204, metadata !DIExpression()), !dbg !218
  store ptr %inhdr, ptr %inhdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inhdr.addr, metadata !205, metadata !DIExpression()), !dbg !219
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !206, metadata !DIExpression()), !dbg !220
  store i8 %n, ptr %n.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !207, metadata !DIExpression()), !dbg !221
  call void @llvm.lifetime.start.p0(i64 1, ptr %cmpri) #4, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %cmpri, metadata !208, metadata !DIExpression()), !dbg !223
  call void @llvm.lifetime.start.p0(i64 1, ptr %cmpre) #4, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %cmpre, metadata !209, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 8, ptr %seglen) #4, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %seglen, metadata !210, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %i, metadata !217, metadata !DIExpression()), !dbg !228
  %0 = load ptr, ptr %inhdr.addr, align 8, !dbg !229
  %1 = load ptr, ptr %daddr.addr, align 8, !dbg !230
  %2 = load i8, ptr %n.addr, align 1, !dbg !231
  %call = call zeroext i8 @ipv6_rpl_srh_calc_cmpri(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #5, !dbg !232
  store i8 %call, ptr %cmpri, align 1, !dbg !233
  %3 = load ptr, ptr %daddr.addr, align 8, !dbg !234
  %4 = load ptr, ptr %inhdr.addr, align 8, !dbg !235
  %segments = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %4, i32 0, i32 5, !dbg !236
  %addr = getelementptr inbounds %struct.anon, ptr %segments, i32 0, i32 1, !dbg !236
  %5 = load i8, ptr %n.addr, align 1, !dbg !237
  %idxprom = zext i8 %5 to i64, !dbg !235
  %arrayidx = getelementptr [0 x %struct.in6_addr], ptr %addr, i64 0, i64 %idxprom, !dbg !235
  %call1 = call zeroext i8 @ipv6_rpl_srh_calc_cmpre(ptr noundef %3, ptr noundef %arrayidx) #5, !dbg !238
  store i8 %call1, ptr %cmpre, align 1, !dbg !239
  %6 = load ptr, ptr %inhdr.addr, align 8, !dbg !240
  %nexthdr = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %6, i32 0, i32 0, !dbg !241
  %7 = load i8, ptr %nexthdr, align 1, !dbg !241
  %8 = load ptr, ptr %outhdr.addr, align 8, !dbg !242
  %nexthdr2 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %8, i32 0, i32 0, !dbg !243
  store i8 %7, ptr %nexthdr2, align 1, !dbg !244
  %9 = load i8, ptr %n.addr, align 1, !dbg !245
  %conv = zext i8 %9 to i64, !dbg !245
  %10 = load i8, ptr %cmpri, align 1, !dbg !246
  %conv3 = zext i8 %10 to i64, !dbg !246
  %sub = sub i64 16, %conv3, !dbg !246
  %mul = mul i64 %conv, %sub, !dbg !247
  %11 = load i8, ptr %cmpre, align 1, !dbg !248
  %conv4 = zext i8 %11 to i64, !dbg !248
  %sub5 = sub i64 16, %conv4, !dbg !248
  %add = add i64 %mul, %sub5, !dbg !249
  store i64 %add, ptr %seglen, align 8, !dbg !250
  %12 = load i64, ptr %seglen, align 8, !dbg !251
  %shr = lshr i64 %12, 3, !dbg !252
  %conv6 = trunc i64 %shr to i8, !dbg !251
  %13 = load ptr, ptr %outhdr.addr, align 8, !dbg !253
  %hdrlen = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %13, i32 0, i32 1, !dbg !254
  store i8 %conv6, ptr %hdrlen, align 1, !dbg !255
  %14 = load i64, ptr %seglen, align 8, !dbg !256
  %and = and i64 %14, 7, !dbg !258
  %tobool = icmp ne i64 %and, 0, !dbg !258
  br i1 %tobool, label %if.then, label %if.else, !dbg !259

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr %outhdr.addr, align 8, !dbg !260
  %hdrlen7 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %15, i32 0, i32 1, !dbg !262
  %16 = load i8, ptr %hdrlen7, align 1, !dbg !263
  %inc = add i8 %16, 1, !dbg !263
  store i8 %inc, ptr %hdrlen7, align 1, !dbg !263
  %17 = load i64, ptr %seglen, align 8, !dbg !264
  %and8 = and i64 %17, 7, !dbg !265
  %sub9 = sub i64 8, %and8, !dbg !266
  %conv10 = trunc i64 %sub9 to i32, !dbg !267
  %18 = load ptr, ptr %outhdr.addr, align 8, !dbg !268
  %pad = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %18, i32 0, i32 4, !dbg !269
  %bf.load = load i32, ptr %pad, align 1, !dbg !270
  %bf.value = and i32 %conv10, 15, !dbg !270
  %bf.shl = shl i32 %bf.value, 12, !dbg !270
  %bf.clear = and i32 %bf.load, -61441, !dbg !270
  %bf.set = or i32 %bf.clear, %bf.shl, !dbg !270
  store i32 %bf.set, ptr %pad, align 1, !dbg !270
  br label %if.end, !dbg !271

if.else:                                          ; preds = %entry
  %19 = load ptr, ptr %outhdr.addr, align 8, !dbg !272
  %pad11 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %19, i32 0, i32 4, !dbg !274
  %bf.load12 = load i32, ptr %pad11, align 1, !dbg !275
  %bf.clear13 = and i32 %bf.load12, -61441, !dbg !275
  %bf.set14 = or i32 %bf.clear13, 0, !dbg !275
  store i32 %bf.set14, ptr %pad11, align 1, !dbg !275
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %20 = load ptr, ptr %inhdr.addr, align 8, !dbg !276
  %type = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %20, i32 0, i32 2, !dbg !277
  %21 = load i8, ptr %type, align 1, !dbg !277
  %22 = load ptr, ptr %outhdr.addr, align 8, !dbg !278
  %type15 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %22, i32 0, i32 2, !dbg !279
  store i8 %21, ptr %type15, align 1, !dbg !280
  %23 = load ptr, ptr %inhdr.addr, align 8, !dbg !281
  %segments_left = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %23, i32 0, i32 3, !dbg !282
  %24 = load i8, ptr %segments_left, align 1, !dbg !282
  %25 = load ptr, ptr %outhdr.addr, align 8, !dbg !283
  %segments_left16 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %25, i32 0, i32 3, !dbg !284
  store i8 %24, ptr %segments_left16, align 1, !dbg !285
  %26 = load i8, ptr %cmpri, align 1, !dbg !286
  %conv17 = zext i8 %26 to i32, !dbg !286
  %27 = load ptr, ptr %outhdr.addr, align 8, !dbg !287
  %cmpri18 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %27, i32 0, i32 4, !dbg !288
  %bf.load19 = load i32, ptr %cmpri18, align 1, !dbg !289
  %bf.value20 = and i32 %conv17, 15, !dbg !289
  %bf.shl21 = shl i32 %bf.value20, 4, !dbg !289
  %bf.clear22 = and i32 %bf.load19, -241, !dbg !289
  %bf.set23 = or i32 %bf.clear22, %bf.shl21, !dbg !289
  store i32 %bf.set23, ptr %cmpri18, align 1, !dbg !289
  %28 = load i8, ptr %cmpre, align 1, !dbg !290
  %conv24 = zext i8 %28 to i32, !dbg !290
  %29 = load ptr, ptr %outhdr.addr, align 8, !dbg !291
  %cmpre25 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %29, i32 0, i32 4, !dbg !292
  %bf.load26 = load i32, ptr %cmpre25, align 1, !dbg !293
  %bf.value27 = and i32 %conv24, 15, !dbg !293
  %bf.clear28 = and i32 %bf.load26, -16, !dbg !293
  %bf.set29 = or i32 %bf.clear28, %bf.value27, !dbg !293
  store i32 %bf.set29, ptr %cmpre25, align 1, !dbg !293
  store i32 0, ptr %i, align 4, !dbg !294
  br label %for.cond, !dbg !296

for.cond:                                         ; preds = %for.inc, %if.end
  %30 = load i32, ptr %i, align 4, !dbg !297
  %31 = load i8, ptr %n.addr, align 1, !dbg !299
  %conv30 = zext i8 %31 to i32, !dbg !299
  %cmp = icmp slt i32 %30, %conv30, !dbg !300
  br i1 %cmp, label %for.body, label %for.end, !dbg !301

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %outhdr.addr, align 8, !dbg !302
  %33 = load i32, ptr %i, align 4, !dbg !303
  %call32 = call ptr @ipv6_rpl_segdata_pos(ptr noundef %32, i32 noundef %33) #5, !dbg !304
  %34 = load ptr, ptr %inhdr.addr, align 8, !dbg !305
  %segments33 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %34, i32 0, i32 5, !dbg !306
  %addr34 = getelementptr inbounds %struct.anon, ptr %segments33, i32 0, i32 1, !dbg !306
  %35 = load i32, ptr %i, align 4, !dbg !307
  %idxprom35 = sext i32 %35 to i64, !dbg !305
  %arrayidx36 = getelementptr [0 x %struct.in6_addr], ptr %addr34, i64 0, i64 %idxprom35, !dbg !305
  %36 = load i8, ptr %cmpri, align 1, !dbg !308
  call void @ipv6_rpl_addr_compress(ptr noundef %call32, ptr noundef %arrayidx36, i8 noundef zeroext %36) #5, !dbg !309
  br label %for.inc, !dbg !309

for.inc:                                          ; preds = %for.body
  %37 = load i32, ptr %i, align 4, !dbg !310
  %inc37 = add i32 %37, 1, !dbg !310
  store i32 %inc37, ptr %i, align 4, !dbg !310
  br label %for.cond, !dbg !311, !llvm.loop !312

for.end:                                          ; preds = %for.cond
  %38 = load ptr, ptr %outhdr.addr, align 8, !dbg !314
  %39 = load i8, ptr %n.addr, align 1, !dbg !315
  %conv38 = zext i8 %39 to i32, !dbg !315
  %call39 = call ptr @ipv6_rpl_segdata_pos(ptr noundef %38, i32 noundef %conv38) #5, !dbg !316
  %40 = load ptr, ptr %inhdr.addr, align 8, !dbg !317
  %segments40 = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %40, i32 0, i32 5, !dbg !318
  %addr41 = getelementptr inbounds %struct.anon, ptr %segments40, i32 0, i32 1, !dbg !318
  %41 = load i8, ptr %n.addr, align 1, !dbg !319
  %idxprom42 = zext i8 %41 to i64, !dbg !317
  %arrayidx43 = getelementptr [0 x %struct.in6_addr], ptr %addr41, i64 0, i64 %idxprom42, !dbg !317
  %42 = load i8, ptr %cmpre, align 1, !dbg !320
  call void @ipv6_rpl_addr_compress(ptr noundef %call39, ptr noundef %arrayidx43, i8 noundef zeroext %42) #5, !dbg !321
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !322
  call void @llvm.lifetime.end.p0(i64 8, ptr %seglen) #4, !dbg !322
  call void @llvm.lifetime.end.p0(i64 1, ptr %cmpre) #4, !dbg !322
  call void @llvm.lifetime.end.p0(i64 1, ptr %cmpri) #4, !dbg !322
  ret void, !dbg !322
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @ipv6_rpl_srh_calc_cmpri(ptr noundef %inhdr, ptr noundef %daddr, i8 noundef zeroext %n) #0 align 16 !dbg !323 {
entry:
  %retval = alloca i8, align 1
  %inhdr.addr = alloca ptr, align 8
  %daddr.addr = alloca ptr, align 8
  %n.addr = alloca i8, align 1
  %plen = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inhdr, ptr %inhdr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inhdr.addr, metadata !327, metadata !DIExpression()), !dbg !332
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !328, metadata !DIExpression()), !dbg !333
  store i8 %n, ptr %n.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !329, metadata !DIExpression()), !dbg !334
  call void @llvm.lifetime.start.p0(i64 1, ptr %plen) #4, !dbg !335
  call void @llvm.dbg.declare(metadata ptr %plen, metadata !330, metadata !DIExpression()), !dbg !336
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !337
  call void @llvm.dbg.declare(metadata ptr %i, metadata !331, metadata !DIExpression()), !dbg !338
  store i8 0, ptr %plen, align 1, !dbg !339
  br label %for.cond, !dbg !341

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i8, ptr %plen, align 1, !dbg !342
  %conv = zext i8 %0 to i64, !dbg !342
  %cmp = icmp ult i64 %conv, 16, !dbg !344
  br i1 %cmp, label %for.body, label %for.end18, !dbg !345

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !346
  br label %for.cond2, !dbg !349

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %i, align 4, !dbg !350
  %2 = load i8, ptr %n.addr, align 1, !dbg !352
  %conv3 = zext i8 %2 to i32, !dbg !352
  %cmp4 = icmp slt i32 %1, %conv3, !dbg !353
  br i1 %cmp4, label %for.body6, label %for.end, !dbg !354

for.body6:                                        ; preds = %for.cond2
  %3 = load ptr, ptr %daddr.addr, align 8, !dbg !355
  %in6_u = getelementptr inbounds %struct.in6_addr, ptr %3, i32 0, i32 0, !dbg !358
  %4 = load i8, ptr %plen, align 1, !dbg !359
  %idxprom = zext i8 %4 to i64, !dbg !355
  %arrayidx = getelementptr [16 x i8], ptr %in6_u, i64 0, i64 %idxprom, !dbg !355
  %5 = load i8, ptr %arrayidx, align 1, !dbg !355
  %conv7 = zext i8 %5 to i32, !dbg !355
  %6 = load ptr, ptr %inhdr.addr, align 8, !dbg !360
  %segments = getelementptr inbounds %struct.ipv6_rpl_sr_hdr, ptr %6, i32 0, i32 5, !dbg !361
  %addr = getelementptr inbounds %struct.anon, ptr %segments, i32 0, i32 1, !dbg !361
  %7 = load i32, ptr %i, align 4, !dbg !362
  %idxprom8 = sext i32 %7 to i64, !dbg !360
  %arrayidx9 = getelementptr [0 x %struct.in6_addr], ptr %addr, i64 0, i64 %idxprom8, !dbg !360
  %in6_u10 = getelementptr inbounds %struct.in6_addr, ptr %arrayidx9, i32 0, i32 0, !dbg !363
  %8 = load i8, ptr %plen, align 1, !dbg !364
  %idxprom11 = zext i8 %8 to i64, !dbg !360
  %arrayidx12 = getelementptr [16 x i8], ptr %in6_u10, i64 0, i64 %idxprom11, !dbg !360
  %9 = load i8, ptr %arrayidx12, align 1, !dbg !360
  %conv13 = zext i8 %9 to i32, !dbg !360
  %cmp14 = icmp ne i32 %conv7, %conv13, !dbg !365
  br i1 %cmp14, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %for.body6
  %10 = load i8, ptr %plen, align 1, !dbg !367
  store i8 %10, ptr %retval, align 1, !dbg !368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !368

if.end:                                           ; preds = %for.body6
  br label %for.inc, !dbg !369

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %i, align 4, !dbg !370
  %inc = add i32 %11, 1, !dbg !370
  store i32 %inc, ptr %i, align 4, !dbg !370
  br label %for.cond2, !dbg !371, !llvm.loop !372

for.end:                                          ; preds = %for.cond2
  br label %for.inc16, !dbg !374

for.inc16:                                        ; preds = %for.end
  %12 = load i8, ptr %plen, align 1, !dbg !375
  %inc17 = add i8 %12, 1, !dbg !375
  store i8 %inc17, ptr %plen, align 1, !dbg !375
  br label %for.cond, !dbg !376, !llvm.loop !377

for.end18:                                        ; preds = %for.cond
  store i8 15, ptr %retval, align 1, !dbg !379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !379

cleanup:                                          ; preds = %for.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !380
  call void @llvm.lifetime.end.p0(i64 1, ptr %plen) #4, !dbg !380
  %13 = load i8, ptr %retval, align 1, !dbg !380
  ret i8 %13, !dbg !380
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @ipv6_rpl_srh_calc_cmpre(ptr noundef %daddr, ptr noundef %last_segment) #0 align 16 !dbg !381 {
entry:
  %retval = alloca i8, align 1
  %daddr.addr = alloca ptr, align 8
  %last_segment.addr = alloca ptr, align 8
  %plen = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %daddr, ptr %daddr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %daddr.addr, metadata !385, metadata !DIExpression()), !dbg !388
  store ptr %last_segment, ptr %last_segment.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %last_segment.addr, metadata !386, metadata !DIExpression()), !dbg !389
  call void @llvm.lifetime.start.p0(i64 4, ptr %plen) #4, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %plen, metadata !387, metadata !DIExpression()), !dbg !391
  store i32 0, ptr %plen, align 4, !dbg !392
  br label %for.cond, !dbg !394

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %plen, align 4, !dbg !395
  %conv = zext i32 %0 to i64, !dbg !395
  %cmp = icmp ult i64 %conv, 16, !dbg !397
  br i1 %cmp, label %for.body, label %for.end, !dbg !398

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %daddr.addr, align 8, !dbg !399
  %in6_u = getelementptr inbounds %struct.in6_addr, ptr %1, i32 0, i32 0, !dbg !402
  %2 = load i32, ptr %plen, align 4, !dbg !403
  %idxprom = zext i32 %2 to i64, !dbg !399
  %arrayidx = getelementptr [16 x i8], ptr %in6_u, i64 0, i64 %idxprom, !dbg !399
  %3 = load i8, ptr %arrayidx, align 1, !dbg !399
  %conv2 = zext i8 %3 to i32, !dbg !399
  %4 = load ptr, ptr %last_segment.addr, align 8, !dbg !404
  %in6_u3 = getelementptr inbounds %struct.in6_addr, ptr %4, i32 0, i32 0, !dbg !405
  %5 = load i32, ptr %plen, align 4, !dbg !406
  %idxprom4 = zext i32 %5 to i64, !dbg !404
  %arrayidx5 = getelementptr [16 x i8], ptr %in6_u3, i64 0, i64 %idxprom4, !dbg !404
  %6 = load i8, ptr %arrayidx5, align 1, !dbg !404
  %conv6 = zext i8 %6 to i32, !dbg !404
  %cmp7 = icmp ne i32 %conv2, %conv6, !dbg !407
  br i1 %cmp7, label %if.then, label %if.end, !dbg !408

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %plen, align 4, !dbg !409
  %conv9 = trunc i32 %7 to i8, !dbg !409
  store i8 %conv9, ptr %retval, align 1, !dbg !410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !410

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !411

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %plen, align 4, !dbg !412
  %inc = add i32 %8, 1, !dbg !412
  store i32 %inc, ptr %plen, align 4, !dbg !412
  br label %for.cond, !dbg !413, !llvm.loop !414

for.end:                                          ; preds = %for.cond
  store i8 15, ptr %retval, align 1, !dbg !416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !416

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %plen) #4, !dbg !417
  %9 = load i8, ptr %retval, align 1, !dbg !417
  ret i8 %9, !dbg !417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ipv6_rpl_addr_compress(ptr noundef %dst, ptr noundef %addr, i8 noundef zeroext %pfx) #0 align 16 !dbg !418 {
entry:
  %dst.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %pfx.addr = alloca i8, align 1
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !422, metadata !DIExpression()), !dbg !425
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !423, metadata !DIExpression()), !dbg !426
  store i8 %pfx, ptr %pfx.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %pfx.addr, metadata !424, metadata !DIExpression()), !dbg !427
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !428
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !429
  %in6_u = getelementptr inbounds %struct.in6_addr, ptr %1, i32 0, i32 0, !dbg !430
  %2 = load i8, ptr %pfx.addr, align 1, !dbg !431
  %idxprom = zext i8 %2 to i64, !dbg !429
  %arrayidx = getelementptr [16 x i8], ptr %in6_u, i64 0, i64 %idxprom, !dbg !429
  %3 = load i8, ptr %pfx.addr, align 1, !dbg !432
  %conv = zext i8 %3 to i64, !dbg !432
  %sub = sub i64 16, %conv, !dbg !432
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %arrayidx, i64 %sub, i1 false), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/ipv6/.rpl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/ipv6/ipv6\22 -D KBUILD_BASENAME=\22rpl\22 -D KBUILD_MODNAME=\22ipv6\22 -D __KBUILD_MODNAME=kmod_ipv6 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/ipv6/rpl.ll net/ipv6/rpl.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "net/ipv6/rpl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb3a95243382f3a6c8e6b850154cf569")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 8, !"cf-protection-branch", i32 1}
!8 = !{i32 4, !"function_return_thunk_extern", i32 1}
!9 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!10 = !{i32 1, !"Code Model", i32 2}
!11 = !{i32 1, !"override-stack-alignment", i32 8}
!12 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!13 = distinct !DISubprogram(name: "ipv6_rpl_srh_decompress", scope: !1, file: !1, line: 32, type: !14, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !77, !79, !23}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipv6_rpl_sr_hdr", file: !18, line: 19, size: 64, elements: !19)
!18 = !DIFile(filename: "./include/uapi/linux/rpl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "252c15ccefcf5db15b894aae6cc57331")
!19 = !{!20, !24, !25, !26, !27, !30, !31, !32, !33, !34}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !17, file: !18, line: 20, baseType: !21, size: 8)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !22, line: 21, baseType: !23)
!22 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!23 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "hdrlen", scope: !17, file: !18, line: 21, baseType: !21, size: 8, offset: 8)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !17, file: !18, line: 22, baseType: !21, size: 8, offset: 16)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "segments_left", scope: !17, file: !18, line: 23, baseType: !21, size: 8, offset: 24)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "cmpre", scope: !17, file: !18, line: 25, baseType: !28, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !22, line: 27, baseType: !29)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "cmpri", scope: !17, file: !18, line: 26, baseType: !28, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !17, file: !18, line: 27, baseType: !28, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !17, file: !18, line: 28, baseType: !28, size: 4, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !17, file: !18, line: 29, baseType: !28, size: 16, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "segments", scope: !17, file: !18, line: 42, baseType: !35, offset: 64)
!35 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !18, line: 39, elements: !36)
!36 = !{!37, !70}
!37 = !DIDerivedType(tag: DW_TAG_member, scope: !35, file: !18, line: 40, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !18, line: 40, elements: !39)
!39 = !{!40, !43}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_addr", scope: !38, file: !18, line: 40, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !38, file: !18, line: 40, elements: !42)
!42 = !{}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !38, file: !18, line: 40, baseType: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, elements: !68)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !46, line: 33, size: 128, elements: !47)
!46 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !45, file: !46, line: 40, baseType: !49, size: 128)
!49 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !46, line: 34, size: 128, elements: !50)
!50 = !{!51, !55, !63}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !49, file: !46, line: 35, baseType: !52, size: 128)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 128, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 16)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !49, file: !46, line: 37, baseType: !56, size: 128)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 128, elements: !61)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !58, line: 37, baseType: !59)
!58 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !22, line: 24, baseType: !60)
!60 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!61 = !{!62}
!62 = !DISubrange(count: 8)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !49, file: !46, line: 38, baseType: !64, size: 128)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 128, elements: !66)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !58, line: 39, baseType: !28)
!66 = !{!67}
!67 = !DISubrange(count: 4)
!68 = !{!69}
!69 = !DISubrange(count: -1)
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !35, file: !18, line: 41, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !18, line: 41, elements: !72)
!72 = !{!73, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_data", scope: !71, file: !18, line: 41, baseType: !74)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !71, file: !18, line: 41, elements: !42)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !71, file: !18, line: 41, baseType: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, elements: !68)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!81 = !{!82, !83, !84, !85, !86}
!82 = !DILocalVariable(name: "outhdr", arg: 1, scope: !13, file: !1, line: 32, type: !16)
!83 = !DILocalVariable(name: "inhdr", arg: 2, scope: !13, file: !1, line: 33, type: !77)
!84 = !DILocalVariable(name: "daddr", arg: 3, scope: !13, file: !1, line: 34, type: !79)
!85 = !DILocalVariable(name: "n", arg: 4, scope: !13, file: !1, line: 34, type: !23)
!86 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 36, type: !87)
!87 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!88 = !DILocation(line: 32, column: 54, scope: !13)
!89 = !DILocation(line: 33, column: 39, scope: !13)
!90 = !DILocation(line: 34, column: 32, scope: !13)
!91 = !DILocation(line: 34, column: 53, scope: !13)
!92 = !DILocation(line: 36, column: 2, scope: !13)
!93 = !DILocation(line: 36, column: 6, scope: !13)
!94 = !DILocation(line: 38, column: 20, scope: !13)
!95 = !DILocation(line: 38, column: 27, scope: !13)
!96 = !DILocation(line: 38, column: 2, scope: !13)
!97 = !DILocation(line: 38, column: 10, scope: !13)
!98 = !DILocation(line: 38, column: 18, scope: !13)
!99 = !DILocation(line: 39, column: 22, scope: !13)
!100 = !DILocation(line: 39, column: 24, scope: !13)
!101 = !DILocation(line: 39, column: 21, scope: !13)
!102 = !DILocation(line: 39, column: 29, scope: !13)
!103 = !DILocation(line: 39, column: 56, scope: !13)
!104 = !DILocation(line: 39, column: 19, scope: !13)
!105 = !DILocation(line: 39, column: 2, scope: !13)
!106 = !DILocation(line: 39, column: 10, scope: !13)
!107 = !DILocation(line: 39, column: 17, scope: !13)
!108 = !DILocation(line: 40, column: 2, scope: !13)
!109 = !DILocation(line: 40, column: 10, scope: !13)
!110 = !DILocation(line: 40, column: 14, scope: !13)
!111 = !DILocation(line: 41, column: 17, scope: !13)
!112 = !DILocation(line: 41, column: 24, scope: !13)
!113 = !DILocation(line: 41, column: 2, scope: !13)
!114 = !DILocation(line: 41, column: 10, scope: !13)
!115 = !DILocation(line: 41, column: 15, scope: !13)
!116 = !DILocation(line: 42, column: 26, scope: !13)
!117 = !DILocation(line: 42, column: 33, scope: !13)
!118 = !DILocation(line: 42, column: 2, scope: !13)
!119 = !DILocation(line: 42, column: 10, scope: !13)
!120 = !DILocation(line: 42, column: 24, scope: !13)
!121 = !DILocation(line: 43, column: 2, scope: !13)
!122 = !DILocation(line: 43, column: 10, scope: !13)
!123 = !DILocation(line: 43, column: 16, scope: !13)
!124 = !DILocation(line: 44, column: 2, scope: !13)
!125 = !DILocation(line: 44, column: 10, scope: !13)
!126 = !DILocation(line: 44, column: 16, scope: !13)
!127 = !DILocation(line: 46, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !13, file: !1, line: 46, column: 2)
!129 = !DILocation(line: 46, column: 7, scope: !128)
!130 = !DILocation(line: 46, column: 14, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 46, column: 2)
!132 = !DILocation(line: 46, column: 18, scope: !131)
!133 = !DILocation(line: 46, column: 16, scope: !131)
!134 = !DILocation(line: 46, column: 2, scope: !128)
!135 = !DILocation(line: 47, column: 29, scope: !131)
!136 = !DILocation(line: 47, column: 37, scope: !131)
!137 = !DILocation(line: 47, column: 49, scope: !131)
!138 = !DILocation(line: 47, column: 53, scope: !131)
!139 = !DILocation(line: 48, column: 28, scope: !131)
!140 = !DILocation(line: 48, column: 35, scope: !131)
!141 = !DILocation(line: 48, column: 7, scope: !131)
!142 = !DILocation(line: 49, column: 7, scope: !131)
!143 = !DILocation(line: 49, column: 14, scope: !131)
!144 = !DILocation(line: 47, column: 3, scope: !131)
!145 = !DILocation(line: 46, column: 22, scope: !131)
!146 = !DILocation(line: 46, column: 2, scope: !131)
!147 = distinct !{!147, !134, !148, !149, !150}
!148 = !DILocation(line: 49, column: 19, scope: !128)
!149 = !{!"llvm.loop.mustprogress"}
!150 = !{!"llvm.loop.unroll.disable"}
!151 = !DILocation(line: 51, column: 28, scope: !13)
!152 = !DILocation(line: 51, column: 36, scope: !13)
!153 = !DILocation(line: 51, column: 48, scope: !13)
!154 = !DILocation(line: 51, column: 52, scope: !13)
!155 = !DILocation(line: 52, column: 27, scope: !13)
!156 = !DILocation(line: 52, column: 34, scope: !13)
!157 = !DILocation(line: 52, column: 6, scope: !13)
!158 = !DILocation(line: 53, column: 6, scope: !13)
!159 = !DILocation(line: 53, column: 13, scope: !13)
!160 = !DILocation(line: 51, column: 2, scope: !13)
!161 = !DILocation(line: 54, column: 1, scope: !13)
!162 = distinct !DISubprogram(name: "ipv6_rpl_addr_decompress", scope: !1, file: !1, line: 13, type: !163, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165, !79, !166, !23}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!168 = !{!169, !170, !171, !172}
!169 = !DILocalVariable(name: "dst", arg: 1, scope: !162, file: !1, line: 13, type: !165)
!170 = !DILocalVariable(name: "daddr", arg: 2, scope: !162, file: !1, line: 14, type: !79)
!171 = !DILocalVariable(name: "post", arg: 3, scope: !162, file: !1, line: 15, type: !166)
!172 = !DILocalVariable(name: "pfx", arg: 4, scope: !162, file: !1, line: 15, type: !23)
!173 = !DILocation(line: 13, column: 55, scope: !162)
!174 = !DILocation(line: 14, column: 33, scope: !162)
!175 = !DILocation(line: 15, column: 22, scope: !162)
!176 = !DILocation(line: 15, column: 42, scope: !162)
!177 = !DILocation(line: 17, column: 9, scope: !162)
!178 = !DILocation(line: 17, column: 14, scope: !162)
!179 = !DILocation(line: 17, column: 21, scope: !162)
!180 = !DILocation(line: 17, column: 2, scope: !162)
!181 = !DILocation(line: 18, column: 10, scope: !162)
!182 = !DILocation(line: 18, column: 15, scope: !162)
!183 = !DILocation(line: 18, column: 23, scope: !162)
!184 = !DILocation(line: 18, column: 29, scope: !162)
!185 = !DILocation(line: 18, column: 35, scope: !162)
!186 = !DILocation(line: 18, column: 2, scope: !162)
!187 = !DILocation(line: 19, column: 1, scope: !162)
!188 = distinct !DISubprogram(name: "ipv6_rpl_segdata_pos", scope: !1, file: !1, line: 27, type: !189, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!3, !77, !87}
!191 = !{!192, !193}
!192 = !DILocalVariable(name: "hdr", arg: 1, scope: !188, file: !1, line: 27, type: !77)
!193 = !DILocalVariable(name: "i", arg: 2, scope: !188, file: !1, line: 27, type: !87)
!194 = !DILocation(line: 27, column: 65, scope: !188)
!195 = !DILocation(line: 27, column: 74, scope: !188)
!196 = !DILocation(line: 29, column: 18, scope: !188)
!197 = !DILocation(line: 29, column: 23, scope: !188)
!198 = !DILocation(line: 29, column: 35, scope: !188)
!199 = !DILocation(line: 29, column: 39, scope: !188)
!200 = !DILocation(line: 29, column: 37, scope: !188)
!201 = !DILocation(line: 29, column: 2, scope: !188)
!202 = distinct !DISubprogram(name: "ipv6_rpl_srh_compress", scope: !1, file: !1, line: 87, type: !14, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !203)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !217}
!204 = !DILocalVariable(name: "outhdr", arg: 1, scope: !202, file: !1, line: 87, type: !16)
!205 = !DILocalVariable(name: "inhdr", arg: 2, scope: !202, file: !1, line: 88, type: !77)
!206 = !DILocalVariable(name: "daddr", arg: 3, scope: !202, file: !1, line: 89, type: !79)
!207 = !DILocalVariable(name: "n", arg: 4, scope: !202, file: !1, line: 89, type: !23)
!208 = !DILocalVariable(name: "cmpri", scope: !202, file: !1, line: 91, type: !23)
!209 = !DILocalVariable(name: "cmpre", scope: !202, file: !1, line: 91, type: !23)
!210 = !DILocalVariable(name: "seglen", scope: !202, file: !1, line: 92, type: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !212, line: 61, baseType: !213)
!212 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !214, line: 72, baseType: !215)
!214 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !214, line: 16, baseType: !216)
!216 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!217 = !DILocalVariable(name: "i", scope: !202, file: !1, line: 93, type: !87)
!218 = !DILocation(line: 87, column: 52, scope: !202)
!219 = !DILocation(line: 88, column: 37, scope: !202)
!220 = !DILocation(line: 89, column: 30, scope: !202)
!221 = !DILocation(line: 89, column: 51, scope: !202)
!222 = !DILocation(line: 91, column: 2, scope: !202)
!223 = !DILocation(line: 91, column: 16, scope: !202)
!224 = !DILocation(line: 91, column: 23, scope: !202)
!225 = !DILocation(line: 92, column: 2, scope: !202)
!226 = !DILocation(line: 92, column: 9, scope: !202)
!227 = !DILocation(line: 93, column: 2, scope: !202)
!228 = !DILocation(line: 93, column: 6, scope: !202)
!229 = !DILocation(line: 95, column: 34, scope: !202)
!230 = !DILocation(line: 95, column: 41, scope: !202)
!231 = !DILocation(line: 95, column: 48, scope: !202)
!232 = !DILocation(line: 95, column: 10, scope: !202)
!233 = !DILocation(line: 95, column: 8, scope: !202)
!234 = !DILocation(line: 96, column: 34, scope: !202)
!235 = !DILocation(line: 96, column: 42, scope: !202)
!236 = !DILocation(line: 96, column: 49, scope: !202)
!237 = !DILocation(line: 96, column: 61, scope: !202)
!238 = !DILocation(line: 96, column: 10, scope: !202)
!239 = !DILocation(line: 96, column: 8, scope: !202)
!240 = !DILocation(line: 98, column: 20, scope: !202)
!241 = !DILocation(line: 98, column: 27, scope: !202)
!242 = !DILocation(line: 98, column: 2, scope: !202)
!243 = !DILocation(line: 98, column: 10, scope: !202)
!244 = !DILocation(line: 98, column: 18, scope: !202)
!245 = !DILocation(line: 99, column: 12, scope: !202)
!246 = !DILocation(line: 99, column: 16, scope: !202)
!247 = !DILocation(line: 99, column: 14, scope: !202)
!248 = !DILocation(line: 99, column: 43, scope: !202)
!249 = !DILocation(line: 99, column: 41, scope: !202)
!250 = !DILocation(line: 99, column: 9, scope: !202)
!251 = !DILocation(line: 100, column: 19, scope: !202)
!252 = !DILocation(line: 100, column: 26, scope: !202)
!253 = !DILocation(line: 100, column: 2, scope: !202)
!254 = !DILocation(line: 100, column: 10, scope: !202)
!255 = !DILocation(line: 100, column: 17, scope: !202)
!256 = !DILocation(line: 101, column: 6, scope: !257)
!257 = distinct !DILexicalBlock(scope: !202, file: !1, line: 101, column: 6)
!258 = !DILocation(line: 101, column: 13, scope: !257)
!259 = !DILocation(line: 101, column: 6, scope: !202)
!260 = !DILocation(line: 102, column: 3, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !1, line: 101, column: 20)
!262 = !DILocation(line: 102, column: 11, scope: !261)
!263 = !DILocation(line: 102, column: 17, scope: !261)
!264 = !DILocation(line: 103, column: 22, scope: !261)
!265 = !DILocation(line: 103, column: 29, scope: !261)
!266 = !DILocation(line: 103, column: 19, scope: !261)
!267 = !DILocation(line: 103, column: 17, scope: !261)
!268 = !DILocation(line: 103, column: 3, scope: !261)
!269 = !DILocation(line: 103, column: 11, scope: !261)
!270 = !DILocation(line: 103, column: 15, scope: !261)
!271 = !DILocation(line: 104, column: 2, scope: !261)
!272 = !DILocation(line: 105, column: 3, scope: !273)
!273 = distinct !DILexicalBlock(scope: !257, file: !1, line: 104, column: 9)
!274 = !DILocation(line: 105, column: 11, scope: !273)
!275 = !DILocation(line: 105, column: 15, scope: !273)
!276 = !DILocation(line: 107, column: 17, scope: !202)
!277 = !DILocation(line: 107, column: 24, scope: !202)
!278 = !DILocation(line: 107, column: 2, scope: !202)
!279 = !DILocation(line: 107, column: 10, scope: !202)
!280 = !DILocation(line: 107, column: 15, scope: !202)
!281 = !DILocation(line: 108, column: 26, scope: !202)
!282 = !DILocation(line: 108, column: 33, scope: !202)
!283 = !DILocation(line: 108, column: 2, scope: !202)
!284 = !DILocation(line: 108, column: 10, scope: !202)
!285 = !DILocation(line: 108, column: 24, scope: !202)
!286 = !DILocation(line: 109, column: 18, scope: !202)
!287 = !DILocation(line: 109, column: 2, scope: !202)
!288 = !DILocation(line: 109, column: 10, scope: !202)
!289 = !DILocation(line: 109, column: 16, scope: !202)
!290 = !DILocation(line: 110, column: 18, scope: !202)
!291 = !DILocation(line: 110, column: 2, scope: !202)
!292 = !DILocation(line: 110, column: 10, scope: !202)
!293 = !DILocation(line: 110, column: 16, scope: !202)
!294 = !DILocation(line: 112, column: 9, scope: !295)
!295 = distinct !DILexicalBlock(scope: !202, file: !1, line: 112, column: 2)
!296 = !DILocation(line: 112, column: 7, scope: !295)
!297 = !DILocation(line: 112, column: 14, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !1, line: 112, column: 2)
!299 = !DILocation(line: 112, column: 18, scope: !298)
!300 = !DILocation(line: 112, column: 16, scope: !298)
!301 = !DILocation(line: 112, column: 2, scope: !295)
!302 = !DILocation(line: 113, column: 47, scope: !298)
!303 = !DILocation(line: 113, column: 55, scope: !298)
!304 = !DILocation(line: 113, column: 26, scope: !298)
!305 = !DILocation(line: 114, column: 13, scope: !298)
!306 = !DILocation(line: 114, column: 20, scope: !298)
!307 = !DILocation(line: 114, column: 32, scope: !298)
!308 = !DILocation(line: 114, column: 36, scope: !298)
!309 = !DILocation(line: 113, column: 3, scope: !298)
!310 = !DILocation(line: 112, column: 22, scope: !298)
!311 = !DILocation(line: 112, column: 2, scope: !298)
!312 = distinct !{!312, !301, !313, !149, !150}
!313 = !DILocation(line: 114, column: 41, scope: !295)
!314 = !DILocation(line: 116, column: 46, scope: !202)
!315 = !DILocation(line: 116, column: 54, scope: !202)
!316 = !DILocation(line: 116, column: 25, scope: !202)
!317 = !DILocation(line: 117, column: 12, scope: !202)
!318 = !DILocation(line: 117, column: 19, scope: !202)
!319 = !DILocation(line: 117, column: 31, scope: !202)
!320 = !DILocation(line: 117, column: 35, scope: !202)
!321 = !DILocation(line: 116, column: 2, scope: !202)
!322 = !DILocation(line: 118, column: 1, scope: !202)
!323 = distinct !DISubprogram(name: "ipv6_rpl_srh_calc_cmpri", scope: !1, file: !1, line: 56, type: !324, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !326)
!324 = !DISubroutineType(types: !325)
!325 = !{!23, !77, !79, !23}
!326 = !{!327, !328, !329, !330, !331}
!327 = !DILocalVariable(name: "inhdr", arg: 1, scope: !323, file: !1, line: 56, type: !77)
!328 = !DILocalVariable(name: "daddr", arg: 2, scope: !323, file: !1, line: 57, type: !79)
!329 = !DILocalVariable(name: "n", arg: 3, scope: !323, file: !1, line: 58, type: !23)
!330 = !DILocalVariable(name: "plen", scope: !323, file: !1, line: 60, type: !23)
!331 = !DILocalVariable(name: "i", scope: !323, file: !1, line: 61, type: !87)
!332 = !DILocation(line: 56, column: 76, scope: !323)
!333 = !DILocation(line: 57, column: 34, scope: !323)
!334 = !DILocation(line: 58, column: 25, scope: !323)
!335 = !DILocation(line: 60, column: 2, scope: !323)
!336 = !DILocation(line: 60, column: 16, scope: !323)
!337 = !DILocation(line: 61, column: 2, scope: !323)
!338 = !DILocation(line: 61, column: 6, scope: !323)
!339 = !DILocation(line: 63, column: 12, scope: !340)
!340 = distinct !DILexicalBlock(scope: !323, file: !1, line: 63, column: 2)
!341 = !DILocation(line: 63, column: 7, scope: !340)
!342 = !DILocation(line: 63, column: 17, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !1, line: 63, column: 2)
!344 = !DILocation(line: 63, column: 22, scope: !343)
!345 = !DILocation(line: 63, column: 2, scope: !340)
!346 = !DILocation(line: 64, column: 10, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 64, column: 3)
!348 = distinct !DILexicalBlock(scope: !343, file: !1, line: 63, column: 48)
!349 = !DILocation(line: 64, column: 8, scope: !347)
!350 = !DILocation(line: 64, column: 15, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 64, column: 3)
!352 = !DILocation(line: 64, column: 19, scope: !351)
!353 = !DILocation(line: 64, column: 17, scope: !351)
!354 = !DILocation(line: 64, column: 3, scope: !347)
!355 = !DILocation(line: 65, column: 8, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 65, column: 8)
!357 = distinct !DILexicalBlock(scope: !351, file: !1, line: 64, column: 27)
!358 = !DILocation(line: 65, column: 15, scope: !356)
!359 = !DILocation(line: 65, column: 23, scope: !356)
!360 = !DILocation(line: 66, column: 8, scope: !356)
!361 = !DILocation(line: 66, column: 15, scope: !356)
!362 = !DILocation(line: 66, column: 27, scope: !356)
!363 = !DILocation(line: 66, column: 30, scope: !356)
!364 = !DILocation(line: 66, column: 38, scope: !356)
!365 = !DILocation(line: 65, column: 29, scope: !356)
!366 = !DILocation(line: 65, column: 8, scope: !357)
!367 = !DILocation(line: 67, column: 12, scope: !356)
!368 = !DILocation(line: 67, column: 5, scope: !356)
!369 = !DILocation(line: 68, column: 3, scope: !357)
!370 = !DILocation(line: 64, column: 23, scope: !351)
!371 = !DILocation(line: 64, column: 3, scope: !351)
!372 = distinct !{!372, !354, !373, !149, !150}
!373 = !DILocation(line: 68, column: 3, scope: !347)
!374 = !DILocation(line: 69, column: 2, scope: !348)
!375 = !DILocation(line: 63, column: 44, scope: !343)
!376 = !DILocation(line: 63, column: 2, scope: !343)
!377 = distinct !{!377, !345, !378, !149, !150}
!378 = !DILocation(line: 69, column: 2, scope: !340)
!379 = !DILocation(line: 71, column: 2, scope: !323)
!380 = !DILocation(line: 72, column: 1, scope: !323)
!381 = distinct !DISubprogram(name: "ipv6_rpl_srh_calc_cmpre", scope: !1, file: !1, line: 74, type: !382, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!23, !79, !79}
!384 = !{!385, !386, !387}
!385 = !DILocalVariable(name: "daddr", arg: 1, scope: !381, file: !1, line: 74, type: !79)
!386 = !DILocalVariable(name: "last_segment", arg: 2, scope: !381, file: !1, line: 75, type: !79)
!387 = !DILocalVariable(name: "plen", scope: !381, file: !1, line: 77, type: !29)
!388 = !DILocation(line: 74, column: 69, scope: !381)
!389 = !DILocation(line: 75, column: 34, scope: !381)
!390 = !DILocation(line: 77, column: 2, scope: !381)
!391 = !DILocation(line: 77, column: 15, scope: !381)
!392 = !DILocation(line: 79, column: 12, scope: !393)
!393 = distinct !DILexicalBlock(scope: !381, file: !1, line: 79, column: 2)
!394 = !DILocation(line: 79, column: 7, scope: !393)
!395 = !DILocation(line: 79, column: 17, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !1, line: 79, column: 2)
!397 = !DILocation(line: 79, column: 22, scope: !396)
!398 = !DILocation(line: 79, column: 2, scope: !393)
!399 = !DILocation(line: 80, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 80, column: 7)
!401 = distinct !DILexicalBlock(scope: !396, file: !1, line: 79, column: 48)
!402 = !DILocation(line: 80, column: 14, scope: !400)
!403 = !DILocation(line: 80, column: 22, scope: !400)
!404 = !DILocation(line: 80, column: 31, scope: !400)
!405 = !DILocation(line: 80, column: 45, scope: !400)
!406 = !DILocation(line: 80, column: 53, scope: !400)
!407 = !DILocation(line: 80, column: 28, scope: !400)
!408 = !DILocation(line: 80, column: 7, scope: !401)
!409 = !DILocation(line: 81, column: 11, scope: !400)
!410 = !DILocation(line: 81, column: 4, scope: !400)
!411 = !DILocation(line: 82, column: 2, scope: !401)
!412 = !DILocation(line: 79, column: 44, scope: !396)
!413 = !DILocation(line: 79, column: 2, scope: !396)
!414 = distinct !{!414, !398, !415, !149, !150}
!415 = !DILocation(line: 82, column: 2, scope: !393)
!416 = !DILocation(line: 84, column: 2, scope: !381)
!417 = !DILocation(line: 85, column: 1, scope: !381)
!418 = distinct !DISubprogram(name: "ipv6_rpl_addr_compress", scope: !1, file: !1, line: 21, type: !419, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !421)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !3, !79, !23}
!421 = !{!422, !423, !424}
!422 = !DILocalVariable(name: "dst", arg: 1, scope: !418, file: !1, line: 21, type: !3)
!423 = !DILocalVariable(name: "addr", arg: 2, scope: !418, file: !1, line: 21, type: !79)
!424 = !DILocalVariable(name: "pfx", arg: 3, scope: !418, file: !1, line: 22, type: !23)
!425 = !DILocation(line: 21, column: 42, scope: !418)
!426 = !DILocation(line: 21, column: 70, scope: !418)
!427 = !DILocation(line: 22, column: 22, scope: !418)
!428 = !DILocation(line: 24, column: 9, scope: !418)
!429 = !DILocation(line: 24, column: 15, scope: !418)
!430 = !DILocation(line: 24, column: 21, scope: !418)
!431 = !DILocation(line: 24, column: 29, scope: !418)
!432 = !DILocation(line: 24, column: 35, scope: !418)
!433 = !DILocation(line: 24, column: 2, scope: !418)
!434 = !DILocation(line: 25, column: 1, scope: !418)
