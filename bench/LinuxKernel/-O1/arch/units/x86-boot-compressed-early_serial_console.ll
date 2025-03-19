; ModuleID = 'arch/x86/boot/compressed/early_serial_console.c'
source_filename = "arch/x86/boot/compressed/early_serial_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_io_ops = type { ptr, ptr, ptr }

@early_serial_base = hidden global i32 0, section ".data", align 4, !dbg !0
@.str = private unnamed_addr constant [12 x i8] c"earlyprintk\00", align 1, !dbg !5
@.str.1 = private unnamed_addr constant [7 x i8] c"serial\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [3 x i8] c"0x\00", align 1, !dbg !17
@.str.3 = private unnamed_addr constant [5 x i8] c"ttyS\00", align 1, !dbg !22
@parse_earlyprintk.bases = internal constant [2 x i32] [i32 1016, i32 760], align 4, !dbg !27
@pio_ops = external hidden global %struct.port_io_ops, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"console\00", align 1, !dbg !53
@.str.5 = private unnamed_addr constant [13 x i8] c"uart8250,io,\00", align 1, !dbg !58
@.str.6 = private unnamed_addr constant [9 x i8] c"uart,io,\00", align 1, !dbg !63

; Function Attrs: noredzone nounwind
define hidden void @console_init() #0 !dbg !75 {
entry:
  call void @parse_earlyprintk() #4, !dbg !76
  %0 = load i32, ptr @early_serial_base, align 4, !dbg !77
  %tobool = icmp ne i32 %0, 0, !dbg !77
  br i1 %tobool, label %if.end, label %if.then, !dbg !79

if.then:                                          ; preds = %entry
  call void @parse_console_uart8250() #4, !dbg !80
  br label %if.end, !dbg !80

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !81
}

; Function Attrs: noredzone nounwind
define internal void @parse_earlyprintk() #0 !dbg !29 {
entry:
  %baud = alloca i32, align 4
  %arg = alloca [32 x i8], align 16
  %pos = alloca i32, align 4
  %port = alloca i32, align 4
  %e = alloca ptr, align 8
  %idx = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %baud) #5, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %baud, metadata !33, metadata !DIExpression()), !dbg !83
  store i32 9600, ptr %baud, align 4, !dbg !83
  call void @llvm.lifetime.start.p0(i64 32, ptr %arg) #5, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !35, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !39, metadata !DIExpression()), !dbg !87
  store i32 0, ptr %pos, align 4, !dbg !87
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #5, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %port, metadata !40, metadata !DIExpression()), !dbg !89
  store i32 0, ptr %port, align 4, !dbg !89
  %arraydecay = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !90
  %call = call i32 @cmdline_find_option(ptr noundef @.str, ptr noundef %arraydecay, i32 noundef 32) #4, !dbg !91
  %cmp = icmp sgt i32 %call, 0, !dbg !92
  br i1 %cmp, label %if.then, label %if.end73, !dbg !93

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #5, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %e, metadata !41, metadata !DIExpression()), !dbg !95
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !96
  %call2 = call i32 @strncmp(ptr noundef %arraydecay1, ptr noundef @.str.1, i64 noundef 6) #4, !dbg !98
  %tobool = icmp ne i32 %call2, 0, !dbg !98
  br i1 %tobool, label %if.end, label %if.then3, !dbg !99

if.then3:                                         ; preds = %if.then
  store i32 1016, ptr %port, align 4, !dbg !100
  %0 = load i32, ptr %pos, align 4, !dbg !102
  %add = add nsw i32 %0, 6, !dbg !102
  store i32 %add, ptr %pos, align 4, !dbg !102
  br label %if.end, !dbg !103

if.end:                                           ; preds = %if.then3, %if.then
  %1 = load i32, ptr %pos, align 4, !dbg !104
  %idxprom = sext i32 %1 to i64, !dbg !106
  %arrayidx = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 %idxprom, !dbg !106
  %2 = load i8, ptr %arrayidx, align 1, !dbg !106
  %conv = sext i8 %2 to i32, !dbg !106
  %cmp4 = icmp eq i32 %conv, 44, !dbg !107
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !108

if.then6:                                         ; preds = %if.end
  %3 = load i32, ptr %pos, align 4, !dbg !109
  %inc = add nsw i32 %3, 1, !dbg !109
  store i32 %inc, ptr %pos, align 4, !dbg !109
  br label %if.end7, !dbg !110

if.end7:                                          ; preds = %if.then6, %if.end
  %4 = load i32, ptr %pos, align 4, !dbg !111
  %cmp8 = icmp eq i32 %4, 7, !dbg !112
  br i1 %cmp8, label %land.lhs.true, label %if.else30, !dbg !113

land.lhs.true:                                    ; preds = %if.end7
  %arraydecay10 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !114
  %5 = load i32, ptr %pos, align 4, !dbg !115
  %idx.ext = sext i32 %5 to i64, !dbg !116
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay10, i64 %idx.ext, !dbg !116
  %call11 = call i32 @strncmp(ptr noundef %add.ptr, ptr noundef @.str.2, i64 noundef 2) #4, !dbg !117
  %tobool12 = icmp ne i32 %call11, 0, !dbg !117
  br i1 %tobool12, label %if.else30, label %if.then13, !dbg !118

if.then13:                                        ; preds = %land.lhs.true
  %arraydecay14 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !119
  %6 = load i32, ptr %pos, align 4, !dbg !121
  %idx.ext15 = sext i32 %6 to i64, !dbg !122
  %add.ptr16 = getelementptr inbounds i8, ptr %arraydecay14, i64 %idx.ext15, !dbg !122
  %call17 = call i64 @simple_strtoull(ptr noundef %add.ptr16, ptr noundef %e, i32 noundef 16) #4, !dbg !123
  %conv18 = trunc i64 %call17 to i32, !dbg !123
  store i32 %conv18, ptr %port, align 4, !dbg !124
  %7 = load i32, ptr %port, align 4, !dbg !125
  %cmp19 = icmp eq i32 %7, 0, !dbg !127
  br i1 %cmp19, label %if.then26, label %lor.lhs.false, !dbg !128

lor.lhs.false:                                    ; preds = %if.then13
  %arraydecay21 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !129
  %8 = load i32, ptr %pos, align 4, !dbg !130
  %idx.ext22 = sext i32 %8 to i64, !dbg !131
  %add.ptr23 = getelementptr inbounds i8, ptr %arraydecay21, i64 %idx.ext22, !dbg !131
  %9 = load ptr, ptr %e, align 8, !dbg !132
  %cmp24 = icmp eq ptr %add.ptr23, %9, !dbg !133
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !134

if.then26:                                        ; preds = %lor.lhs.false, %if.then13
  store i32 1016, ptr %port, align 4, !dbg !135
  br label %if.end29, !dbg !136

if.else:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %e, align 8, !dbg !137
  %arraydecay27 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !138
  %sub.ptr.lhs.cast = ptrtoint ptr %10 to i64, !dbg !139
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay27 to i64, !dbg !139
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !139
  %conv28 = trunc i64 %sub.ptr.sub to i32, !dbg !137
  store i32 %conv28, ptr %pos, align 4, !dbg !140
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then26
  br label %if.end49, !dbg !141

if.else30:                                        ; preds = %land.lhs.true, %if.end7
  %arraydecay31 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !142
  %11 = load i32, ptr %pos, align 4, !dbg !143
  %idx.ext32 = sext i32 %11 to i64, !dbg !144
  %add.ptr33 = getelementptr inbounds i8, ptr %arraydecay31, i64 %idx.ext32, !dbg !144
  %call34 = call i32 @strncmp(ptr noundef %add.ptr33, ptr noundef @.str.3, i64 noundef 4) #4, !dbg !145
  %tobool35 = icmp ne i32 %call34, 0, !dbg !145
  br i1 %tobool35, label %if.end48, label %if.then36, !dbg !146

if.then36:                                        ; preds = %if.else30
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #5, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !45, metadata !DIExpression()), !dbg !148
  store i32 0, ptr %idx, align 4, !dbg !148
  %12 = load i32, ptr %pos, align 4, !dbg !149
  %add37 = add nsw i32 %12, 4, !dbg !149
  store i32 %add37, ptr %pos, align 4, !dbg !149
  %13 = load i32, ptr %pos, align 4, !dbg !150
  %inc38 = add nsw i32 %13, 1, !dbg !150
  store i32 %inc38, ptr %pos, align 4, !dbg !150
  %idxprom39 = sext i32 %13 to i64, !dbg !152
  %arrayidx40 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 %idxprom39, !dbg !152
  %14 = load i8, ptr %arrayidx40, align 1, !dbg !152
  %conv41 = sext i8 %14 to i32, !dbg !152
  %cmp42 = icmp eq i32 %conv41, 49, !dbg !153
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !154

if.then44:                                        ; preds = %if.then36
  store i32 1, ptr %idx, align 4, !dbg !155
  br label %if.end45, !dbg !156

if.end45:                                         ; preds = %if.then44, %if.then36
  %15 = load i32, ptr %idx, align 4, !dbg !157
  %idxprom46 = sext i32 %15 to i64, !dbg !158
  %arrayidx47 = getelementptr inbounds [2 x i32], ptr @parse_earlyprintk.bases, i64 0, i64 %idxprom46, !dbg !158
  %16 = load i32, ptr %arrayidx47, align 4, !dbg !158
  store i32 %16, ptr %port, align 4, !dbg !159
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #5, !dbg !160
  br label %if.end48, !dbg !161

if.end48:                                         ; preds = %if.end45, %if.else30
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end29
  %17 = load i32, ptr %pos, align 4, !dbg !162
  %idxprom50 = sext i32 %17 to i64, !dbg !164
  %arrayidx51 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 %idxprom50, !dbg !164
  %18 = load i8, ptr %arrayidx51, align 1, !dbg !164
  %conv52 = sext i8 %18 to i32, !dbg !164
  %cmp53 = icmp eq i32 %conv52, 44, !dbg !165
  br i1 %cmp53, label %if.then55, label %if.end57, !dbg !166

if.then55:                                        ; preds = %if.end49
  %19 = load i32, ptr %pos, align 4, !dbg !167
  %inc56 = add nsw i32 %19, 1, !dbg !167
  store i32 %inc56, ptr %pos, align 4, !dbg !167
  br label %if.end57, !dbg !168

if.end57:                                         ; preds = %if.then55, %if.end49
  %arraydecay58 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !169
  %20 = load i32, ptr %pos, align 4, !dbg !170
  %idx.ext59 = sext i32 %20 to i64, !dbg !171
  %add.ptr60 = getelementptr inbounds i8, ptr %arraydecay58, i64 %idx.ext59, !dbg !171
  %call61 = call i64 @simple_strtoull(ptr noundef %add.ptr60, ptr noundef %e, i32 noundef 0) #4, !dbg !172
  %conv62 = trunc i64 %call61 to i32, !dbg !172
  store i32 %conv62, ptr %baud, align 4, !dbg !173
  %21 = load i32, ptr %baud, align 4, !dbg !174
  %cmp63 = icmp eq i32 %21, 0, !dbg !176
  br i1 %cmp63, label %if.then71, label %lor.lhs.false65, !dbg !177

lor.lhs.false65:                                  ; preds = %if.end57
  %arraydecay66 = getelementptr inbounds [32 x i8], ptr %arg, i64 0, i64 0, !dbg !178
  %22 = load i32, ptr %pos, align 4, !dbg !179
  %idx.ext67 = sext i32 %22 to i64, !dbg !180
  %add.ptr68 = getelementptr inbounds i8, ptr %arraydecay66, i64 %idx.ext67, !dbg !180
  %23 = load ptr, ptr %e, align 8, !dbg !181
  %cmp69 = icmp eq ptr %add.ptr68, %23, !dbg !182
  br i1 %cmp69, label %if.then71, label %if.end72, !dbg !183

if.then71:                                        ; preds = %lor.lhs.false65, %if.end57
  store i32 9600, ptr %baud, align 4, !dbg !184
  br label %if.end72, !dbg !185

if.end72:                                         ; preds = %if.then71, %lor.lhs.false65
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #5, !dbg !186
  br label %if.end73, !dbg !187

if.end73:                                         ; preds = %if.end72, %entry
  %24 = load i32, ptr %port, align 4, !dbg !188
  %tobool74 = icmp ne i32 %24, 0, !dbg !188
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !190

if.then75:                                        ; preds = %if.end73
  %25 = load i32, ptr %port, align 4, !dbg !191
  %26 = load i32, ptr %baud, align 4, !dbg !192
  call void @early_serial_init(i32 noundef %25, i32 noundef %26) #4, !dbg !193
  br label %if.end76, !dbg !193

if.end76:                                         ; preds = %if.then75, %if.end73
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 32, ptr %arg) #5, !dbg !194
  call void @llvm.lifetime.end.p0(i64 4, ptr %baud) #5, !dbg !194
  ret void, !dbg !194
}

; Function Attrs: noredzone nounwind
define internal void @parse_console_uart8250() #0 !dbg !195 {
entry:
  %optstr = alloca [64 x i8], align 16
  %options = alloca ptr, align 8
  %baud = alloca i32, align 4
  %port = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr %optstr) #5, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %optstr, metadata !197, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %options) #5, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %options, metadata !201, metadata !DIExpression()), !dbg !206
  call void @llvm.lifetime.start.p0(i64 4, ptr %baud) #5, !dbg !207
  call void @llvm.dbg.declare(metadata ptr %baud, metadata !202, metadata !DIExpression()), !dbg !208
  store i32 9600, ptr %baud, align 4, !dbg !208
  call void @llvm.lifetime.start.p0(i64 4, ptr %port) #5, !dbg !209
  call void @llvm.dbg.declare(metadata ptr %port, metadata !203, metadata !DIExpression()), !dbg !210
  store i32 0, ptr %port, align 4, !dbg !210
  %arraydecay = getelementptr inbounds [64 x i8], ptr %optstr, i64 0, i64 0, !dbg !211
  %call = call i32 @cmdline_find_option(ptr noundef @.str.4, ptr noundef %arraydecay, i32 noundef 64) #4, !dbg !213
  %cmp = icmp sle i32 %call, 0, !dbg !214
  br i1 %cmp, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !216

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [64 x i8], ptr %optstr, i64 0, i64 0, !dbg !217
  store ptr %arraydecay1, ptr %options, align 8, !dbg !218
  %0 = load ptr, ptr %options, align 8, !dbg !219
  %call2 = call i32 @strncmp(ptr noundef %0, ptr noundef @.str.5, i64 noundef 12) #4, !dbg !221
  %tobool = icmp ne i32 %call2, 0, !dbg !221
  br i1 %tobool, label %if.else, label %if.then3, !dbg !222

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr %options, align 8, !dbg !223
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 12, !dbg !224
  %call4 = call i64 @simple_strtoull(ptr noundef %add.ptr, ptr noundef %options, i32 noundef 0) #4, !dbg !225
  %conv = trunc i64 %call4 to i32, !dbg !225
  store i32 %conv, ptr %port, align 4, !dbg !226
  br label %if.end13, !dbg !227

if.else:                                          ; preds = %if.end
  %2 = load ptr, ptr %options, align 8, !dbg !228
  %call5 = call i32 @strncmp(ptr noundef %2, ptr noundef @.str.6, i64 noundef 8) #4, !dbg !230
  %tobool6 = icmp ne i32 %call5, 0, !dbg !230
  br i1 %tobool6, label %if.else11, label %if.then7, !dbg !231

if.then7:                                         ; preds = %if.else
  %3 = load ptr, ptr %options, align 8, !dbg !232
  %add.ptr8 = getelementptr inbounds i8, ptr %3, i64 8, !dbg !233
  %call9 = call i64 @simple_strtoull(ptr noundef %add.ptr8, ptr noundef %options, i32 noundef 0) #4, !dbg !234
  %conv10 = trunc i64 %call9 to i32, !dbg !234
  store i32 %conv10, ptr %port, align 4, !dbg !235
  br label %if.end12, !dbg !236

if.else11:                                        ; preds = %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !237

if.end12:                                         ; preds = %if.then7
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then3
  %4 = load ptr, ptr %options, align 8, !dbg !238
  %tobool14 = icmp ne ptr %4, null, !dbg !238
  br i1 %tobool14, label %land.lhs.true, label %if.else22, !dbg !240

land.lhs.true:                                    ; preds = %if.end13
  %5 = load ptr, ptr %options, align 8, !dbg !241
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0, !dbg !241
  %6 = load i8, ptr %arrayidx, align 1, !dbg !241
  %conv15 = sext i8 %6 to i32, !dbg !241
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !242
  br i1 %cmp16, label %if.then18, label %if.else22, !dbg !243

if.then18:                                        ; preds = %land.lhs.true
  %7 = load ptr, ptr %options, align 8, !dbg !244
  %add.ptr19 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !245
  %call20 = call i64 @simple_strtoull(ptr noundef %add.ptr19, ptr noundef %options, i32 noundef 0) #4, !dbg !246
  %conv21 = trunc i64 %call20 to i32, !dbg !246
  store i32 %conv21, ptr %baud, align 4, !dbg !247
  br label %if.end24, !dbg !248

if.else22:                                        ; preds = %land.lhs.true, %if.end13
  %8 = load i32, ptr %port, align 4, !dbg !249
  %call23 = call i32 @probe_baud(i32 noundef %8) #4, !dbg !250
  store i32 %call23, ptr %baud, align 4, !dbg !251
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then18
  %9 = load i32, ptr %port, align 4, !dbg !252
  %tobool25 = icmp ne i32 %9, 0, !dbg !252
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !254

if.then26:                                        ; preds = %if.end24
  %10 = load i32, ptr %port, align 4, !dbg !255
  %11 = load i32, ptr %baud, align 4, !dbg !256
  call void @early_serial_init(i32 noundef %10, i32 noundef %11) #4, !dbg !257
  br label %if.end27, !dbg !257

if.end27:                                         ; preds = %if.then26, %if.end24
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !258
  br label %cleanup, !dbg !258

cleanup:                                          ; preds = %if.end27, %if.else11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %port) #5, !dbg !258
  call void @llvm.lifetime.end.p0(i64 4, ptr %baud) #5, !dbg !258
  call void @llvm.lifetime.end.p0(i64 8, ptr %options) #5, !dbg !258
  call void @llvm.lifetime.end.p0(i64 64, ptr %optstr) #5, !dbg !258
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !258

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare !dbg !259 hidden i32 @cmdline_find_option(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone
declare !dbg !265 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !273 hidden i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone nounwind
define internal void @early_serial_init(i32 noundef %port, i32 noundef %baud) #0 !dbg !280 {
entry:
  %port.addr = alloca i32, align 4
  %baud.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %divisor = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !284, metadata !DIExpression()), !dbg !289
  store i32 %baud, ptr %baud.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %baud.addr, metadata !285, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #5, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %c, metadata !286, metadata !DIExpression()), !dbg !292
  call void @llvm.lifetime.start.p0(i64 4, ptr %divisor) #5, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %divisor, metadata !288, metadata !DIExpression()), !dbg !294
  %0 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !295
  %1 = load i32, ptr %port.addr, align 4, !dbg !296
  %add = add nsw i32 %1, 3, !dbg !297
  %conv = trunc i32 %add to i16, !dbg !296
  call void %0(i8 noundef zeroext 3, i16 noundef zeroext %conv) #4, !dbg !295
  %2 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !298
  %3 = load i32, ptr %port.addr, align 4, !dbg !299
  %add1 = add nsw i32 %3, 1, !dbg !300
  %conv2 = trunc i32 %add1 to i16, !dbg !299
  call void %2(i8 noundef zeroext 0, i16 noundef zeroext %conv2) #4, !dbg !298
  %4 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !301
  %5 = load i32, ptr %port.addr, align 4, !dbg !302
  %add3 = add nsw i32 %5, 2, !dbg !303
  %conv4 = trunc i32 %add3 to i16, !dbg !302
  call void %4(i8 noundef zeroext 0, i16 noundef zeroext %conv4) #4, !dbg !301
  %6 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !304
  %7 = load i32, ptr %port.addr, align 4, !dbg !305
  %add5 = add nsw i32 %7, 4, !dbg !306
  %conv6 = trunc i32 %add5 to i16, !dbg !305
  call void %6(i8 noundef zeroext 3, i16 noundef zeroext %conv6) #4, !dbg !304
  %8 = load i32, ptr %baud.addr, align 4, !dbg !307
  %div = sdiv i32 115200, %8, !dbg !308
  store i32 %div, ptr %divisor, align 4, !dbg !309
  %9 = load ptr, ptr @pio_ops, align 8, !dbg !310
  %10 = load i32, ptr %port.addr, align 4, !dbg !311
  %add7 = add nsw i32 %10, 3, !dbg !312
  %conv8 = trunc i32 %add7 to i16, !dbg !311
  %call = call zeroext i8 %9(i16 noundef zeroext %conv8) #4, !dbg !310
  store i8 %call, ptr %c, align 1, !dbg !313
  %11 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !314
  %12 = load i8, ptr %c, align 1, !dbg !315
  %conv9 = zext i8 %12 to i32, !dbg !315
  %or = or i32 %conv9, 128, !dbg !316
  %conv10 = trunc i32 %or to i8, !dbg !315
  %13 = load i32, ptr %port.addr, align 4, !dbg !317
  %add11 = add nsw i32 %13, 3, !dbg !318
  %conv12 = trunc i32 %add11 to i16, !dbg !317
  call void %11(i8 noundef zeroext %conv10, i16 noundef zeroext %conv12) #4, !dbg !314
  %14 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !319
  %15 = load i32, ptr %divisor, align 4, !dbg !320
  %and = and i32 %15, 255, !dbg !321
  %conv13 = trunc i32 %and to i8, !dbg !320
  %16 = load i32, ptr %port.addr, align 4, !dbg !322
  %add14 = add nsw i32 %16, 0, !dbg !323
  %conv15 = trunc i32 %add14 to i16, !dbg !322
  call void %14(i8 noundef zeroext %conv13, i16 noundef zeroext %conv15) #4, !dbg !319
  %17 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !324
  %18 = load i32, ptr %divisor, align 4, !dbg !325
  %shr = lshr i32 %18, 8, !dbg !326
  %and16 = and i32 %shr, 255, !dbg !327
  %conv17 = trunc i32 %and16 to i8, !dbg !328
  %19 = load i32, ptr %port.addr, align 4, !dbg !329
  %add18 = add nsw i32 %19, 1, !dbg !330
  %conv19 = trunc i32 %add18 to i16, !dbg !329
  call void %17(i8 noundef zeroext %conv17, i16 noundef zeroext %conv19) #4, !dbg !324
  %20 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !331
  %21 = load i8, ptr %c, align 1, !dbg !332
  %conv20 = zext i8 %21 to i32, !dbg !332
  %and21 = and i32 %conv20, -129, !dbg !333
  %conv22 = trunc i32 %and21 to i8, !dbg !332
  %22 = load i32, ptr %port.addr, align 4, !dbg !334
  %add23 = add nsw i32 %22, 3, !dbg !335
  %conv24 = trunc i32 %add23 to i16, !dbg !334
  call void %20(i8 noundef zeroext %conv22, i16 noundef zeroext %conv24) #4, !dbg !331
  %23 = load i32, ptr %port.addr, align 4, !dbg !336
  store i32 %23, ptr @early_serial_base, align 4, !dbg !337
  call void @llvm.lifetime.end.p0(i64 4, ptr %divisor) #5, !dbg !338
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #5, !dbg !338
  ret void, !dbg !338
}

; Function Attrs: noredzone nounwind
define internal i32 @probe_baud(i32 noundef %port) #0 !dbg !339 {
entry:
  %port.addr = alloca i32, align 4
  %lcr = alloca i8, align 1
  %dll = alloca i8, align 1
  %dlh = alloca i8, align 1
  %quot = alloca i32, align 4
  store i32 %port, ptr %port.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !343, metadata !DIExpression()), !dbg !348
  call void @llvm.lifetime.start.p0(i64 1, ptr %lcr) #5, !dbg !349
  call void @llvm.dbg.declare(metadata ptr %lcr, metadata !344, metadata !DIExpression()), !dbg !350
  call void @llvm.lifetime.start.p0(i64 1, ptr %dll) #5, !dbg !349
  call void @llvm.dbg.declare(metadata ptr %dll, metadata !345, metadata !DIExpression()), !dbg !351
  call void @llvm.lifetime.start.p0(i64 1, ptr %dlh) #5, !dbg !349
  call void @llvm.dbg.declare(metadata ptr %dlh, metadata !346, metadata !DIExpression()), !dbg !352
  call void @llvm.lifetime.start.p0(i64 4, ptr %quot) #5, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %quot, metadata !347, metadata !DIExpression()), !dbg !354
  %0 = load ptr, ptr @pio_ops, align 8, !dbg !355
  %1 = load i32, ptr %port.addr, align 4, !dbg !356
  %add = add nsw i32 %1, 3, !dbg !357
  %conv = trunc i32 %add to i16, !dbg !356
  %call = call zeroext i8 %0(i16 noundef zeroext %conv) #4, !dbg !355
  store i8 %call, ptr %lcr, align 1, !dbg !358
  %2 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !359
  %3 = load i8, ptr %lcr, align 1, !dbg !360
  %conv1 = zext i8 %3 to i32, !dbg !360
  %or = or i32 %conv1, 128, !dbg !361
  %conv2 = trunc i32 %or to i8, !dbg !360
  %4 = load i32, ptr %port.addr, align 4, !dbg !362
  %add3 = add nsw i32 %4, 3, !dbg !363
  %conv4 = trunc i32 %add3 to i16, !dbg !362
  call void %2(i8 noundef zeroext %conv2, i16 noundef zeroext %conv4) #4, !dbg !359
  %5 = load ptr, ptr @pio_ops, align 8, !dbg !364
  %6 = load i32, ptr %port.addr, align 4, !dbg !365
  %add5 = add nsw i32 %6, 0, !dbg !366
  %conv6 = trunc i32 %add5 to i16, !dbg !365
  %call7 = call zeroext i8 %5(i16 noundef zeroext %conv6) #4, !dbg !364
  store i8 %call7, ptr %dll, align 1, !dbg !367
  %7 = load ptr, ptr @pio_ops, align 8, !dbg !368
  %8 = load i32, ptr %port.addr, align 4, !dbg !369
  %add8 = add nsw i32 %8, 1, !dbg !370
  %conv9 = trunc i32 %add8 to i16, !dbg !369
  %call10 = call zeroext i8 %7(i16 noundef zeroext %conv9) #4, !dbg !368
  store i8 %call10, ptr %dlh, align 1, !dbg !371
  %9 = load ptr, ptr getelementptr inbounds (%struct.port_io_ops, ptr @pio_ops, i32 0, i32 1), align 8, !dbg !372
  %10 = load i8, ptr %lcr, align 1, !dbg !373
  %11 = load i32, ptr %port.addr, align 4, !dbg !374
  %add11 = add nsw i32 %11, 3, !dbg !375
  %conv12 = trunc i32 %add11 to i16, !dbg !374
  call void %9(i8 noundef zeroext %10, i16 noundef zeroext %conv12) #4, !dbg !372
  %12 = load i8, ptr %dlh, align 1, !dbg !376
  %conv13 = zext i8 %12 to i32, !dbg !376
  %shl = shl i32 %conv13, 8, !dbg !377
  %13 = load i8, ptr %dll, align 1, !dbg !378
  %conv14 = zext i8 %13 to i32, !dbg !378
  %or15 = or i32 %shl, %conv14, !dbg !379
  store i32 %or15, ptr %quot, align 4, !dbg !380
  %14 = load i32, ptr %quot, align 4, !dbg !381
  %div = udiv i32 115200, %14, !dbg !382
  call void @llvm.lifetime.end.p0(i64 4, ptr %quot) #5, !dbg !383
  call void @llvm.lifetime.end.p0(i64 1, ptr %dlh) #5, !dbg !383
  call void @llvm.lifetime.end.p0(i64 1, ptr %dll) #5, !dbg !383
  call void @llvm.lifetime.end.p0(i64 1, ptr %lcr) #5, !dbg !383
  ret i32 %div, !dbg !384
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { nobuiltin noredzone "no-builtins" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "early_serial_base", scope: !2, file: !3, line: 4, type: !34, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.early_serial_console.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/early_serial_console\22 -D KBUILD_BASENAME=\22early_serial_console\22 -D KBUILD_MODNAME=\22early_serial_console\22 -D __KBUILD_MODNAME=kmod_early_serial_console -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/early_serial_console.ll arch/x86/boot/compressed/early_serial_console.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/compressed/early_serial_console.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9de2238224b460dc417e7bb273f05573")
!4 = !{!0, !5, !12, !17, !22, !27, !53, !58, !63}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(scope: null, file: !7, line: 53, type: !8, isLocal: true, isDefinition: true)
!7 = !DIFile(filename: "arch/x86/boot/compressed/../early_serial_console.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c1499efaad112c35353ba3a8c1e8821")
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 96, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 12)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !7, line: 56, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 56, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 7)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !7, line: 70, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 24, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 3)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !7, line: 76, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 5)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "bases", scope: !29, file: !7, line: 77, type: !49, isLocal: true, isDefinition: true)
!29 = distinct !DISubprogram(name: "parse_earlyprintk", scope: !7, file: !7, line: 46, type: !30, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{null}
!32 = !{!33, !35, !39, !40, !41, !45}
!33 = !DILocalVariable(name: "baud", scope: !29, file: !7, line: 48, type: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocalVariable(name: "arg", scope: !29, file: !7, line: 49, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 256, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 32)
!39 = !DILocalVariable(name: "pos", scope: !29, file: !7, line: 50, type: !34)
!40 = !DILocalVariable(name: "port", scope: !29, file: !7, line: 51, type: !34)
!41 = !DILocalVariable(name: "e", scope: !42, file: !7, line: 54, type: !44)
!42 = distinct !DILexicalBlock(scope: !43, file: !7, line: 53, column: 64)
!43 = distinct !DILexicalBlock(scope: !29, file: !7, line: 53, column: 6)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!45 = !DILocalVariable(name: "idx", scope: !46, file: !7, line: 78, type: !34)
!46 = distinct !DILexicalBlock(scope: !47, file: !7, line: 76, column: 46)
!47 = distinct !DILexicalBlock(scope: !48, file: !7, line: 76, column: 14)
!48 = distinct !DILexicalBlock(scope: !42, file: !7, line: 70, column: 7)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !51)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!51 = !{!52}
!52 = !DISubrange(count: 2)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !7, line: 127, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 8)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !7, line: 132, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 104, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 13)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(scope: null, file: !7, line: 134, type: !65, isLocal: true, isDefinition: true)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 72, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 9)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 8, !"PIC Level", i32 2}
!72 = !{i32 7, !"PIE Level", i32 2}
!73 = !{i32 1, !"Code Model", i32 1}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = distinct !DISubprogram(name: "console_init", scope: !7, file: !7, line: 148, type: !30, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!76 = !DILocation(line: 150, column: 2, scope: !75)
!77 = !DILocation(line: 152, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !7, line: 152, column: 6)
!79 = !DILocation(line: 152, column: 6, scope: !75)
!80 = !DILocation(line: 153, column: 3, scope: !78)
!81 = !DILocation(line: 154, column: 1, scope: !75)
!82 = !DILocation(line: 48, column: 2, scope: !29)
!83 = !DILocation(line: 48, column: 6, scope: !29)
!84 = !DILocation(line: 49, column: 2, scope: !29)
!85 = !DILocation(line: 49, column: 7, scope: !29)
!86 = !DILocation(line: 50, column: 2, scope: !29)
!87 = !DILocation(line: 50, column: 6, scope: !29)
!88 = !DILocation(line: 51, column: 2, scope: !29)
!89 = !DILocation(line: 51, column: 6, scope: !29)
!90 = !DILocation(line: 53, column: 41, scope: !43)
!91 = !DILocation(line: 53, column: 6, scope: !43)
!92 = !DILocation(line: 53, column: 59, scope: !43)
!93 = !DILocation(line: 53, column: 6, scope: !29)
!94 = !DILocation(line: 54, column: 3, scope: !42)
!95 = !DILocation(line: 54, column: 9, scope: !42)
!96 = !DILocation(line: 56, column: 16, scope: !97)
!97 = distinct !DILexicalBlock(scope: !42, file: !7, line: 56, column: 7)
!98 = !DILocation(line: 56, column: 8, scope: !97)
!99 = !DILocation(line: 56, column: 7, scope: !42)
!100 = !DILocation(line: 57, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !7, line: 56, column: 35)
!102 = !DILocation(line: 58, column: 8, scope: !101)
!103 = !DILocation(line: 59, column: 3, scope: !101)
!104 = !DILocation(line: 61, column: 11, scope: !105)
!105 = distinct !DILexicalBlock(scope: !42, file: !7, line: 61, column: 7)
!106 = !DILocation(line: 61, column: 7, scope: !105)
!107 = !DILocation(line: 61, column: 16, scope: !105)
!108 = !DILocation(line: 61, column: 7, scope: !42)
!109 = !DILocation(line: 62, column: 7, scope: !105)
!110 = !DILocation(line: 62, column: 4, scope: !105)
!111 = !DILocation(line: 70, column: 7, scope: !48)
!112 = !DILocation(line: 70, column: 11, scope: !48)
!113 = !DILocation(line: 70, column: 16, scope: !48)
!114 = !DILocation(line: 70, column: 28, scope: !48)
!115 = !DILocation(line: 70, column: 34, scope: !48)
!116 = !DILocation(line: 70, column: 32, scope: !48)
!117 = !DILocation(line: 70, column: 20, scope: !48)
!118 = !DILocation(line: 70, column: 7, scope: !42)
!119 = !DILocation(line: 71, column: 27, scope: !120)
!120 = distinct !DILexicalBlock(scope: !48, file: !7, line: 70, column: 49)
!121 = !DILocation(line: 71, column: 33, scope: !120)
!122 = !DILocation(line: 71, column: 31, scope: !120)
!123 = !DILocation(line: 71, column: 11, scope: !120)
!124 = !DILocation(line: 71, column: 9, scope: !120)
!125 = !DILocation(line: 72, column: 8, scope: !126)
!126 = distinct !DILexicalBlock(scope: !120, file: !7, line: 72, column: 8)
!127 = !DILocation(line: 72, column: 13, scope: !126)
!128 = !DILocation(line: 72, column: 18, scope: !126)
!129 = !DILocation(line: 72, column: 21, scope: !126)
!130 = !DILocation(line: 72, column: 27, scope: !126)
!131 = !DILocation(line: 72, column: 25, scope: !126)
!132 = !DILocation(line: 72, column: 34, scope: !126)
!133 = !DILocation(line: 72, column: 31, scope: !126)
!134 = !DILocation(line: 72, column: 8, scope: !120)
!135 = !DILocation(line: 73, column: 10, scope: !126)
!136 = !DILocation(line: 73, column: 5, scope: !126)
!137 = !DILocation(line: 75, column: 11, scope: !126)
!138 = !DILocation(line: 75, column: 15, scope: !126)
!139 = !DILocation(line: 75, column: 13, scope: !126)
!140 = !DILocation(line: 75, column: 9, scope: !126)
!141 = !DILocation(line: 76, column: 3, scope: !120)
!142 = !DILocation(line: 76, column: 23, scope: !47)
!143 = !DILocation(line: 76, column: 29, scope: !47)
!144 = !DILocation(line: 76, column: 27, scope: !47)
!145 = !DILocation(line: 76, column: 15, scope: !47)
!146 = !DILocation(line: 76, column: 14, scope: !48)
!147 = !DILocation(line: 78, column: 4, scope: !46)
!148 = !DILocation(line: 78, column: 8, scope: !46)
!149 = !DILocation(line: 81, column: 8, scope: !46)
!150 = !DILocation(line: 83, column: 15, scope: !151)
!151 = distinct !DILexicalBlock(scope: !46, file: !7, line: 83, column: 8)
!152 = !DILocation(line: 83, column: 8, scope: !151)
!153 = !DILocation(line: 83, column: 19, scope: !151)
!154 = !DILocation(line: 83, column: 8, scope: !46)
!155 = !DILocation(line: 84, column: 9, scope: !151)
!156 = !DILocation(line: 84, column: 5, scope: !151)
!157 = !DILocation(line: 86, column: 17, scope: !46)
!158 = !DILocation(line: 86, column: 11, scope: !46)
!159 = !DILocation(line: 86, column: 9, scope: !46)
!160 = !DILocation(line: 87, column: 3, scope: !47)
!161 = !DILocation(line: 87, column: 3, scope: !46)
!162 = !DILocation(line: 89, column: 11, scope: !163)
!163 = distinct !DILexicalBlock(scope: !42, file: !7, line: 89, column: 7)
!164 = !DILocation(line: 89, column: 7, scope: !163)
!165 = !DILocation(line: 89, column: 16, scope: !163)
!166 = !DILocation(line: 89, column: 7, scope: !42)
!167 = !DILocation(line: 90, column: 7, scope: !163)
!168 = !DILocation(line: 90, column: 4, scope: !163)
!169 = !DILocation(line: 92, column: 26, scope: !42)
!170 = !DILocation(line: 92, column: 32, scope: !42)
!171 = !DILocation(line: 92, column: 30, scope: !42)
!172 = !DILocation(line: 92, column: 10, scope: !42)
!173 = !DILocation(line: 92, column: 8, scope: !42)
!174 = !DILocation(line: 93, column: 7, scope: !175)
!175 = distinct !DILexicalBlock(scope: !42, file: !7, line: 93, column: 7)
!176 = !DILocation(line: 93, column: 12, scope: !175)
!177 = !DILocation(line: 93, column: 17, scope: !175)
!178 = !DILocation(line: 93, column: 20, scope: !175)
!179 = !DILocation(line: 93, column: 26, scope: !175)
!180 = !DILocation(line: 93, column: 24, scope: !175)
!181 = !DILocation(line: 93, column: 33, scope: !175)
!182 = !DILocation(line: 93, column: 30, scope: !175)
!183 = !DILocation(line: 93, column: 7, scope: !42)
!184 = !DILocation(line: 94, column: 9, scope: !175)
!185 = !DILocation(line: 94, column: 4, scope: !175)
!186 = !DILocation(line: 95, column: 2, scope: !43)
!187 = !DILocation(line: 95, column: 2, scope: !42)
!188 = !DILocation(line: 97, column: 6, scope: !189)
!189 = distinct !DILexicalBlock(scope: !29, file: !7, line: 97, column: 6)
!190 = !DILocation(line: 97, column: 6, scope: !29)
!191 = !DILocation(line: 98, column: 21, scope: !189)
!192 = !DILocation(line: 98, column: 27, scope: !189)
!193 = !DILocation(line: 98, column: 3, scope: !189)
!194 = !DILocation(line: 99, column: 1, scope: !29)
!195 = distinct !DISubprogram(name: "parse_console_uart8250", scope: !7, file: !7, line: 117, type: !30, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !196)
!196 = !{!197, !201, !202, !203}
!197 = !DILocalVariable(name: "optstr", scope: !195, file: !7, line: 119, type: !198)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 512, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 64)
!201 = !DILocalVariable(name: "options", scope: !195, file: !7, line: 119, type: !44)
!202 = !DILocalVariable(name: "baud", scope: !195, file: !7, line: 120, type: !34)
!203 = !DILocalVariable(name: "port", scope: !195, file: !7, line: 121, type: !34)
!204 = !DILocation(line: 119, column: 2, scope: !195)
!205 = !DILocation(line: 119, column: 7, scope: !195)
!206 = !DILocation(line: 119, column: 20, scope: !195)
!207 = !DILocation(line: 120, column: 2, scope: !195)
!208 = !DILocation(line: 120, column: 6, scope: !195)
!209 = !DILocation(line: 121, column: 2, scope: !195)
!210 = !DILocation(line: 121, column: 6, scope: !195)
!211 = !DILocation(line: 127, column: 37, scope: !212)
!212 = distinct !DILexicalBlock(scope: !195, file: !7, line: 127, column: 6)
!213 = !DILocation(line: 127, column: 6, scope: !212)
!214 = !DILocation(line: 127, column: 61, scope: !212)
!215 = !DILocation(line: 127, column: 6, scope: !195)
!216 = !DILocation(line: 128, column: 3, scope: !212)
!217 = !DILocation(line: 130, column: 12, scope: !195)
!218 = !DILocation(line: 130, column: 10, scope: !195)
!219 = !DILocation(line: 132, column: 15, scope: !220)
!220 = distinct !DILexicalBlock(scope: !195, file: !7, line: 132, column: 6)
!221 = !DILocation(line: 132, column: 7, scope: !220)
!222 = !DILocation(line: 132, column: 6, scope: !195)
!223 = !DILocation(line: 133, column: 26, scope: !220)
!224 = !DILocation(line: 133, column: 34, scope: !220)
!225 = !DILocation(line: 133, column: 10, scope: !220)
!226 = !DILocation(line: 133, column: 8, scope: !220)
!227 = !DILocation(line: 133, column: 3, scope: !220)
!228 = !DILocation(line: 134, column: 20, scope: !229)
!229 = distinct !DILexicalBlock(scope: !220, file: !7, line: 134, column: 11)
!230 = !DILocation(line: 134, column: 12, scope: !229)
!231 = !DILocation(line: 134, column: 11, scope: !220)
!232 = !DILocation(line: 135, column: 26, scope: !229)
!233 = !DILocation(line: 135, column: 34, scope: !229)
!234 = !DILocation(line: 135, column: 10, scope: !229)
!235 = !DILocation(line: 135, column: 8, scope: !229)
!236 = !DILocation(line: 135, column: 3, scope: !229)
!237 = !DILocation(line: 137, column: 3, scope: !229)
!238 = !DILocation(line: 139, column: 6, scope: !239)
!239 = distinct !DILexicalBlock(scope: !195, file: !7, line: 139, column: 6)
!240 = !DILocation(line: 139, column: 14, scope: !239)
!241 = !DILocation(line: 139, column: 18, scope: !239)
!242 = !DILocation(line: 139, column: 29, scope: !239)
!243 = !DILocation(line: 139, column: 6, scope: !195)
!244 = !DILocation(line: 140, column: 26, scope: !239)
!245 = !DILocation(line: 140, column: 34, scope: !239)
!246 = !DILocation(line: 140, column: 10, scope: !239)
!247 = !DILocation(line: 140, column: 8, scope: !239)
!248 = !DILocation(line: 140, column: 3, scope: !239)
!249 = !DILocation(line: 142, column: 21, scope: !239)
!250 = !DILocation(line: 142, column: 10, scope: !239)
!251 = !DILocation(line: 142, column: 8, scope: !239)
!252 = !DILocation(line: 144, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !195, file: !7, line: 144, column: 6)
!254 = !DILocation(line: 144, column: 6, scope: !195)
!255 = !DILocation(line: 145, column: 21, scope: !253)
!256 = !DILocation(line: 145, column: 27, scope: !253)
!257 = !DILocation(line: 145, column: 3, scope: !253)
!258 = !DILocation(line: 146, column: 1, scope: !195)
!259 = !DISubprogram(name: "cmdline_find_option", scope: !260, file: !260, line: 90, type: !261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!261 = !DISubroutineType(types: !262)
!262 = !{!34, !263, !44, !34}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!265 = !DISubprogram(name: "strncmp", scope: !266, file: !266, line: 91, type: !267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!267 = !DISubroutineType(types: !268)
!268 = !{!34, !263, !263, !269}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !270, line: 72, baseType: !271)
!270 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !270, line: 16, baseType: !272)
!272 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!273 = !DISubprogram(name: "simple_strtoull", scope: !274, file: !274, line: 147, type: !275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!274 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!275 = !DISubroutineType(types: !276)
!276 = !{!277, !263, !278, !279}
!277 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!279 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!280 = distinct !DISubprogram(name: "early_serial_init", scope: !7, file: !7, line: 26, type: !281, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !34, !34}
!283 = !{!284, !285, !286, !288}
!284 = !DILocalVariable(name: "port", arg: 1, scope: !280, file: !7, line: 26, type: !34)
!285 = !DILocalVariable(name: "baud", arg: 2, scope: !280, file: !7, line: 26, type: !34)
!286 = !DILocalVariable(name: "c", scope: !280, file: !7, line: 28, type: !287)
!287 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!288 = !DILocalVariable(name: "divisor", scope: !280, file: !7, line: 29, type: !279)
!289 = !DILocation(line: 26, column: 35, scope: !280)
!290 = !DILocation(line: 26, column: 45, scope: !280)
!291 = !DILocation(line: 28, column: 2, scope: !280)
!292 = !DILocation(line: 28, column: 16, scope: !280)
!293 = !DILocation(line: 29, column: 2, scope: !280)
!294 = !DILocation(line: 29, column: 11, scope: !280)
!295 = !DILocation(line: 31, column: 2, scope: !280)
!296 = !DILocation(line: 31, column: 12, scope: !280)
!297 = !DILocation(line: 31, column: 17, scope: !280)
!298 = !DILocation(line: 32, column: 2, scope: !280)
!299 = !DILocation(line: 32, column: 10, scope: !280)
!300 = !DILocation(line: 32, column: 15, scope: !280)
!301 = !DILocation(line: 33, column: 2, scope: !280)
!302 = !DILocation(line: 33, column: 10, scope: !280)
!303 = !DILocation(line: 33, column: 15, scope: !280)
!304 = !DILocation(line: 34, column: 2, scope: !280)
!305 = !DILocation(line: 34, column: 12, scope: !280)
!306 = !DILocation(line: 34, column: 17, scope: !280)
!307 = !DILocation(line: 36, column: 21, scope: !280)
!308 = !DILocation(line: 36, column: 19, scope: !280)
!309 = !DILocation(line: 36, column: 10, scope: !280)
!310 = !DILocation(line: 37, column: 6, scope: !280)
!311 = !DILocation(line: 37, column: 10, scope: !280)
!312 = !DILocation(line: 37, column: 15, scope: !280)
!313 = !DILocation(line: 37, column: 4, scope: !280)
!314 = !DILocation(line: 38, column: 2, scope: !280)
!315 = !DILocation(line: 38, column: 7, scope: !280)
!316 = !DILocation(line: 38, column: 9, scope: !280)
!317 = !DILocation(line: 38, column: 17, scope: !280)
!318 = !DILocation(line: 38, column: 22, scope: !280)
!319 = !DILocation(line: 39, column: 2, scope: !280)
!320 = !DILocation(line: 39, column: 7, scope: !280)
!321 = !DILocation(line: 39, column: 15, scope: !280)
!322 = !DILocation(line: 39, column: 23, scope: !280)
!323 = !DILocation(line: 39, column: 28, scope: !280)
!324 = !DILocation(line: 40, column: 2, scope: !280)
!325 = !DILocation(line: 40, column: 8, scope: !280)
!326 = !DILocation(line: 40, column: 16, scope: !280)
!327 = !DILocation(line: 40, column: 22, scope: !280)
!328 = !DILocation(line: 40, column: 7, scope: !280)
!329 = !DILocation(line: 40, column: 30, scope: !280)
!330 = !DILocation(line: 40, column: 35, scope: !280)
!331 = !DILocation(line: 41, column: 2, scope: !280)
!332 = !DILocation(line: 41, column: 7, scope: !280)
!333 = !DILocation(line: 41, column: 9, scope: !280)
!334 = !DILocation(line: 41, column: 18, scope: !280)
!335 = !DILocation(line: 41, column: 23, scope: !280)
!336 = !DILocation(line: 43, column: 22, scope: !280)
!337 = !DILocation(line: 43, column: 20, scope: !280)
!338 = !DILocation(line: 44, column: 1, scope: !280)
!339 = distinct !DISubprogram(name: "probe_baud", scope: !7, file: !7, line: 102, type: !340, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!340 = !DISubroutineType(types: !341)
!341 = !{!279, !34}
!342 = !{!343, !344, !345, !346, !347}
!343 = !DILocalVariable(name: "port", arg: 1, scope: !339, file: !7, line: 102, type: !34)
!344 = !DILocalVariable(name: "lcr", scope: !339, file: !7, line: 104, type: !287)
!345 = !DILocalVariable(name: "dll", scope: !339, file: !7, line: 104, type: !287)
!346 = !DILocalVariable(name: "dlh", scope: !339, file: !7, line: 104, type: !287)
!347 = !DILocalVariable(name: "quot", scope: !339, file: !7, line: 105, type: !279)
!348 = !DILocation(line: 102, column: 36, scope: !339)
!349 = !DILocation(line: 104, column: 2, scope: !339)
!350 = !DILocation(line: 104, column: 16, scope: !339)
!351 = !DILocation(line: 104, column: 21, scope: !339)
!352 = !DILocation(line: 104, column: 26, scope: !339)
!353 = !DILocation(line: 105, column: 2, scope: !339)
!354 = !DILocation(line: 105, column: 15, scope: !339)
!355 = !DILocation(line: 107, column: 8, scope: !339)
!356 = !DILocation(line: 107, column: 12, scope: !339)
!357 = !DILocation(line: 107, column: 17, scope: !339)
!358 = !DILocation(line: 107, column: 6, scope: !339)
!359 = !DILocation(line: 108, column: 2, scope: !339)
!360 = !DILocation(line: 108, column: 7, scope: !339)
!361 = !DILocation(line: 108, column: 11, scope: !339)
!362 = !DILocation(line: 108, column: 19, scope: !339)
!363 = !DILocation(line: 108, column: 24, scope: !339)
!364 = !DILocation(line: 109, column: 8, scope: !339)
!365 = !DILocation(line: 109, column: 12, scope: !339)
!366 = !DILocation(line: 109, column: 17, scope: !339)
!367 = !DILocation(line: 109, column: 6, scope: !339)
!368 = !DILocation(line: 110, column: 8, scope: !339)
!369 = !DILocation(line: 110, column: 12, scope: !339)
!370 = !DILocation(line: 110, column: 17, scope: !339)
!371 = !DILocation(line: 110, column: 6, scope: !339)
!372 = !DILocation(line: 111, column: 2, scope: !339)
!373 = !DILocation(line: 111, column: 7, scope: !339)
!374 = !DILocation(line: 111, column: 12, scope: !339)
!375 = !DILocation(line: 111, column: 17, scope: !339)
!376 = !DILocation(line: 112, column: 10, scope: !339)
!377 = !DILocation(line: 112, column: 14, scope: !339)
!378 = !DILocation(line: 112, column: 22, scope: !339)
!379 = !DILocation(line: 112, column: 20, scope: !339)
!380 = !DILocation(line: 112, column: 7, scope: !339)
!381 = !DILocation(line: 114, column: 21, scope: !339)
!382 = !DILocation(line: 114, column: 19, scope: !339)
!383 = !DILocation(line: 115, column: 1, scope: !339)
!384 = !DILocation(line: 114, column: 2, scope: !339)
